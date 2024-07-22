package com.english.service;

import com.english.entity.Reading;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;
import java.util.HashMap;

public interface ReadingService {

    public HashMap<String, Object> pageList(QueryCondition queryCondition);

    public Boolean exist(Reading reading);

    public Reading findByTitle(String title);

    public Long insert(Reading reading);

    public Long update(Reading reading);

    public Long delete(DeleteRequestBody deleteRequestBody);

    public Long batchDelete(DeleteRequestBody deleteRequestBody);

    public void generate(Reading reading, Integer index);
}