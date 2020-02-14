package com.dajung.board.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface UserService {
	int setUser(Map<String, Object> paramMap);

	int checkUserId(Map<String, Object> paramMap);
	
	int checkUserNickname(Map<String, Object> paramMap);
	
	int checkUserEmail(Map<String, Object> paramMap);
	
	int loginUser(Map<String, Object> paramMap, HttpSession session);
}
