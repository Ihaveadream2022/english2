package com.english.service.impl;

import com.english.entity.Essay;
import com.english.mapper.EssayMapper;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;
import com.english.service.EssayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.HashMap;
import java.util.List;

@Service
public class EssayServiceImpl implements EssayService {

    @Autowired
    EssayMapper essayMapper;

    public HashMap<String, Object> pageList(QueryCondition queryCondition) {
        HashMap<String, Object> data = new HashMap<>();

        List<Essay> list = essayMapper.selectLimited(queryCondition);
        Long total = essayMapper.count(queryCondition);

        data.put("list", list);
        data.put("total", total);
        data.put("pageSize", queryCondition.getPageSize());
        data.put("pageNo", queryCondition.getPageNo());

        return data;
    }

    @Override
    public Long count(QueryCondition queryCondition) {
        return essayMapper.count(queryCondition);
    }

    @Override
    @Transactional
    public Long insert(Essay essay) {
        return essayMapper.insert(essay);
    }

    @Override
    @Transactional
    public Long update(Essay essay) {
        return essayMapper.update(essay);
    }

    @Override
    @Transactional
    public Long delete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getId() != null) {
            return essayMapper.delete(deleteRequestBody);
        }
        return 0L;
    }

    @Override
    @Transactional
    public Long batchDelete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getIds() != null && deleteRequestBody.getIds().length > 0) {
            return essayMapper.batchDelete(deleteRequestBody);
        }
        return 0L;
    }
}
