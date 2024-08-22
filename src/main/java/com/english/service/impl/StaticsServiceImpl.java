package com.english.service.impl;

import org.springframework.stereotype.Service;
import java.time.DayOfWeek;
import java.time.LocalDateTime;
import java.time.temporal.WeekFields;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Service
public class StaticsServiceImpl {

    public LocalDateTime getNow() {
//         return LocalDateTime.of(2024,8,2,0,0);
        return LocalDateTime.now();
    }

    public int getDayOfWeek() {
        DayOfWeek dayOfWeek = getNow().getDayOfWeek();
        return dayOfWeek.getValue(); // 周内第几天;
    }

    public int getWeekOfYear() {
        WeekFields weekFields = WeekFields.of(DayOfWeek.MONDAY, 1);
        return getNow().get(weekFields.weekOfYear()); // 年内第几周
    }

    // 周几背
    public Map<String,Object> statics(int itemsPerDay, long total, Set<Integer> days) {

        int dayOfWeekValue = getDayOfWeek(); // 周内第几天
        int weekOfYear = getWeekOfYear(); // 年内第几周
        int totalDaysNeed = (int) Math.ceil((double) total/itemsPerDay);
        int todayComputedBase = (weekOfYear - 1) * days.size();
        int todayComputed = 0;
        if (days.size() * 51 <= totalDaysNeed) {
            throw new RuntimeException("实际总天数应大于所需总天数，否则会有单词无法背覆盖。");
        }
        for (Integer day : days) {
            if (dayOfWeekValue == day) {
                todayComputed = todayComputedBase + day;
            }
        }
        int todayCircle = ((todayComputed - 1 ) % totalDaysNeed) + 1;
        int itemsCountFrom = todayComputed > 0? (todayCircle - 1) * itemsPerDay + 1: 0;
        int itemsCountEnd = todayComputed > 0? todayCircle * itemsPerDay: 0;

        Map<String,Object> data = new HashMap<>();
        data.put("staticsTotal", total);
        data.put("staticsItemsPerDay", itemsPerDay);
        data.put("staticsTotalDaysNeed", totalDaysNeed);
        data.put("staticsDayOfWeek", dayOfWeekValue);
        data.put("staticsWeekOfYear", weekOfYear);
        data.put("todayCircle", todayCircle);
        data.put("todayItemsCountFrom", itemsCountFrom);
        data.put("todayItemsCountEnd", itemsCountEnd);

        return data;
    }
}
