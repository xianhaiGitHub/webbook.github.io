package com.fuyan.services.servicesimpl;

import com.fuyan.dao.daoimpl.BossDaoImpl;
import com.fuyan.services.BossDaoservice;

public class BossServiceImpl implements BossDaoservice {
	BossDaoImpl bossdaoimpl = new BossDaoImpl();
	@Override
	public void update(int id) {
		bossdaoimpl.update(id);
	}

	@Override
	public int selectId() {
		return  bossdaoimpl.selectId();
	}

}
