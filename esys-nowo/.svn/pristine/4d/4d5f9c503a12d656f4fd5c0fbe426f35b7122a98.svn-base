package com.qfedu.scene.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.qfedu.esys.dto.UserDto;
import com.qfedu.esys.util.ESysConstant;
import com.qfedu.esys.vo.GridEuiVo;
import com.qfedu.scene.dto.SiteDto;
import com.qfedu.scene.service.ISiteService;

@RestController
@RequestMapping("/scene/site")
@SessionAttributes(names = ESysConstant.SESSION_USER)
public class SiteController {
	private final static Logger LOG = LogManager.getLogger(SiteController.class);

	@Resource
	private ISiteService siteService;

	@RequestMapping("/list")
	public GridEuiVo<SiteDto> getList(String searchContent, Long page, Long rows, 
			Map<String, Object> model) {
		UserDto u = (UserDto)model.get(ESysConstant.SESSION_USER);
		return new GridEuiVo<SiteDto>(siteService.getGridData(u, searchContent, (page - 1) * rows, rows));
	}
}
