package com.task.dao;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.task.model.Task;

public interface TaskDAO extends CrudRepository<Task, Integer> {

}
