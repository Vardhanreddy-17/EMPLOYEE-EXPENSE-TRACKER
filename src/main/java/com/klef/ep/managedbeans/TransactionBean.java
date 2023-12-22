package com.klef.ep.managedbeans;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import com.klef.ep.models.User;
import com.klef.ep.services.TransactionService;

@ManagedBean(name = "usbean",eager = true)
public class TransactionBean 
{
	private int tid;
	private String transtype;
	private String transname;
	private int transamount;
	private User user_trans_id;
	
	@EJB(lookup = "java:global/EPPROJECT/TransactionServiceImpl!com.klef.ep.services.TransactionService")
	TransactionService transactionService;

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getTranstype() {
		return transtype;
	}

	public void setTranstype(String transtype) {
		this.transtype = transtype;
	}

	public String getTransname() {
		return transname;
	}

	public void setTransname(String transname) {
		this.transname = transname;
	}

	public int getTransamount() {
		return transamount;
	}

	public void setTransamount(int transamount) {
		this.transamount = transamount;
	}

	public User getUser_trans_id() {
		return user_trans_id;
	}

	public void setUser_trans_id(User user_trans_id) {
		this.user_trans_id = user_trans_id;
	}
}
