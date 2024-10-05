package com.example.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.entity.AnotherEntity;
import com.example.repository.AnotherRepository;
import com.example.service.AnotherService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor

public class AnotherServiceImpl implements AnotherService{
	
	private AnotherRepository anotherRepository;
		
	@Override
	public AnotherEntity createAnotherEntity(AnotherEntity entity) {
		return anotherRepository.updateOrInsert(entity);
	}

	@Override
	public List<AnotherEntity> getAnotherEntity() {
		List<AnotherEntity> entities = anotherRepository.findAll();
		return entities;
	}

}	

