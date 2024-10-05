package com.example.service.impl;

import java.time.LocalTime;

import org.springframework.stereotype.Service;

import com.example.entity.Shift;
import com.example.repository.SampleRepository;
import com.example.service.ShiftService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor

public class ShiftServiceImpl implements ShiftService{
	
	private SampleRepository sampleRepository;
	
	@Override
	public Shift saveShift(Shift shift) {
		return sampleRepository.updateOrInsert(shift);
	}
	
	@Override
	public Shift getSampleById(int id) {
		Shift shift = sampleRepository.findById(id).orElse(new Shift());
        return shift;
	}

	@Override
	public Shift getSampleByCurrentTime(LocalTime now) {
		return sampleRepository.findByStartTimeLessThanEqualAndEndTimeGreaterThan(now, now).get();
	}

}
