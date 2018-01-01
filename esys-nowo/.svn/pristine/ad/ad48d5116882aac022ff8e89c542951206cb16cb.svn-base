package com.qfedu.scene.service.impl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.qfedu.common.entity.WoPage;
import com.qfedu.common.util.WoUtil;
import com.qfedu.esys.dto.UserDto;
import com.qfedu.scene.dao.ISiteDao;
import com.qfedu.scene.dao.IStaffDao;
import com.qfedu.scene.dto.SiteDto;
import com.qfedu.scene.entity.Scene;
import com.qfedu.scene.entity.Site;
import com.qfedu.scene.entity.Staff;
import com.qfedu.scene.service.ISiteService;

@Service
@Transactional
public class SiteService implements ISiteService {
	private final static Logger LOG = LogManager.getLogger(SiteService.class);

	@Resource
	private ISiteDao siteDao;
	
	@Resource
	private IStaffDao staffDao;
	
	@Override
	public WoPage<SiteDto> getGridData(UserDto u, String searchContent, Long l, Long rows) {
		// 拼接hql片段和查询参数：根据查询内容进行过滤
		String where = "";
		Map<String, Object> content = new HashMap<String, Object>();
		if (!WoUtil.isEmpty(searchContent)) {
			where = "(e.name like :content or e.address like :content or e.detail like :content)";
			content.put("content", '%' + searchContent + '%');
		}
		// 根据当前用户所属景区的信息进行过滤
		if (!u.isAdmin()) {
			Staff staff = staffDao.findBy(new HashMap<String, Object>() {{
				this.put("user.id", u.getId());
			}});
			// staff.getScene().getId()
			if (!"".equals(where)) {
				where += " and ";
			}
			where += "e.scene.id = :sceneId";
			content.put("sceneId", staff.getScene().getId());
		}
		// 调用dao方法获取分页数据
		WoPage<Site> ps = siteDao.findAllBy(where, l, rows, content);
		// 根据po数据，构造dto数据
		WoPage<SiteDto> result = new WoPage<SiteDto>();
		List<SiteDto> list = new ArrayList<SiteDto>();
		for (Site s : ps.getRows()) {
			SiteDto dto = new SiteDto();
			dto.setAddress(s.getAddress());
			dto.setDetail(s.getDetail());
			dto.setId(s.getId());
			dto.setName(s.getName());
			dto.setOpen(s.getOpen());
			Scene sc = s.getScene();
			if (sc != null) {
				dto.setSceneId(sc.getId());
				dto.setSceneName(sc.getName());
			}
			list.add(dto);
		}
		result.setResults(ps.getResults());
		result.setRows(list);
		return result;
	}
}
