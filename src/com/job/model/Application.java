package com.job.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import java.util.List;


import com.job.DB.DB;

public class Application {
   private int id;
   private int companyId;
   private String companyName;
   private String jobName;
   private String jobPlace;
   private String jobRequire;
   private int salary;
   private String jobTask;
   private Timestamp  releaseTime;
   
   
	public int getId() {
	    return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getJobPlace() {
		return jobPlace;
	}
	public void setJobPlace(String jobPlace) {
		this.jobPlace = jobPlace;
	}
	public String getJobRequire() {
		return jobRequire;
	}
	public void setJobRequire(String jobRequire) {
		this.jobRequire = jobRequire;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getJobTask() {
		return jobTask;
	}
	public void setJobTask(String jobTask) {
		this.jobTask = jobTask;
	}
	   
	 public Timestamp getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(Timestamp releaseTime) {
		this.releaseTime = releaseTime;
	}
	
	
	public void save(){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "insert into Application values(null,?,?,?,?,?,?,?,?)";
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setInt(1, companyId);
			pStmt.setString(2, companyName);
			pStmt.setString(3, jobName);
			pStmt.setString(4, jobPlace);
			pStmt.setString(5, jobRequire);
			pStmt.setInt(6, salary);
			pStmt.setString(7, jobTask);
			pStmt.setTimestamp(8,releaseTime);
			
			pStmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
	  }finally{
		  DB.closeStmt(pStmt);
		  DB.closeConn(conn);
	  }
	  
		
	}
	
	
	public static int getApplications(List<Application> Applications,int pageNo,int pageSize,int companyId){
		 int pageCount =0; 
		 Connection conn = null;
    	 Statement stmt=null;
    	 ResultSet rs = null;
    	 ResultSet rsCount =null;
    	 try {
	    	 conn = DB.getConn();
	    	 stmt = DB.getStatement(conn);
	    	 rsCount = DB.executeQuery(stmt, "select count(*) from Application where companyId="+companyId);
	    	 rsCount.next();
	    	 pageCount = (rsCount.getInt(1)+pageSize-1)/pageSize;
	    	 String sql="select * from Application where companyId="+companyId +" limit "+(pageNo-1)*pageSize+","+pageSize;
	    	 System.out.print(sql);
	    	 rs = DB.executeQuery(stmt,sql);
	    	 while(rs.next()){
				 Application a = new Application();
				 a.setId(rs.getInt("id"));
				 a.setCompanyId(rs.getInt("companyId"));
				 a.setJobName(rs.getString("jobName"));
				 a.setReleaseTime(rs.getTimestamp("releaseTime"));
				 Applications.add(a);
			 }
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			DB.closeRs(rsCount);
			DB.closeRs(rs);
			DB.closeStmt(stmt);
			DB.closeConn(conn);
		}
   
		return pageCount;
		
	}
	
	public static int getAllApplications(List<Application> Applications,int pageNo,int pageSize){
		 int pageCount =0; 
		 Connection conn = null;
	   	 Statement stmt=null;
	   	 ResultSet rs = null;
	   	 ResultSet rsCount =null;
	   	 try {
		    	 conn = DB.getConn();
		    	 stmt = DB.getStatement(conn);
		    	 rsCount = DB.executeQuery(stmt, "select count(*) from Application");
		    	 rsCount.next();
		    	 pageCount = (rsCount.getInt(1)+pageSize-1)/pageSize;
		    	 String sql="select * from Application limit "+(pageNo-1)*pageSize+","+pageSize;
		    	 System.out.print(sql);
		    	 rs = DB.executeQuery(stmt,sql);
		    	 while(rs.next()){
					 Application a = new Application();
					 a.setId(rs.getInt("id"));
					 a.setCompanyId(rs.getInt("companyId"));
					 a.setCompanyName(rs.getString("companyName"));
					 a.setJobName(rs.getString("jobName"));
					 a.setReleaseTime(rs.getTimestamp("releaseTime"));
					 Applications.add(a);
				 }
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally{
				DB.closeRs(rsCount);
				DB.closeRs(rs);
				DB.closeStmt(stmt);
				DB.closeConn(conn);
			}
  
		return pageCount;
		
	}
	
	public static Application getApplication(int id){
		 Connection conn = null;
	   	 Statement stmt=null;
	   	 ResultSet rs = null;
	   	 Application a = new Application();
	   	 try {
		    	 conn = DB.getConn();
		    	 stmt = DB.getStatement(conn);
		    	 String sql="select * from Application where id= "+id;
		    	 rs = DB.executeQuery(stmt,sql);
		    	 rs.next();
		    	 a.setId(rs.getInt("id"));
		    	 a.setCompanyId(rs.getInt("companyId"));
		    	 a.setCompanyName(rs.getString("companyName"));
		    	 a.setJobName(rs.getString("jobName"));
		    	 a.setJobPlace(rs.getString("jobPlace"));
		    	 a.setJobRequire(rs.getString("jobRequire"));
		    	 a.setJobTask(rs.getString("jobTask"));
				 a.setReleaseTime(rs.getTimestamp("releaseTime"));
				 a.setSalary(rs.getInt("salary"));
				 
				 
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally{
				DB.closeRs(rs);
				DB.closeStmt(stmt);
				DB.closeConn(conn);
			}
	  
			return a;
			
		}
	
	public static void delete(int id) throws SQLException{
		 Connection conn = null;
	   	 Statement stmt=null;
	   	 try {
	    	 conn = DB.getConn();
	    	 stmt = DB.getStatement(conn);
	    	 String sql="delete from Application where id= "+id;
	    	 stmt.execute(sql);
	    	 System.out.print(sql);
	    	
	
	     }finally{
				DB.closeStmt(stmt);
				DB.closeConn(conn);
	     }
	  
			
	}
	
	public void update(int id){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "update Application set jobName=?,jobPlace=?,salary=?,jobTask=?,jobRequire=? where id="+id;
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setString(1, jobName);
			pStmt.setString(2, jobPlace);
			pStmt.setInt(3, salary);
			pStmt.setString(4, jobTask);
			pStmt.setString(5, jobRequire);
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
