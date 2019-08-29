package com.tedu.model;

public class Admin {
	private int id;
	private String username;
	private String password;
	private String nickname;
	private int role;
	
	public Admin() {
		
	}

	public Admin(String username, String password, String nickname, int role) {
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.role = role;
	}

	public Admin(int id, String username, String password, String nickname, int role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.role = role;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", nickname=" + nickname
				+ ", role=" + role + "]";
	}
	
}
