package com.cg.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cg.bean.Certification;
import com.cg.bean.Data;
import com.cg.service.IService;


@Controller
public class MainController {
	@Autowired
	IService service;
	@RequestMapping(method=RequestMethod.GET,path="/")
	public String loginpage(@ModelAttribute("admin") Data admin)
	{
		return "login";
	}
@RequestMapping(method=RequestMethod.POST,path="/operations")
public ModelAndView login(@ModelAttribute("admin") Data data,BindingResult result)
{   ModelAndView mv = new ModelAndView();
	String role=service.getUser(data,result);
	if(role==null)
	{   mv.addObject("msg", "Wrong credentials!!!");
		mv.setViewName("login");
		return mv;
	}
	if(role.equalsIgnoreCase("manager"))
	{
        List<Data> list =new ArrayList<Data>();
        list=service.getAllEmployees();
        mv.addObject("elist",list);
        
		mv.setViewName("managerPage");
	}
	else if(role.equalsIgnoreCase("employee"))
	{
		Certification cert =service.getEmployeeInfo(data);
		mv.addObject("usr", cert);
		mv.setViewName("employeePage");
	}
	else
		mv.setViewName("login");
	return mv;
	
}


@RequestMapping(method=RequestMethod.GET,path="/employee")
public ModelAndView employee(@ModelAttribute("emp") Certification certificate)
{
    ModelAndView mv=new ModelAndView();
    mv.setViewName("employee");
    return mv;
}

@RequestMapping(method=RequestMethod.POST,path="getDetails")
public ModelAndView details(@ModelAttribute("emp") Certification certificate)
{
   ModelAndView mv=new ModelAndView();
   Certification cert=service.getDetails(certificate);
   if(cert!=null)
   {mv.addObject("emp", cert);
   mv.setViewName("addingCertificate");
   return mv;
}  else
	mv.addObject("msg", "Employee not found");
   mv.setViewName("employee");
   return mv;

	

}

@RequestMapping(method=RequestMethod.GET,path="assign")
public ModelAndView assign(@ModelAttribute("tu") Certification cert)
{
    ModelAndView mv=new ModelAndView();
    mv.setViewName("assign");
    return mv;
}

@RequestMapping(method = RequestMethod.POST,path="addingRecord")
public ModelAndView addingCertification(@ModelAttribute("tu") Certification cert)
{
  	boolean res=service.addingCertification(cert);
  	ModelAndView mv=new ModelAndView();
  	mv.addObject("msg", "Successfully assigned...");
  	mv.setViewName("assign");
  	return mv;
}


}