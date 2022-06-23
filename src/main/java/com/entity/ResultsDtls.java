package com.entity;

public class ResultsDtls {
  
	private int id;
	private String obtainedmarks;
	
	public ResultsDtls() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ResultsDtls(String obtainedmarks) {
		super();
		this.obtainedmarks = obtainedmarks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getObtainedmarks() {
		return obtainedmarks;
	}

	public void setObtainedmarks(String obtainedmarks) {
		this.obtainedmarks = obtainedmarks;
	}

	@Override
	public String toString() {
		return "ResultsDtls [id=" + id + ", obtainedmarks=" + obtainedmarks + "]";
	}
	
	
}
