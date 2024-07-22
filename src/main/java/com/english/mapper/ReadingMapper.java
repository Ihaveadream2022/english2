package com.english.mapper;

import com.english.entity.Reading;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;

import java.util.List;

public interface ReadingMapper {

    public List<Reading> selectLimited(QueryCondition queryCondition);

    public Long count(QueryCondition queryCondition);

    public Reading findByTitle(String title);

    public Long insert(Reading reading);

    public Long update(Reading reading);

    public Long delete(DeleteRequestBody deleteRequestBody);

    public Long batchDelete(DeleteRequestBody deleteRequestBody);
}