package com.nci.filmreview.api.dot;


public class AiRespondMessageDto {
    //data members
    private String text;
    private String timestamp;

    //constructors
    public AiRespondMessageDto() {
    }

    public AiRespondMessageDto(String text, String timestamp) {
        this.text = text;
        this.timestamp = timestamp;
    }


    //setters and getters
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }
}
