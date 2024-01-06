package com.nci.filmreview.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.nci.filmreview.api.Api;
import com.nci.filmreview.api.dot.AiRequestMessageDto;
import com.nci.filmreview.api.dot.AiRespondMessageDto;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

@RestController
public class ApiController {

    @Resource
    private Api api;

    @PostMapping("/ai")
    public AiRespondMessageDto aiAnswer(@RequestBody AiRequestMessageDto aiRequestMessageDto) {
        return api.getAiAnswer(aiRequestMessageDto);
    }

    @GetMapping("/movie")
    public JsonNode getMovieList(@RequestParam String movieName, @RequestParam Integer page) {
        return api.getMovieList(movieName, page);
    }
}
