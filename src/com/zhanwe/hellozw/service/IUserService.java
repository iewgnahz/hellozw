package com.zhanwe.hellozw.service;

import com.zhanwe.hellozw.model.*;
import com.zhanwe.hellozw.dao.*;

public interface IUserService {
	
	/**
	 * 
	 * @param userInfo
	 * @return
	 */
	public abstract UserInfo saveNewUser(UserInfo userInfo);

	/**
	 * 
	 * @param id
	 * @return
	 */
	public abstract UserInfo findUserById(String id);

	/**
	 * 
	 * @param userDAO
	 */
	public abstract void setUserDAO(IUserInfoDao userDAO);
}
