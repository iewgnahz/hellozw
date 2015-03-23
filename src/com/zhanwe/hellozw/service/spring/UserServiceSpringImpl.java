package com.zhanwe.hellozw.service.spring;

import java.util.Iterator;
import java.util.Set;

import com.zhanwe.hellozw.model.*;
import com.zhanwe.hellozw.service.IUserService;
import com.zhanwe.hellozw.dao.*;
import com.zhanwe.hellozw.dao.hibernate.*;

public class UserServiceSpringImpl implements IUserService {

	private IUserInfoDao userInfoDao;

	@Override
	public UserInfo saveNewUser(UserInfo userInfo) {

		UserInfo saveUserInfo = null;
		try {
			saveUserInfo = getUserInfoDao().saveUser(userInfo);
		} catch (RuntimeException e) {
			System.out.println("Could not save user " + e.toString());
		}
		return saveUserInfo;
	}

	@Override
	public UserInfo findUserById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setUserDAO(IUserInfoDao userDAO) {
		this.userInfoDao = userDAO;
	}

	public IUserInfoDao getUserInfoDao() {
		return userInfoDao;
	}

	public void setUserInfoDao(IUserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}
}
