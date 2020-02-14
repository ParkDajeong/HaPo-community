package com.dajung.board.dao;

import java.util.Map;

public interface UserDAO {
	int setUser(Map<String, Object> paramMap);

	int checkUserId(Map<String, Object> paramMap);

	int checkUserNickname(Map<String, Object> paramMap);

	int checkUserEmail(Map<String, Object> paramMap);

	int loginUser(Map<String, Object> paramMap);
}
