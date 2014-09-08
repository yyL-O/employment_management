package com.job.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.job.DB.DB;

public class User {
    private int userId;
    private String userAccount;
    private String userPassword;
    private String userName;
    private String identity;;
    private String sex;
    private String education;
    private String major;
    private String userPhone;
    private String resume;
    
   
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	public String getResume() {
			return resume;
    }
	
	public void setResume(String resume) {
		this.resume = resume;
    }
	
	
	public void save(){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "insert into user values(null,?,?,?,?,?,?,?,?,?)";
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setString(1, userAccount);
			pStmt.setString(2, userPassword);
			pStmt.setString(3, userName);
			pStmt.setString(4, identity);
			pStmt.setString(5, sex);
			pStmt.setString(6, education);
			pStmt.setString(7, major);
			pStmt.setString(8, userPhone);
			pStmt.setString(9, resume);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
	  }finally{
		  DB.closeStmt(pStmt);
		  DB.closeConn(conn);
	  }
	  
		
	}
	
	public List<User> getUsers(){
		List<User> list  = new ArrayList<User>();
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn =DB.getConn();
			stmt = DB.getStatement(conn);
			String sql = "select userId,userAccount,userPassword,userName from user";
			rs=DB.executeQuery(stmt, sql);
		    while(rs.next()){
				User u = new User();
				u.setUserId(rs.getInt("userId"));
				u.setUserAccount(rs.getString("userAccount"));
				u.setUserPassword(rs.getString("userPassword"));
				u.setUserName(rs.getString("userName"));
				list.add(u);
			 }
		 } catch (SQLException e) {
				e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeStmt(stmt);
			DB.closeConn(conn);
			
		}

		return list;
	}
	
	
	public User getUserById(int id){
		User u = new User();
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn =DB.getConn();
			stmt = DB.getStatement(conn);
			String sql = "select * from user where userId="+id;
			rs=DB.executeQuery(stmt, sql);
		    rs.next();
	        u.setUserId(rs.getInt("userId"));
			u.setUserAccount(rs.getString("userAccount"));
			u.setUserPassword(rs.getString("userPassword"));
			u.setUserName(rs.getString("userName"));
			u.setIdentity(rs.getString("identity"));
			u.setUserPhone(rs.getString("userPhone"));
			u.setEducation(rs.getString("education"));
			u.setMajor(rs.getString("major"));
			u.setSex(rs.getString("sex"));
			u.setResume(rs.getString("resume"));
		
			
		 } catch (SQLException e) {
				e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeStmt(stmt);
			DB.closeConn(conn);
			
		}

		return u;
	}
	
	public void update(int userId){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "update user set userAccount=?,userPhone=?,identity=?,education=?,major=?,resume=?,sex=? where userId="+userId;
		 System.out.println(sql);
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setString(1, userAccount);
			pStmt.setString(2, userPhone);
			pStmt.setString(3, identity);
			pStmt.setString(4, education);
			pStmt.setString(5, major);
			pStmt.setString(6, resume);
			pStmt.setString(7, sex);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
	  }finally{
		  DB.closeStmt(pStmt);
		  DB.closeConn(conn);
	  }
	  
		
	}
}
