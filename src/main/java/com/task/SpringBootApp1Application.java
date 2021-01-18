package com.task;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com")
public class SpringBootApp1Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootApp1Application.class, args);
	}

}
