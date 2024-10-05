package com.example.controller;

import java.time.LocalTime;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.entity.Shift;
import com.example.service.ShiftService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("api/shift")
public class ShiftController {

	private ShiftService shiftService;
	
	@GetMapping("save/{shift}/{startTime}/{endTime}")
	public ResponseEntity<String> saveShift(@PathVariable("shift") int shift,
			@PathVariable("startTime") LocalTime startTime, @PathVariable("endTime") LocalTime endTime) {
		shiftService.saveShift(new Shift(shift, shift, startTime, endTime));
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	
	@GetMapping("current_shift")
	public ResponseEntity<String> getCurrentShift() {
		Shift shift = shiftService.getSampleByCurrentTime(LocalTime.now());
		return new ResponseEntity<String>(shift.getNumber()+"", HttpStatus.OK);
	}
}
