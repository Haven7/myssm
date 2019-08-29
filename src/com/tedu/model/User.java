package com.tedu.model;

import java.sql.Timestamp;

public class User {
	private int id;
	private String username;
	private String password;
	private String phone;
	private Timestamp birth;
	private String nickname;
	private int status;
	
	public User() {
		
	}

	public User(String username, String password, String phone,Timestamp  birth ,String  nickname,int status) {
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.birth = birth;
		this.nickname = nickname;
		this.status = status ;
	}

	public User(int id,String username, String password, String phone,Timestamp  birth ,String  nickname,int status) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.birth = birth;
		this.nickname = nickname;
		this.status = status ;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	

	public Timestamp getBirth() {
		return birth;
	}

	public void setBirth(Timestamp birth) {
		this.birth = birth;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}
