package com.adi.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {
	private static List<Todo> todos = new ArrayList<>();
	private static int todoCounter = 0;
	static {
		todos.add(new Todo(++todoCounter, "Adi", "Learn Web-Dev", LocalDate.now().plusYears(1)));
		todos.add(new Todo(++todoCounter, "Aditya", "Learn Cloud", LocalDate.now().plusYears(2)));	
	}
	public List<Todo> findByUsername(String username){
		Predicate<? super Todo> predicate = todo -> todo.getUsername().equalsIgnoreCase(username);
		return todos.stream().filter(predicate).toList();
	}
	public void add(String username, String description, LocalDate targetDate) {
		Todo todo = new Todo(++todoCounter, username, description, targetDate);
		todos.add(todo);
	}
	public void delete(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		todos.removeIf(predicate);
	}
	public Todo findById(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		Todo todo = todos.stream().filter(predicate).findFirst().get();
		return todo;
	}
	public void updateTodo(@Valid Todo todo) {
		delete(todo.getId());
		todos.add(todo);
	}
}
