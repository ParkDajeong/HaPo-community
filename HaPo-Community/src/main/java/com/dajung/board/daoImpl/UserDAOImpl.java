package com.dajung.board.daoImpl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dajung.board.dao.UserDAO;

@Repository("userDao")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertUser(Map<String, Object> paramMap) {
		return sqlSession.insert("inserUser", paramMap);
	}

}
