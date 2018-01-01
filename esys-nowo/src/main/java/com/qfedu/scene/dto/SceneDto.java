package com.qfedu.scene.dto;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class SceneDto {
	

	private final static Logger LOG = LogManager.getLogger(SceneDto.class);
	
	/**
	 * Id
	 */
	private String id;
	
	/**
	 * 名称
	 */
	private String name;
	
	/**
	 * 开放时间
	 */
	private String open;
	
	/**
	 * 地点
	 */
	private String address;
	
	/**
	 * 详情
	 */
	private String detail;
	
	/**
	 * 负责人姓名
	 */
	private String manager;
	
	/**
	 * 负责人手机
	 */
	private String managerMobile;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getManagerMobile() {
		return managerMobile;
	}

	public void setManagerMobile(String managerMobile) {
		this.managerMobile = managerMobile;
	}
}
