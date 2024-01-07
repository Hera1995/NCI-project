package com.nci.filmreview.api;

import com.fasterxml.jackson.databind.JsonNode;
import com.nci.filmreview.api.dot.AiAccessTokenDto;
import com.nci.filmreview.api.dot.AiRequestMessageDto;
import com.nci.filmreview.api.dot.AiRespondMessageDto;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.text.SimpleDateFormat;

import static org.springframework.http.HttpMethod.GET;
import static org.springframework.web.util.UriComponentsBuilder.fromUriString;


@Component
public class Api {
    private String accessToken;
    @Resource
    private RestTemplate restTemplate;

    @PostConstruct
    public void init() {
        // get access token
        getAiAccessToken();
    }

    //Baidu AI API - ERNIE - bot
    // obtain an access token
    public void getAiAccessToken() {
        UriComponentsBuilder builder = fromUriString("https://aip.baidubce.com/oauth/2.0/token")
                .queryParam("grant_type", "client_credentials") //fixed
                .queryParam("client_id", "a0NesLUiBOOhVgPiIARAvlBv")
                .queryParam("client_secret", "lbygtfg6IGI3vLC5GKBSZU5cYhwI1aUQ");

        ResponseEntity<AiAccessTokenDto> response = restTemplate.getForEntity(builder.toUriString(), AiAccessTokenDto.class);
        AiAccessTokenDto aiAccessTokenDto = response.getBody();
        accessToken = aiAccessTokenDto.getAccessToken();
    }

    // get response
    public AiRespondMessageDto getAiAnswer(AiRequestMessageDto aiRequestMessageDto) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type", "application/json");
        HttpEntity<AiRequestMessageDto> requestEntity = new HttpEntity<>(aiRequestMessageDto, headers);

        // send a request and get response
        UriComponentsBuilder builder = fromUriString("https://aip.baidubce.com/rpc/2.0/ai_custom/v1/wenxinworkshop/chat/eb-instant").queryParam("access_token", accessToken);
        ResponseEntity<JsonNode> response = restTemplate.postForEntity(builder.toUriString(), requestEntity, JsonNode.class);
        JsonNode jsonNode = response.getBody();

        // refresh token if the body of response is null
        // send the request again
        if (jsonNode == null || jsonNode.get("result") == null) {
            getAiAccessToken();
            response = restTemplate.postForEntity(builder.toUriString(), requestEntity, JsonNode.class);
            jsonNode = response.getBody();
        }

        //forJmats the response content and timestamp
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return new AiRespondMessageDto(jsonNode.get("result").toString(), dateFormat.format(jsonNode.get("created").longValue()));
    }

    // Movie info Api
    public JsonNode getMovieList(String movieName, int page) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("X-RapidAPI-Key", "e11c008809mshb7e6a4b894f85dfp1895ddjsnf16c307d942d");
        headers.set("X-RapidAPI-Host", "movie-database-alternative.p.rapidapi.com");
        HttpEntity<String> entity = new HttpEntity<>(headers);
        UriComponentsBuilder builder = fromUriString("https://movie-database-alternative.p.rapidapi.com")
                .queryParam("s", movieName)
                .queryParam("r", "json")
                .queryParam("page", page);
        ResponseEntity<JsonNode> response = restTemplate.exchange(builder.toUriString(), GET, entity, JsonNode.class);

        return response.getBody();
    }
}
