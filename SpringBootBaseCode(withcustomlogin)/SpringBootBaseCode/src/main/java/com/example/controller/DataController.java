package com.example.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.entity.AnotherEntity;
import com.example.service.AnotherService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("api/data")
public class DataController {

	private AnotherService anotherService;
	
	@GetMapping("time")
	public ResponseEntity<String> getCurrentTime() {
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("LLLL dd, yyyy KK:mm:ss a");
		String text = now.format(formatter);
		return new ResponseEntity<String>(text, HttpStatus.OK);
	}
	
	@GetMapping("/sample/save")
	public ResponseEntity<AnotherEntity> saveSampleInfo(@RequestParam String column1, @RequestParam String column2, 
			@RequestParam int column3) {
		return new ResponseEntity<AnotherEntity>(
				anotherService.createAnotherEntity(
						new AnotherEntity(null, column1, column2, column3)),
				HttpStatus.OK);
	}
	
	@GetMapping("/sample/retrieve")
	public ResponseEntity<List<AnotherEntity>> getWarehouseInfo() {
		return new ResponseEntity<List<AnotherEntity>>(anotherService.getAnotherEntity(), HttpStatus.OK);
	}
}
