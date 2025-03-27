package com.abhi.librarymanagement.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name="library")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class LibraryDTO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int id;
	private String Title;
	private String Author; 
	private String Genre;
	private long Availability; 
	
	
}
