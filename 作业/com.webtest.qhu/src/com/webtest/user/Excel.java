package com.webtest.user;

import com.webtest.utils.JDBC;
 
public class Excel{
		private int id;
		private int stunum;
		private String username;
		private String banji;
		private String password;
		private int qqnum;
		private String email;

		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public int getStunum() {
			return stunum;
		}
		public void setStunum(int stunum) {
			this.stunum = stunum;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getbanji() {
			return banji;
		}
		public void setClass(String banji1) {
			banji = banji1;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public int getQqnum() {
			return qqnum;
		}
		public void setQqnum(int qqnum) {
			this.qqnum = qqnum;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
	public boolean add(){
		String sql = "insert into student values('"+stunum+"','"+username+"','"+banji+"','"+password+"','"+qqnum+"','"+email+"')";
		return JDBC.Update(sql);
	}
	public java.sql.ResultSet selectAll(){
		String sql ="select * from student";
		return JDBC.select(sql);
  }
}