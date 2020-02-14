package com.dajung.board.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.dajung.board.dao.UserDAO;
import com.dajung.board.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource(name="userDao")
	private UserDAO userDao;

	@Override
	public int setUser(Map<String, Object> paramMap) {
		return userDao.setUser(paramMap);
	}

	@Override
	public int checkUserId(Map<String, Object> paramMap) {
		return userDao.checkUserId(paramMap);
	}

	@Override
	public int checkUserNickname(Map<String, Object> paramMap) {
		return userDao.checkUserNickname(paramMap);
	}

	@Override
	public int checkUserEmail(Map<String, Object> paramMap) {
		return userDao.checkUserEmail(paramMap);
	}

	@Override
	public int loginUser(Map<String, Object> paramMap, HttpSession session) {
		
		int result = userDao.loginUser(paramMap);
		
		if(result > 0) {
			session.setAttribute("userId", paramMap.get("id"));
		}
		
		return result;
	}
}
