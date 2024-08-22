package com.english.entity;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;

public class Listening {

    private Long id;

    private Byte sort;

    @NotBlank(message = "title is required")
    @Length(min = 0, max = 255, message = "title length is between 0 and 255")
    private String title;

    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Byte getSort() {
        return sort;
    }

    public void setSort(Byte sort) {
        this.sort = sort;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}