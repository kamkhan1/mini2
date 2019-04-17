package com.cg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;

import com.cg.bean.Certification;
import com.cg.bean.Data;
import com.cg.dao.IDao;

public class IServiceImpl implements IService{
  @Autowired	
  IDao dao;
  
  
	public IServiceImpl(IDao dao) {
	super();
	this.dao = dao;
}


	public String getUser(Data data, BindingResult result) {
		
		return dao.getUser(data, result);
	}


	@Override
	public List<Data> getAllEmployees() {
		
		return dao.getAllEmployees();
	}


	@Override
	public Certification getDetails(Certification certificate) {
		
		return dao.getDetails(certificate);
	}


	@Override
	public boolean addingCertification(Certification cert) {
		
		return dao.addingCertification(cert);
	}

}
