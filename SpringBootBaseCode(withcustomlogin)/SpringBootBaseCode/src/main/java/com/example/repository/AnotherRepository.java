package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entity.AnotherEntity;

import jakarta.transaction.Transactional;

public interface AnotherRepository extends JpaRepository<AnotherEntity, Long> {

	@Transactional
	default AnotherEntity updateOrInsert(AnotherEntity record) {
		return save(record);
	}

	List<AnotherEntity> findAll();

}
