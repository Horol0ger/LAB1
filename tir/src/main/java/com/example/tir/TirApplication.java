package com.example.tir;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.example.tir")
public class TirApplication {

	public static void main(String[] args) {
		SpringApplication.run(TirApplication.class, args);
	}

}
