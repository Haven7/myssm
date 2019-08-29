package com.tedu.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tedu.dao.IImgDao;
import com.tedu.model.Img;
import com.tedu.service.IImgService;
@Service
public class ImgService implements IImgService {
	private IImgDao imgDao;
	
	@Resource
	public void setImgDao(IImgDao imgDao) {
		this.imgDao = imgDao;
	}


	@Override
	public void add(Img img) {
		// TODO Auto-generated method stub
		imgDao.add(img);
	}
	@Override
	public void delete(int id) {
		imgDao.delete(id);
	}
	@Override
	public void alldelete(int id) {
		imgDao.alldelete(id);
	}

}
