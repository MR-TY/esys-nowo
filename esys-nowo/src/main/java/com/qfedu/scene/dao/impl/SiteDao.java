package com.qfedu.scene.dao.impl;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.qfedu.common.dao.impl.BaseDao;
import com.qfedu.scene.dao.ISiteDao;
import com.qfedu.scene.entity.Site;

@Repository
public class SiteDao extends BaseDao<Site> implements ISiteDao {
	private final static Logger LOG = LogManager.getLogger(SiteDao.class);

}
