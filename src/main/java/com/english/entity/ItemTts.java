package com.english.entity;

public class ItemTts {

    private Long id;

    private String name;

    private String audio;

    private String audioCn;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAudio() {
        return audio;
    }

    public void setAudio(String audio) {
        this.audio = audio;
    }

    public String getAudioCn() {
        return audioCn;
    }

    public void setAudioCn(String audioCn) {
        this.audioCn = audioCn;
    }
}