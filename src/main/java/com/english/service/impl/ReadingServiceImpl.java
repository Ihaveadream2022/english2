package com.english.service.impl;

import com.english.entity.Reading;
import com.english.exception.ServiceRuntimeException;
import com.english.manager.ThreadManager;
import com.english.mapper.ReadingMapper;
import com.english.model.ReadingHtml;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.QueryCondition;
import com.english.service.ReadingService;
import com.english.util.StringUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.TimerTask;

@Service
public class ReadingServiceImpl implements ReadingService {

    private final Logger serviceLogger = LoggerFactory.getLogger("SERVICE");

    @Autowired
    ReadingMapper readingMapper;

    public HashMap<String, Object> pageList(QueryCondition queryCondition) {
        HashMap<String, Object> data = new HashMap<>();

        List<Reading> list = readingMapper.selectLimited(queryCondition);
        Long total = readingMapper.count(queryCondition);

        data.put("list", list);
        data.put("total", total);
        data.put("pageSize", queryCondition.getPageSize());
        data.put("pageNo", queryCondition.getPageNo());

        return data;
    }

    @Override
    public Long count(QueryCondition queryCondition) {
        return readingMapper.count(queryCondition);
    }

    @Override
    public Reading findByTitle(String title) {
        return readingMapper.findByTitle(title);
    }

    @Override
    @Transactional
    public Long insert(Reading reading) {
        return readingMapper.insert(reading);
    }

    @Override
    @Transactional
    public Long update(Reading reading) {
        return readingMapper.update(reading);
    }

    @Override
    public Boolean exist(Reading reading) {
        long readingId = reading.getId() == null? -1L : reading.getId();
        Reading one = readingMapper.findByTitle(reading.getTitle());
        return one != null && one.getId() != readingId;
    }

    @Override
    @Transactional
    public Long delete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getId() != null) {
            return readingMapper.delete(deleteRequestBody);
        }

        return 0L;
    }

    @Override
    @Transactional
    public Long batchDelete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getIds() != null && deleteRequestBody.getIds().length > 0) {
            return readingMapper.batchDelete(deleteRequestBody);
        }

        return 0L;
    }

    public void generate(Reading reading, Integer index) {
        TimerTask timerTask = new TimerTask() {
            @Override
            public void run() {
                try {
                    ReadingHtml readingHtml = new ReadingHtml();
                    readingHtml.setTitle(reading.getTitle());
                    readingHtml.setContent(StringUtil.toHTML(reading.getContent()));

                    String path = String.format("%s/html/json/reading-%s.json", System.getProperty("user.dir"), index);
                    File file = new File(path);
                    ObjectMapper objectMapper = new ObjectMapper();
                    objectMapper.writeValue(file, readingHtml);

                    serviceLogger.info(String.format("JSON file [%s] has been created.", path));
                } catch (Exception e) {
                    throw new ServiceRuntimeException(e.getMessage());
                }
            }
        };
        ThreadManager.getInstance().execute(timerTask);
    }
}
