package com.english.service;

import com.english.entity.Listening;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;
import java.util.HashMap;

public interface ListeningService {

    public HashMap<String, Object> pageList(QueryCondition queryCondition);

    public Long count(QueryCondition queryCondition);

    public Boolean exist(Listening listening);

    public Listening findByTitle(String title);

    public Long insert(Listening listening);

    public Long update(Listening listening);

    public Long delete(DeleteRequestBody deleteRequestBody);

    public Long batchDelete(DeleteRequestBody deleteRequestBody);

    public void generate(Listening listening, Integer index);
}