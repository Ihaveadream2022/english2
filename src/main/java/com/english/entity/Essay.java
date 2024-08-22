package com.english.entity;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;

public class Essay {

    private Long id;

    @NotBlank(message = "title is required")
    @Length(min = 1, max = 64, message = "title length is between 1 and 255")
    private String title;

    private String content;

    private String vocabulary;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getVocabulary() {
        return vocabulary;
    }

    public void setVocabulary(String vocabulary) {
        this.vocabulary = vocabulary;
    }
}
