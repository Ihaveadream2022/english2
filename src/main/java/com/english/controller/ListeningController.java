package com.english.controller;

import com.english.entity.Listening;
import com.english.model.JsonResponse;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.ListeningQueryCondition;
import com.english.service.impl.ListeningServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import java.util.Map;

@RestController
@RequestMapping("/listenings")
public class ListeningController {

    @Autowired
    ListeningServiceImpl listeningService;

    @GetMapping
    public JsonResponse list(ListeningQueryCondition listeningQueryCondition) {

        Map<String, Object> data = listeningService.pageList(listeningQueryCondition);

        return JsonResponse.success(data);
    }

    @PostMapping()
    public JsonResponse insert(@Validated @RequestBody Listening listening) {
        if (listening.getTitle() != null && listening.getTitle().trim().length() != 0 && listeningService.exist(listening)) {
            return JsonResponse.error("The listening has been exist");
        }
        Long rows = listeningService.insert(listening);
        if (rows > 0) {
            return JsonResponse.success();
        }

        return JsonResponse.error();
    }

    @PutMapping("/{id}")
    public JsonResponse update(@PathVariable Long id, @Validated @RequestBody Listening listening) {
        listening.setId(id);
        if (listening.getTitle() != null && listening.getTitle().trim().length() != 0 && listeningService.exist(listening)) {
            return JsonResponse.error("The listening has been exist");
        }

        Long rows = listeningService.update(listening);
        if (rows > 0) {
            return JsonResponse.success();
        }

        return JsonResponse.error();
    }

    @DeleteMapping( "/{id}")
    public JsonResponse delete(@PathVariable Long id) {
        DeleteRequestBody deleteRequestBody = new DeleteRequestBody();
        deleteRequestBody.setId(id);

        Long rows = listeningService.delete(deleteRequestBody);

        return rows > 0? JsonResponse.success(): JsonResponse.error();
    }
}
