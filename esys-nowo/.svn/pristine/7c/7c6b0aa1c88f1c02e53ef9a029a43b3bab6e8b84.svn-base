package com.qfedu.scene.controller;
import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.qfedu.common.entity.WoResultCode;
import com.qfedu.scene.dto.SceneDto;
import com.qfedu.scene.service.ISceneService;

@RestController
@RequestMapping("/scene/info")
public class SceneController {
	private final static Logger LOG = LogManager.getLogger(SceneController.class);
	
	@Resource
	private ISceneService sceneService;
	
	@RequestMapping("/create")
	public WoResultCode create (SceneDto vo) {
		sceneService.create(vo);
		return WoResultCode.getSuccessCode();
	}
}
