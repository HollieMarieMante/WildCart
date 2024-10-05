package com.example.service;

import java.time.LocalTime;

import com.example.entity.Shift;

public interface ShiftService {
	
	public Shift saveShift(Shift shift);
	public Shift getSampleById(int id);
	public Shift getSampleByCurrentTime(LocalTime now);
	
}
