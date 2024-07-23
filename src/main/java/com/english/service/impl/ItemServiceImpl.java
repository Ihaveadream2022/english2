package com.english.service.impl;

import com.english.entity.Item;
import com.english.entity.ItemExample;
import com.english.entity.ItemTts;
import com.english.exception.GlobalExceptionHandler;
import com.english.mapper.ItemMapper;
import com.english.model.ItemHtml;
import com.english.model.KeyValue;
import com.english.model.request.DeleteRequestBody;
import com.english.model.request.ItemQueryCondition;
import com.english.model.request.QueryCondition;
import com.english.service.ItemService;
import com.english.manager.ThreadManager;
import com.english.util.StringUtil;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class ItemServiceImpl implements ItemService {

    private final Logger frameworkLogger = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    private final Logger serviceLogger = LoggerFactory.getLogger("SERVICE");

    @Autowired
    ItemMapper itemMapper;

    @Autowired
    ItemTtsServiceImpl itemTtsService;

    @Autowired
    ItemExampleServiceImpl itemExampleService;

    public HashMap<String, Object> pageList(QueryCondition queryCondition) {
        Integer a = queryCondition.getOffset();
        HashMap<String, Object> data = new HashMap<>();

        List<Item> list = itemMapper.selectLimited(queryCondition);
        Long total = itemMapper.count(queryCondition);

        data.put("list", list);
        data.put("total", total);
        data.put("pageSize", queryCondition.getPageSize());
        data.put("pageNo", queryCondition.getPageNo());

        return data;
    }

    @Override
    public Long count(QueryCondition queryCondition) {
        return itemMapper.count(queryCondition);
    }

    @Override
    public Item findByName(String name) {
        return itemMapper.findByName(name);
    }

    @Override
    @Transactional
    public Long insert(Item item) {
        filter(item);
        Long row = itemMapper.insert(item);

        ItemTts itemTts = new ItemTts();
        itemTts.setName(item.getName());
        itemTtsService.insert(itemTts);

        ItemExample itemExample = new ItemExample();
        itemExample.setName(item.getName());
        itemExampleService.insert(itemExample);

        item.setTts(itemTts);
        item.setExample(itemExample);

        return row;
    }

    @Override
    @Transactional
    public Long update(Item item) {
        filter(item);
        return itemMapper.update(item);
    }

    @Override
    public Boolean exist(Item item) {
        long wordId = item.getId() == null? -1L : item.getId();
        Item one = itemMapper.findByName(item.getName());
        return one != null && one.getId() != wordId;
    }

    @Override
    @Transactional
    public Long delete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getId() != null) {
            return itemMapper.delete(deleteRequestBody);
        }

        return 0L;
    }

    @Override
    @Transactional
    public Long batchDelete(DeleteRequestBody deleteRequestBody) {
        if (deleteRequestBody.getIds() != null && deleteRequestBody.getIds().length > 0) {
            return itemMapper.batchDelete(deleteRequestBody);
        }

        return 0L;
    }

    public void filter(Item item) {
        String noun = StringUtil.replaceFullWidthString(item.getNoun());
        String verb = StringUtil.replaceFullWidthString(item.getVerb());
        String adj = StringUtil.replaceFullWidthString(item.getAdjective());
        String adv = StringUtil.replaceFullWidthString(item.getAdverb());
        String conj = StringUtil.replaceFullWidthString(item.getConjunction());
        String prep = StringUtil.replaceFullWidthString(item.getPreposition());
        item.setNoun(noun);
        item.setVerb(verb);
        item.setAdjective(adj);
        item.setAdverb(adv);
        item.setConjunction(conj);
        item.setPreposition(prep);
    }

    @Override
    public void writeJSONFile(List<Item> itemList, Integer index) {
        TimerTask timerTask = new TimerTask() {
            @Override
            public void run() {
                try {
                    ObjectMapper objectMapper = new ObjectMapper();
                    List<ItemHtml> list = new ArrayList<>();
                    for (Item item : itemList) {
                        ItemHtml itemHtml = new ItemHtml();
                        itemHtml.setEn(item.getName());
                        itemHtml.setCn(item.getCommon());
                        itemHtml.setTts(item.getTts().getAudio());
                        itemHtml.setMeanings(splitMeaning(item));
                        if (item.getExample() != null && item.getExample().getExamples() != null) {
                            List<KeyValue> keyValueList = objectMapper.readValue(item.getExample().getExamples(), new TypeReference<List<KeyValue>>() {});
                            List<KeyValue> keyValueListFilter = keyValueList.stream().map(v->{
                                v.setValue(StringUtil.toHTML(v.getValue()));
                                return v;
                            }).collect(Collectors.toList());
                            itemHtml.setExamples(keyValueList);
                        }
                        list.add(itemHtml);
                    }
                    String filePath = String.format("%s/html/json/item-%s.json", System.getProperty("user.dir"), index);
                    File file = new File(filePath);
                    objectMapper.writeValue(file, list);
                    serviceLogger.info(String.format("JSON file [%s] has been created.", filePath));
                } catch (Exception e) {
                    frameworkLogger.error(e.getMessage(), e);
                    throw new RuntimeException(e.getMessage());
                }
            }
        };
        ThreadManager.getInstance().execute(timerTask);
    }

    public Map<String,Object> statics() {
        return statics(10);
    }

    public Map<String,Object> statics(int dataPageSize) {
        ItemQueryCondition itemQueryCondition = new ItemQueryCondition();
        long dataTotal = count(itemQueryCondition);
//        long dataTotal = 31000;
        int dataCountEveryday = 300;
        int dataTotalDays = (int) Math.ceil((double) dataTotal/dataCountEveryday);
        int dataCycleMonth = (int) Math.ceil((double) dataTotalDays/31);

//        LocalDateTime localDateTime = LocalDateTime.of(2024,2,2,0,0,0);
        LocalDateTime localDateTime = LocalDateTime.now();
        DateTimeFormatter dayFormatter = DateTimeFormatter.ofPattern("dd");
        String dayStr = localDateTime.format(dayFormatter);
        int todayInt = dayStr.startsWith("0")? Integer.parseInt(dayStr.substring(1)): Integer.parseInt(dayStr);
        DateTimeFormatter monthFormatter = DateTimeFormatter.ofPattern("MM");
        String monthStr = localDateTime.format(monthFormatter);
        int monthOfTodayInt = monthStr.startsWith("0")? Integer.parseInt(monthStr.substring(1)): Integer.parseInt(monthStr);

        int todayIntReal = dataCycleMonth > 1? todayInt + (dataCycleMonth-1)*31: todayInt;
        int dataTodayDay = ((todayIntReal - 1 ) % dataTotalDays) + 1;
        int dataItemsCountFrom = (dataTodayDay - 1) * dataCountEveryday + 1;
        int dataItemsCountEnd = dataTodayDay * dataCountEveryday;
        int dataItemsPageFrom = (dataTodayDay - 1) * (dataCountEveryday/dataPageSize) + 1;
        int dataItemsPageEnd =  dataTodayDay * (dataCountEveryday/dataPageSize);

        Map<String,Object> data = new HashMap<>();
        data.put("staticsTotalWords", dataTotal);
        data.put("staticsCountEverydayToLearn", dataCountEveryday);
        data.put("staticsCycleMonth", dataCycleMonth);
        data.put("staticsTotalDays", dataTotalDays);
        data.put("todayDay", dataTodayDay);
        data.put("todayItemsCountFrom", dataItemsCountFrom);
        data.put("todayItemsCountEnd", dataItemsCountEnd);
        data.put("todayItemsPageFrom", dataItemsPageFrom);
        data.put("todayItemsPageEnd", dataItemsPageEnd);
        data.put("dateMonthOfTodayInt", monthOfTodayInt);
        data.put("dateTodayInt", todayInt);

        return data;
    }

    public void writeStaticsJSONFile() {
        TimerTask timerTask = new TimerTask() {
            @Override
            public void run() {
                try {
                    String filePath = String.format("%s/html/json/statics.json", System.getProperty("user.dir"));
                    File file = new File(filePath);
                    ObjectMapper objectMapper = new ObjectMapper();
                    objectMapper.writeValue(file, statics());
                    serviceLogger.info(String.format("Statics JSON file has been created.", filePath));
                } catch (Exception e) {
                    frameworkLogger.error(e.getMessage(), e);
                    throw new RuntimeException(e.getMessage());
                }
            }
        };
        ThreadManager.getInstance().execute(timerTask);
    }

    public List<String[]> splitMeaning(Item item) {
        List<String[]> result = new ArrayList<>();
        List<String> pending = new ArrayList<>();
        if (item.getNoun() != null) pending.add(item.getNoun().replace("n.","n.;"));
        if (item.getVerb() != null) pending.add(item.getVerb().replace("v.","v.;"));
        if (item.getAdjective() != null) pending.add(item.getAdjective().replace("adj.","adj.;"));
        if (item.getAdverb() != null) pending.add(item.getAdverb().replace("adv.","adv.;"));
        if (item.getConjunction() != null) pending.add(item.getConjunction().replace("conj.","conj.;"));
        if (item.getPreposition() != null) pending.add(item.getPreposition().replace("prep.","prep.;"));
        if (item.getPronoun() != null) pending.add(item.getPronoun().replace("pron.","pron.;"));
        for (String str: pending) {
            result.add(str.split(";"));
        }
        return result;
    }
}
