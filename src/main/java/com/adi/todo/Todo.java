package com.adi.todo;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.FutureOrPresent;
import jakarta.validation.constraints.Size;

@Entity
public class Todo {
	private String username;
	@Id
	@GeneratedValue
	private int id;
	
	@Size(min=10, message="Enter atleast 10 characters")
	private String description;
	@FutureOrPresent(message = "Cant enter a past date")
	private LocalDate targetDate;
	
	public Todo() {} 
	public Todo(int id, String username, String description, LocalDate targetDate) {
		super();
		this.username = username;
		this.id = id;
		this.description = description;
		this.targetDate = targetDate;
	}
	
	@Override
	public String toString() {
		return "Todo [username=" + username + ", id=" + id + ", description=" + description + ", targetDate="
				+ targetDate + "]";
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDate getTargetDate() {
		return targetDate;
	}
	public void setTargetDate(LocalDate targetDate) {
		this.targetDate = targetDate;
	}
}
