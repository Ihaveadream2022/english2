package com.english.controller;

import com.english.model.JsonResponse;
import com.english.model.request.GrammarQueryCondition;
import com.english.model.request.ItemQueryCondition;
import com.english.model.request.ReadingQueryCondition;
import com.english.service.impl.GrammarServiceImpl;
import com.english.service.impl.ItemServiceImpl;
import com.english.service.impl.ReadingServiceImpl;
import com.english.service.impl.StaticsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@RestController
@RequestMapping("/index")
public class IndexController {

    @Autowired
    ItemServiceImpl itemService;

    @Autowired
    ReadingServiceImpl readingService;

    @Autowired
    GrammarServiceImpl grammarService;

    @Autowired
    StaticsServiceImpl staticsService;

    @RequestMapping("/")
    public String index() {
        return "Welcome";
    }

    @GetMapping("/statics")
    public JsonResponse statics() {

        int dayOfWeek = staticsService.getDayOfWeek();
        int weekOfYear = staticsService.getWeekOfYear();
        String type = "Word";
        Map<String,Object> statics = new HashMap<>();

        /* 单词 */
        if (dayOfWeek == 1 || dayOfWeek == 2) {
            int itemsPerDay = 300; // 每天背多少
            Set<Integer> days = new HashSet<>();  // 周几背
            days.add(1);
            days.add(2);
            ItemQueryCondition itemQueryCondition1 = new ItemQueryCondition();
            long total = itemService.count(itemQueryCondition1);   // 总条数
            statics = staticsService.statics(itemsPerDay, total, days);
        }
        // 阅读
        if (dayOfWeek == 3 || dayOfWeek == 4) {
            int itemsPerDay = 1; // 每天读多少
            Set<Integer> days = new HashSet<>();  // 周几背
            days.add(3);
            days.add(4);
            ReadingQueryCondition readingQueryCondition = new ReadingQueryCondition();
            long total = readingService.count(readingQueryCondition);   // 总条数
            statics = staticsService.statics(itemsPerDay, total, days);
            type = "Reading";
        }
        // 阅读
        if (dayOfWeek == 5) {
            int itemsPerDay = 10; // 每天学多少
            Set<Integer> days = new HashSet<>();  // 周几背
            days.add(5);
            GrammarQueryCondition grammarQueryCondition = new GrammarQueryCondition();
            long total = grammarService.count(grammarQueryCondition);   // 总条数
            statics = staticsService.statics(itemsPerDay, total, days);
            type = "Grammar";
        }
        Map<String,Object> data = new HashMap<>();
        data.put("dayOfWeek", dayOfWeek);
        data.put("weekOfYear", weekOfYear);
        data.put("dataType", type);
        data.put("data", statics);

        return JsonResponse.success(data);
    }
}
