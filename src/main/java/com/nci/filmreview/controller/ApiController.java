package com.nci.filmreview.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.nci.filmreview.api.AiApi;
import com.nci.filmreview.api.dot.AiReqDto;
import com.nci.filmreview.api.dot.AiResDto;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

@RestController
public class ApiController {

    @Resource
    private AiApi aiApi;

    @PostMapping("/ai")
    public AiResDto aiAnswer(@RequestBody AiReqDto aiReqDto) {
        return aiApi.getAiAnswer(aiReqDto);
    }

    @GetMapping("/movie")
    public JsonNode getMovieList(@RequestParam String movieName, @RequestParam Integer page) {
        return aiApi.getMovieList(movieName, page);
    }
}
