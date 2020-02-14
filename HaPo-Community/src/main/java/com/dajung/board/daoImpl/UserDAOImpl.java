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
	public int setUser(Map<String, Object> paramMap) {
		return sqlSession.insert("insertUser", paramMap);
	}

	@Override
	public int checkUserId(Map<String, Object> paramMap) {
		return sqlSession.selectOne("selectUserId", paramMap);
	}

	@Override
	public int checkUserNickname(Map<String, Object> paramMap) {
		return sqlSession.selectOne("selectUserNickname", paramMap);
	}

	@Override
	public int checkUserEmail(Map<String, Object> paramMap) {
		return sqlSession.selectOne("selectUserEmail", paramMap);
	}

	@Override
	public int loginUser(Map<String, Object> paramMap) {
		return sqlSession.selectOne("selectUser", paramMap);
	}

}
