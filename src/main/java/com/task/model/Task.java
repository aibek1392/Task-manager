package com.task.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Task {
	
	@Id @GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(name = "start_date", columnDefinition="DATETIME")
	private Date startDate;
	@Column(name = "end_date", columnDefinition="DATETIME")
	private Date endDate;
	private String description;
	private String priority;
	
	@ManyToOne
	@ToString.Exclude
	private User user;
	
}
