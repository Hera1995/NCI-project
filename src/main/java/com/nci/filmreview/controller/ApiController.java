package com.nci.filmreview.controller;

import com.nci.filmreview.api.AiApi;
import com.nci.filmreview.api.dot.AiReqDto;
import com.nci.filmreview.api.dot.AiResDto;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @Resource
    private AiApi aiApi;

    @PostMapping("/ai")
    public AiResDto aiAnswer(@RequestBody AiReqDto aiReqDto){
        return aiApi.getAiAnswer(aiReqDto);
    }
}
