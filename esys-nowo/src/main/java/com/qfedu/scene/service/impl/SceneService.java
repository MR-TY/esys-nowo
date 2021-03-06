package com.qfedu.scene.service.impl;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.qfedu.common.util.WoUtil;
import com.qfedu.esys.dao.IUserDao;
import com.qfedu.esys.entity.Role;
import com.qfedu.esys.entity.User;
import com.qfedu.scene.dao.ISceneDao;
import com.qfedu.scene.dao.IStaffDao;
import com.qfedu.scene.dto.SceneDto;
import com.qfedu.scene.entity.Scene;
import com.qfedu.scene.entity.Staff;
import com.qfedu.scene.service.ISceneService;

@Service
@Transactional
public class SceneService implements ISceneService {
	private final static Logger LOG = LogManager.getLogger(SceneService.class);

	@Resource
	private IUserDao userDao;
	
	@Resource
	private IStaffDao staffDao;
	
	@Resource
	private ISceneDao sceneDao;
	
	@Override
	public void create(SceneDto vo) {
		// 景区信息创建
		Scene s = new Scene ();
		s.setId(WoUtil.uuid());
		s.setAddress(vo.getAddress());
		s.setDetail(vo.getDetail());
		s.setName(vo.getName());
		s.setOpen(vo.getOpen());
		sceneDao.create(s);
		// 景区管理人员的用户信息及角色关系数据创建
		User u = new User();
		u.setCreateTime(new Date());
		u.setLoginName(vo.getManagerMobile());
		Role r = new Role ();
		r.setId("8a873ae6624c4c6f01624c576c660000");
		List<Role> roles = new ArrayList<Role>();
		roles.add(r);
		u.setRoles(roles);
		userDao.create(u);
		// 管理人员信息及景区、用户关系数据创建
		Staff staff = new Staff ();
		staff.setId(WoUtil.uuid());
		staff.setMobile(vo.getManagerMobile());
		staff.setName(vo.getManager());
		staff.setPosition("1");
		staff.setScene(s);
		staff.setUser(u);
		staffDao.create(staff);
	}
}
