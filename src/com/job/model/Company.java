package com.job.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.job.DB.DB;

public class Company {
	private int companyId;
	private String companyAccount;
    private String companyPassword;
    private String companyName;
    private String linkName;;
    private String linkPhone;
    
    public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getCompanyAccount() {
		return companyAccount;
	}
	public void setCompanyAccount(String companyAccount) {
		this.companyAccount = companyAccount;
	}
	public String getCompanyPassword() {
		return companyPassword;
	}
	public void setCompanyPassword(String companyPassword) {
		this.companyPassword = companyPassword;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getLinkName() {
		return linkName;
	}
	public void setLinkName(String linkName) {
		this.linkName = linkName;
	}
	public String getLinkPhone() {
		return linkPhone;
	}
	public void setLinkPhone(String linkPhone) {
		this.linkPhone = linkPhone;
	}
	
	public void save(){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "insert into company values(null,?,?,?,?,?)";
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setString(1, companyAccount);
			pStmt.setString(2, companyPassword);
			pStmt.setString(3, companyName);
			pStmt.setString(4, linkName);
			pStmt.setString(5, linkPhone);
			
			pStmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
	  }finally{
		  DB.closeStmt(pStmt);
		  DB.closeConn(conn);
	  }
	  
		
	}
	
	
	public List<Company> getCompanys(){
		List<Company> list  = new ArrayList<Company>();
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn =DB.getConn();
			stmt = DB.getStatement(conn);
			String sql = "select * from Company";
			rs=DB.executeQuery(stmt, sql);
		    while(rs.next()){
				Company c = new Company();
				c.setCompanyId(rs.getInt("companyId"));
				c.setCompanyAccount(rs.getString("companyAccount"));
				c.setCompanyPassword(rs.getString("companyPassword"));
				c.setCompanyName(rs.getString("companyName"));
				c.setLinkName(rs.getString("linkName"));
				c.setLinkPhone(rs.getString("linkPhone"));
				list.add(c);
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
	

	public Company getCompanyById(int id){
		Company c = new Company();
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn =DB.getConn();
			stmt = DB.getStatement(conn);
			String sql = "select * from Company where companyId="+id;
			System.out.println(sql);
			rs=DB.executeQuery(stmt, sql);
		    rs.next();
	        c.setCompanyId(rs.getInt("companyId"));
			c.setCompanyAccount(rs.getString("companyAccount"));
			c.setCompanyPassword(rs.getString("companyPassword"));
			c.setCompanyName(rs.getString("companyName"));
			c.setLinkName(rs.getString("linkName"));
			c.setLinkPhone(rs.getString("linkPhone"));
		
			
		 } catch (SQLException e) {
				e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeStmt(stmt);
			DB.closeConn(conn);
			
		}
		return c;
	}
	
	public void update(int companyId){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "update company set companyName=?,linkName=?,linkPhone=? where companyId="+companyId;
		 System.out.println(sql);
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setString(1, companyName);
			pStmt.setString(2, linkName);
			pStmt.setString(3, linkPhone);
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
