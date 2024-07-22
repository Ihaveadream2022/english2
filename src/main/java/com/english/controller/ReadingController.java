package com.english.controller;

import com.english.entity.Reading;
import com.english.model.JsonResponse;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;
import com.english.model.request.ReadingQueryCondition;
import com.english.service.impl.ReadingServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/readings")
public class ReadingController {

    private final Logger logger = LoggerFactory.getLogger("SERVICE");

    @Autowired
    ReadingServiceImpl readingService;

    @GetMapping
    public JsonResponse list(ReadingQueryCondition readingQueryCondition) {

        Map<String, Object> data = readingService.pageList(readingQueryCondition);

        return JsonResponse.success(data);
    }

    @PostMapping()
    public JsonResponse insert(@Validated @RequestBody Reading reading) {
        if (reading.getTitle() != null && reading.getTitle().trim().length() != 0 && readingService.exist(reading)) {
            return JsonResponse.error("The grammar has been exist");
        }
        Long rows = readingService.insert(reading);
        if (rows > 0) {
            return JsonResponse.success();
        }

        return JsonResponse.error();
    }

    @PutMapping("/{id}")
    public JsonResponse update(@PathVariable Long id, @Validated @RequestBody Reading reading) {
        reading.setId(id);
        if (reading.getTitle() != null && reading.getTitle().trim().length() != 0 && readingService.exist(reading)) {
            return JsonResponse.error("The grammar has been exist");
        }

        Long rows = readingService.update(reading);
        if (rows > 0) {
            return JsonResponse.success();
        }

        return JsonResponse.error();
    }

    @DeleteMapping( "/{id}")
    public JsonResponse delete(@PathVariable Long id) {
        DeleteRequestBody deleteRequestBody = new DeleteRequestBody();
        deleteRequestBody.setId(id);

        Long rows = readingService.delete(deleteRequestBody);

        return rows > 0? JsonResponse.success(): JsonResponse.error();
    }

    @GetMapping("/generate")
    @SuppressWarnings("unchecked")
    public void generate() {
        int page = 1;
        int pageSize = 10;
        boolean continueFlag = false;
        QueryCondition readingQueryCondition = new ReadingQueryCondition();
        do {
            readingQueryCondition.setPageNo(page);
            readingQueryCondition.setPageSize(pageSize);
            Map<String, Object> data = readingService.pageList(readingQueryCondition);
            List<Reading> list = (List<Reading>) data.get("list");
            if (list.size() > 0) {
                for (int i = 0; i < list.size(); i++) {
                    readingService.generate(list.get(i), i+1);
                }
            }
            page++;
            continueFlag = list.size() > 0;
        } while (continueFlag);
    }
}
