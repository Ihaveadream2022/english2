package com.english.model.request;

public class ItemQueryCondition extends QueryCondition {

    private String keyword;

    private String category;

    private int jumpToToday;

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getJumpToToday() {
        return jumpToToday;
    }

    public void setJumpToToday(int jumpToToday) {
        this.jumpToToday = jumpToToday;
    }
}
