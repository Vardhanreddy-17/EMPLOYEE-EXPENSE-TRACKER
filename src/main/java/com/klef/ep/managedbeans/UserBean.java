package com.klef.ep.managedbeans;



import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import com.klef.ep.services.UserService;

@ManagedBean(name = "usbean",eager = true)
public class UserBean 
{
	
	private int id;
    private String name;
    private String gender;
    private String dob;
    private int income;
    private String email;
    private String password;
    private String contactno;
    
    @EJB(lookup = "java:global/EPPROJECT/UserServiceImpl!com.klef.ep.services.UserService")
    UserService userService;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
    
}
