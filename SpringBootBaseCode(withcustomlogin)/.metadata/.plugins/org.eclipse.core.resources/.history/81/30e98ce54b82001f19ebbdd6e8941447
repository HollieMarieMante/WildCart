package com.example.entity;

import java.time.LocalTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "task_shift")
public class Shift {

	@Id
	private int id;
	
	@Column(nullable = false)
	private int number;
	
	@Column(nullable = false)
	private LocalTime startTime;
	
	@Column(nullable = false)
	private LocalTime endTime;

}
