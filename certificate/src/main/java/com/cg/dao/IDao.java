package com.cg.dao;

import java.util.List;

import org.springframework.validation.BindingResult;

import com.cg.bean.Certification;
import com.cg.bean.Data;

public interface IDao {

	String getUser(Data data, BindingResult result);

	List<Data> getAllEmployees();

	Certification getDetails(Certification certificate);

	boolean addingCertification(Certification cert);

	Certification getEmployeeInfo(Data data);

}
