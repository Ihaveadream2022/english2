package com.english.service.impl;

import com.english.entity.Listening;
import com.english.mapper.ListeningMapper;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;
import com.english.service.ListeningService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.HashMap;
import java.util.List;

@Service
public class ListeningServiceImpl implements ListeningService {

    @Autowired
    ListeningMapper listeningMapper;

    public HashMap<String, Object> pageList(QueryCondition queryCondition) {
        HashMap<String, Object> data = new HashMap<>();

        List<Listening> list = listeningMapper.selectLimited(queryCondition);
        Long total = listeningMapper.count(queryCondition);

        data.put("list", list);
        data.put("total", total);
        data.put("pageSize", queryCondition.getPageSize());
        data.put("pageNo", queryCondition.getPageNo());

        return data;
    }

    @Override
    public Long count(QueryCondition queryCondition) {
        return listeningMapper.count(queryCondition);
    }

    @Override
    public Listening findByTitle(String title) {
        return listeningMapper.findByTitle(title);
    }

    @Override
    @Transactional
    public Long insert(Listening listening) {
        return listeningMapper.insert(listening);
    }

    @Override
    @Transactional
    public Long update(Listening listening) {
        return listeningMapper.update(listening);
    }

    @Override
    public Boolean exist(Listening listening) {
        long oneId = listening.getId() == null? -1L : listening.getId();
        Listening one = listeningMapper.findByTitle(listening.getTitle());
        return one != null && one.getId() != oneId;
    }

    @Override
    @Transactional
    public Long delete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getId() != null) {
            return listeningMapper.delete(deleteRequestBody);
        }

        return 0L;
    }

    @Override
    @Transactional
    public Long batchDelete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getIds() != null && deleteRequestBody.getIds().length > 0) {
            return listeningMapper.batchDelete(deleteRequestBody);
        }

        return 0L;
    }

    public void generate(Listening listening, Integer index) {}
}
