package com.ap.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ap.entity.Task;

@Repository
public interface TaskRepo extends JpaRepository<Task, Integer> {
	
	@Query(value = "SELECT * FROM task WHERE user_id = ?1", nativeQuery = true)
	public List<Task> getAllTasks(Integer id);

}
