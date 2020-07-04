package org.model;
 
public class Login {
	private Integer id;
	private String name;
	private String password;
	private int role;
	public Integer getId(){
		return this.id;
	}
	public void setId(Integer id){
		this.id=id;
	}
	public String getName(){
		return this.name;
	}
	public void setName(String name){
		this.name=name;
	}
	public String getPassword(){
		return this.password;
	}
	public void setPassword(String password){
		this.name=password;
	}
	public int getRole(){
		return this.role;
	}
	public void setRole(int role){
		this.role=role;
	}
}
