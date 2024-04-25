package com.example.tir.repositories;

import com.example.tir.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.swing.text.html.Option;
import java.util.Optional;

@Repository
public interface UserRepository extends CrudRepository<User,Integer> {
    //@Override
    //Iterable<User> findAll();


    Optional<User> findByEmail(String email);
}
