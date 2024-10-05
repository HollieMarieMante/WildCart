package com.example.repository;


import java.time.LocalTime;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entity.Shift;

import jakarta.transaction.Transactional;

public interface SampleRepository extends JpaRepository<Shift, Integer> {

	Optional<Shift> findByStartTimeLessThanEqualAndEndTimeGreaterThan(LocalTime startTime, LocalTime endTime);

	@Transactional
	default Shift updateOrInsert(Shift shift) {
		return save(shift);
	}

}
