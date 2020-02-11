package com.dajung.board.serviceImpl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dajung.board.dao.UserDAO;
import com.dajung.board.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource(name="userDao")
	private UserDAO userDao;

	@Override
	public int insertUser(Map<String, Object> paramMap) {
		return userDao.insertUser(paramMap);
	}

}
