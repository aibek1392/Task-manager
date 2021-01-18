package com.task.service;

public interface AuthenticationInterface {
	void logout();
	boolean authenticate(String userName, String password);
}
