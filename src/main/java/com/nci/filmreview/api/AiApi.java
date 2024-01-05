package com.nci.filmreview.api;

import com.fasterxml.jackson.databind.JsonNode;
import com.nci.filmreview.api.dot.AiAccessTokenDto;
import com.nci.filmreview.api.dot.AiDto;
import com.nci.filmreview.api.dot.AiReqDto;
import com.nci.filmreview.api.dot.AiResDto;
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
public class AiApi {
    private String accessToken;
    @Resource
    private RestTemplate restTemplate;

    @PostConstruct
    public void init() {
        // Get access token for AI request
        getAiAccessToken();
    }

    public void getAiAccessToken() {
        UriComponentsBuilder builder = fromUriString("https://aip.baidubce.com/oauth/2.0/token")
                .queryParam("grant_type", "client_credentials")
                .queryParam("client_id", "a0NesLUiBOOhVgPiIARAvlBv")
                .queryParam("client_secret", "lbygtfg6IGI3vLC5GKBSZU5cYhwI1aUQ");

        // Request for access token
        ResponseEntity<AiAccessTokenDto> response = restTemplate.getForEntity(builder.toUriString(), AiAccessTokenDto.class);
        AiAccessTokenDto aiAccessTokenDto = response.getBody();
        accessToken = aiAccessTokenDto.getAccessToken();
    }

    public AiResDto getAiAnswer(AiReqDto aiReqDto) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type", "application/json");
        HttpEntity<AiReqDto> requestEntity = new HttpEntity<>(aiReqDto, headers);

        // Get answer from AI
        UriComponentsBuilder builder = fromUriString("https://aip.baidubce.com/rpc/2.0/ai_custom/v1/wenxinworkshop/chat/eb-instant").queryParam("access_token", accessToken);
        ResponseEntity<AiDto> response = restTemplate.postForEntity(builder.toUriString(), requestEntity, AiDto.class);
        AiDto aiDto = response.getBody();

        // If access token expired, request again
        if (aiDto == null || aiDto.getResult() == null) {
            getAiAccessToken();
            response = restTemplate.postForEntity(builder.toUriString(), requestEntity, AiDto.class);
            aiDto = response.getBody();
        }

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return new AiResDto(aiDto.getResult(), dateFormat.format(aiDto.getCreated()));
    }

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
