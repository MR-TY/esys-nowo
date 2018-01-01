package com.qfedu.scene.service;
import com.qfedu.common.entity.WoPage;
import com.qfedu.esys.dto.UserDto;
import com.qfedu.scene.dto.SiteDto;

public interface ISiteService {

	WoPage<SiteDto> getGridData(UserDto u, String searchContent, Long l, Long rows);
}
