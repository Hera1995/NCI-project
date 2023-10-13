package com.nci.filmreview;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.nci.filmreview.dao")
public class FilmReviewApplication {

	public static void main(String[] args) {
		SpringApplication.run(FilmReviewApplication.class, args);
	}

}
