package com.example.tir.entity;

import lombok.Data;
import org.springframework.data.relational.core.mapping.Table;

import java.sql.Date;

@Data
@Table("users")
public class User {
    int id;
    String first_name;
    String last_name;
    String email;
    boolean certificate_002;
    Date date_of_birth;
    String password;

}
