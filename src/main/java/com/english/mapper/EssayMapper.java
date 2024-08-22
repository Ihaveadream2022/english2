package com.english.mapper;

import com.english.entity.Essay;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;

import java.util.List;

public interface EssayMapper {

    public List<Essay> selectLimited(QueryCondition queryCondition);

    public Long count(QueryCondition queryCondition);

    public Long insert(Essay essay);

    public Long update(Essay essay);

    public Long delete(DeleteRequestBody deleteRequestBody);

    public Long batchDelete(DeleteRequestBody deleteRequestBody);
}