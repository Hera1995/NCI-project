package com.nci.filmreview.api.dot;

import java.util.List;


public class AiReqDto {
    private List<Entity> messages;

    public static class Entity {
        private String role;
        private String content;

        public String getRole() {
            return role;
        }

        public void setRole(String role) {
            this.role = role;
        }

        public String getContent() {
            return content;
        }

        public void setContent(String content) {
            this.content = content;
        }
    }

    public List<Entity> getMessages() {
        return messages;
    }

    public void setMessages(List<Entity> messages) {
        this.messages = messages;
    }
}
