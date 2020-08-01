package com.webtest.user;

import java.sql.Date;

public class tea_file {

	private int id;
	private String title;
	private Date time;
	private int stunum;
	private String filename;
	private String filepath;
	
	
	public int getStunum() {
		return stunum;
	}
	public void setStunum(int i) {
		this.stunum = i;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date date) {
		this.time = date;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
}
