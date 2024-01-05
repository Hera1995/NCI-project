package com.nci.filmreview.api.dot;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import java.util.Date;


public class AiDto {
    private String id;
    private String object;
    @JsonDeserialize(using = CustomDateDeserializer.class)
    private Date created;
    private String result;
    @JsonProperty("is_truncated")
    private boolean isTruncated;
    @JsonProperty("need_clear_history")
    private boolean needClearHistory;
    private Usage usage;

    public static class Usage {
        @JsonProperty("prompt_tokens")
        private int promptTokens;
        @JsonProperty("completion_tokens")
        private int completionTokens;
        @JsonProperty("total_tokens")
        private int totalTokens;

        public int getPromptTokens() {
            return promptTokens;
        }

        public void setPromptTokens(int promptTokens) {
            this.promptTokens = promptTokens;
        }

        public int getCompletionTokens() {
            return completionTokens;
        }

        public void setCompletionTokens(int completionTokens) {
            this.completionTokens = completionTokens;
        }

        public int getTotalTokens() {
            return totalTokens;
        }

        public void setTotalTokens(int totalTokens) {
            this.totalTokens = totalTokens;
        }
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getObject() {
        return object;
    }

    public void setObject(String object) {
        this.object = object;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public boolean isTruncated() {
        return isTruncated;
    }

    public void setTruncated(boolean truncated) {
        isTruncated = truncated;
    }

    public boolean isNeedClearHistory() {
        return needClearHistory;
    }

    public void setNeedClearHistory(boolean needClearHistory) {
        this.needClearHistory = needClearHistory;
    }

    public Usage getUsage() {
        return usage;
    }

    public void setUsage(Usage usage) {
        this.usage = usage;
    }

}
