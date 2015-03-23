package com.zhanwe.hellozw.service;
import java.util.List;

import com.zhanwe.hellozw.model.PersonalNav;
import com.zhanwe.hellozw.dao.IPersonNavDAO;

public interface IPersonNavService {
	
	/**
	 *  查询所有导航标题菜单
	 * @return
	 */
	public abstract List<PersonalNav> findAllPersonalNavs();
	
	/**
	 * 添加用户导航菜单
	 * @param name
	 */
	public abstract void savePersonalNav(PersonalNav personalNav);
	
	/**
	 * 
	 * @param personNavDAO
	 */
	public abstract void setPersonNavDAO(IPersonNavDAO personNavDAO);
	
	
}
