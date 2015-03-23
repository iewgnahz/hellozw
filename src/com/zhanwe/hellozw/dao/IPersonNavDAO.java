package com.zhanwe.hellozw.dao;

import java.util.List;

import com.zhanwe.hellozw.model.PersonalNav;

public interface IPersonNavDAO {

	/**
	 * 查询所有导航标题菜单
	 * 
	 * @return
	 */
	public abstract List<PersonalNav> findAllPersonalNav();

	/**
	 * 添加用户导航菜单
	 * @param name
	 */
	public abstract void savePersonalNav(PersonalNav name);
}
