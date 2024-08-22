package com.english.mapper;

import com.english.entity.Listening;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;

import java.util.List;

public interface ListeningMapper {

    public List<Listening> selectLimited(QueryCondition queryCondition);

    public Long count(QueryCondition queryCondition);

    public Listening findByTitle(String title);

    public Long insert(Listening listening);

    public Long update(Listening listening);

    public Long delete(DeleteRequestBody deleteRequestBody);

    public Long batchDelete(DeleteRequestBody deleteRequestBody);
}