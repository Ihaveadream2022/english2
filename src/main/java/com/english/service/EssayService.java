package com.english.service;

import com.english.entity.Essay;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;

import java.util.HashMap;

public interface EssayService {

    public HashMap<String, Object> pageList(QueryCondition queryCondition);

    public Long count(QueryCondition queryCondition);

    public Long insert(Essay essay);

    public Long update(Essay essay);

    public Long delete(DeleteRequestBody deleteRequestBody);

    public Long batchDelete(DeleteRequestBody deleteRequestBody);
}