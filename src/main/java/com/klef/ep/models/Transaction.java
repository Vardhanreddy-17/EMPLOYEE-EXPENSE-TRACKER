package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="transaction_table")
public class Transaction implements Serializable
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id  // primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY)  // auto_increment
	private int tid;
	@Column(length = 20,nullable = false)
	private String transtype;
	@Column(length = 20,nullable = false)
	private String transname;
	@Column(length = 20,nullable = false)
	private int transamount;
	@ManyToOne
	@JoinColumn(name="user_trans_id",referencedColumnName = "id")
	private User user_trans_id;
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
