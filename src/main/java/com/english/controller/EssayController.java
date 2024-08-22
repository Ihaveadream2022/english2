package com.english.controller;

import com.english.entity.Essay;
import com.english.model.JsonResponse;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.EssayQueryCondition;
import com.english.model.request.ReadingQueryCondition;
import com.english.service.impl.EssayServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/essays")
public class EssayController {

    private final Logger logger = LoggerFactory.getLogger("SERVICE");

    @Autowired
    EssayServiceImpl essayService;

    @GetMapping
    public JsonResponse list(EssayQueryCondition essayQueryCondition) {
        Map<String, Object> data = essayService.pageList(essayQueryCondition);

        return JsonResponse.success(data);
    }

    @PostMapping()
    public JsonResponse insert(@Validated @RequestBody Essay essay) {
        Long rows = essayService.insert(essay);
        if (rows > 0) {
            return JsonResponse.success();
        }
        return JsonResponse.error();
    }

    @PutMapping("/{id}")
    public JsonResponse update(@PathVariable Long id, @Validated @RequestBody Essay essay) {
        essay.setId(id);

        Long rows = essayService.update(essay);
        if (rows > 0) {
            return JsonResponse.success();
        }

        return JsonResponse.error();
    }

    @DeleteMapping( "/{id}")
    public JsonResponse delete(@PathVariable Long id) {
        DeleteRequestBody deleteRequestBody = new DeleteRequestBody();
        deleteRequestBody.setId(id);

        Long rows = essayService.delete(deleteRequestBody);

        return rows > 0? JsonResponse.success(): JsonResponse.error();
    }
}
