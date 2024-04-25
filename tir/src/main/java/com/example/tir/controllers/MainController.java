package com.example.tir.controllers;

import com.example.tir.entity.User;
import com.example.tir.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/main")
public class MainController {
    @Autowired
    UserRepository users;
    @GetMapping("/getu")
    public ResponseEntity<List<User>> getUsers(){

        System.out.println(users.findAll());
        return ResponseEntity.ok(((List<User>) users.findAll()));
    }
}
