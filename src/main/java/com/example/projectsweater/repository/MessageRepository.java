package com.example.projectsweater.repository;

import com.example.projectsweater.domain.Message;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface MessageRepository extends CrudRepository<Message,Integer> {
    List<Message> findByTag(String tag);
}
