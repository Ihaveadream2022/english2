package com.english.controller;

import com.english.entity.Item;
import com.english.model.JsonResponse;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.ItemQueryCondition;
import com.english.model.request.QueryCondition;
import com.english.model.enums.QueryOrder;
import com.english.service.impl.ItemExampleServiceImpl;
import com.english.service.impl.ItemServiceImpl;
import com.english.service.impl.ItemTtsServiceImpl;
import com.english.service.impl.StaticsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@RestController
@RequestMapping("/items")
public class ItemController {

    @Autowired
    ItemServiceImpl itemService;

    @Autowired
    ItemExampleServiceImpl itemExampleService;

    @Autowired
    ItemTtsServiceImpl itemTtsService;

    @Autowired
    StaticsServiceImpl staticsService;

    @GetMapping
    public JsonResponse list(ItemQueryCondition itemQueryCondition) {
        if (itemQueryCondition.getJumpToToday() == 1) {
            /* 可修改参数 */
            int itemsPerDay = 300; // 每天背多少
            Set<Integer> days = new HashSet<>();  // 周几背
            days.add(1);
            days.add(2);
            ItemQueryCondition itemQueryCondition1 = new ItemQueryCondition();
            long total = itemService.count(itemQueryCondition1);   // 总条数

            /* 计算 */
            Map<String,Object> statics = staticsService.statics(itemsPerDay, total, days);
            int itemsFrom = (int) statics.get("todayItemsCountFrom");
            int itemsEnd = (int) statics.get("todayItemsCountEnd");
            int todayCircle = (int) statics.get("todayCircle");
            int pageSize = itemQueryCondition.getPageSize(); // 每页条数
            int pageFrom = itemsFrom > 0? (todayCircle - 1) * (itemsPerDay/pageSize) + 1: 0;
            int pageEnd =  itemsEnd > 0? todayCircle * (itemsPerDay/pageSize): 0;
            // 今日不是背的日子
            if (pageFrom == 0 && pageEnd == 0) {
                return JsonResponse.error("今日无数据");
            }
            // 强制落在今天的区间内
            if (itemQueryCondition.getPageNo() < pageFrom || itemQueryCondition.getPageNo() > pageEnd) {
                itemQueryCondition.setPageNo(pageFrom);
            }
            itemQueryCondition.setOrderType("ASC");
        }

        Map<String, Object> data = itemService.pageList(itemQueryCondition);

        return JsonResponse.success(data);
    }

    @PostMapping()
    public JsonResponse insert(@Validated @RequestBody Item item) {
        if (item.getName() != null && item.getName().trim().length() != 0 && itemService.exist(item)) {
            return JsonResponse.error("The item has been exist");
        }
        Long rows = itemService.insert(item);
        if (rows > 0) {
            itemTtsService.createAudio(item);

            return JsonResponse.success();
        }

        return JsonResponse.error();
    }

    @PutMapping("/{id}")
    public JsonResponse update(@PathVariable Long id, @Validated @RequestBody Item item) {

        item.setId(id);

        if (item.getName() != null && item.getName().trim().length() != 0 && itemService.exist(item)) {
            return JsonResponse.error("The item has been exist");
        }

        Long rows = itemService.update(item);
        if (rows > 0) {
            itemTtsService.createAudio(item);

            return JsonResponse.success();
        }

        return JsonResponse.error();
    }

    @DeleteMapping( "/{id}")
    public JsonResponse delete(@PathVariable Long id) {
        DeleteRequestBody deleteRequestBody = new DeleteRequestBody();
        deleteRequestBody.setId(id);

        Long rows = itemService.delete(deleteRequestBody);

        return rows > 0? JsonResponse.success(): JsonResponse.error();
    }

    @GetMapping("/generate")
    @SuppressWarnings("unchecked")
    public void generate() {
        int indexExample = 1;
        int page = 1;
        int pageSize = 10;
        boolean continueFlag = false;
        itemService.writeStaticsJSONFile();
        QueryCondition queryCondition = new ItemQueryCondition();
        do {
            queryCondition.setPageNo(page);
            queryCondition.setPageSize(pageSize);
            queryCondition.setOrderType(QueryOrder.ASC.getValue());
            Map<String, Object> data = itemService.pageList(queryCondition);
            List<Item> list = (List<Item>) data.get("list");
            if (list.size() > 0) {
                itemService.writeJSONFile(list, page);
            }
            page++;
            continueFlag = list.size() > 0;
        } while (continueFlag);
    }
}
