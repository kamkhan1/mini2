package com.cg.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.validation.BindingResult;

import com.cg.bean.Certification;
import com.cg.bean.Data;

public class IDaoImpl implements IDao{
    @PersistenceContext
	EntityManager em;
	
	@Override
	public String getUser(Data data, BindingResult result) {
		Data usr=em.find(Data.class, data.getEmpId());
		if(usr==null)
			return null;		
		if(usr.getRole().equalsIgnoreCase("manager")&&data.getPassword().equals(usr.getPassword()))
		     return "manager";
		else if(usr.getRole().equalsIgnoreCase("employee")&&data.getPassword().equals(usr.getPassword()))
		return "employee";
		else
			return null;
		
	}

	@Override
	public List<Data> getAllEmployees() {
		List<Data> list=em.createQuery("SELECT t FROM Data t").getResultList();
		if(list==null)
		return null;
		else
			return list;
	}

	@Override
	public Certification getDetails(Certification certificate) {
		Certification cert=em.find(Certification.class, certificate.getEmpId());
		if(cert==null)
		return null;
		else
			return cert;
	}

	@Override
	public boolean addingCertification(Certification cert) {
		em.persist(cert);
		return false;
	}

}
