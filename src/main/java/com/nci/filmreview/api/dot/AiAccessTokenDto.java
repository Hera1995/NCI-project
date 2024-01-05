package com.nci.filmreview.api.dot;

import com.fasterxml.jackson.annotation.JsonProperty;


public class AiAccessTokenDto {
    @JsonProperty("refresh_token")
    private String refreshToken;
    @JsonProperty("expires_in")
    private int expiresIn;
    @JsonProperty("session_key")
    private String sessionKey;
    @JsonProperty("access_token")
    private String accessToken;
    private String scope;
    @JsonProperty("session_secret")
    private String sessionSecret;

    public String getRefreshToken() {
        return refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public int getExpiresIn() {
        return expiresIn;
    }

    public void setExpiresIn(int expiresIn) {
        this.expiresIn = expiresIn;
    }

    public String getSessionKey() {
        return sessionKey;
    }

    public void setSessionKey(String sessionKey) {
        this.sessionKey = sessionKey;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getSessionSecret() {
        return sessionSecret;
    }

    public void setSessionSecret(String sessionSecret) {
        this.sessionSecret = sessionSecret;
    }
}
