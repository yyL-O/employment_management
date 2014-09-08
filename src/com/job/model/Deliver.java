package com.job.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;

import com.job.DB.DB;

public class Deliver {
	private int deliverId;
    private int id;
    private int userId;
	private int companyId;
    private String jobPlace;
	private String companyName;
    private String jobName;
    private String userName;
    private Timestamp deliverTime;
    private String state;
    
    
    public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
    public String getJobPlace() {
		return jobPlace;
	}
	public void setJobPlace(String jobPlace) {
		this.jobPlace = jobPlace;
	}
    public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

    public int getDeliverId() {
	    return deliverId;
	}
	public void setDeliverId(int deliverId) {
		this.deliverId = deliverId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUerId(int userId) {
		this.userId = userId;
	}
	
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Timestamp getDeliverTime() {
		return deliverTime;
	}
	public void setDeliverTime(Timestamp deliverTime) {
		this.deliverTime = deliverTime;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public void save(){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "insert into deliver values(null,?,?,?,?,?,?,?,?,?)";
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setInt(1,id);
			pStmt.setInt(2,userId);
			pStmt.setString(3,companyName);
			pStmt.setString(4,jobName);
			pStmt.setString(5,userName);
			pStmt.setTimestamp(6,deliverTime);
			pStmt.setString(7,state);
			pStmt.setString(8, jobPlace);
			pStmt.setInt(9, companyId);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
	  }finally{
		  DB.closeStmt(pStmt);
		  DB.closeConn(conn);
	  }
	  
		
	}
	

	
	public static int getUserDeliver(List<Deliver> Delivers,int pageNo,int pageSize,int userId){
		 int pageCount =0; 
		 Connection conn = null;
	   	 Statement stmt=null;
	   	 ResultSet rs = null;
	   	 ResultSet rsCount =null;
	   	 try {
		    	 conn = DB.getConn();
		    	 stmt = DB.getStatement(conn);
		    	 rsCount = DB.executeQuery(stmt, "select count(*) from Deliver where userId="+userId);
		    	 rsCount.next();
		    	 pageCount = (rsCount.getInt(1)+pageSize-1)/pageSize;
		    	 String sql="select * from Deliver where userId="+userId+ " limit "+(pageNo-1)*pageSize+","+pageSize;
		    	 //System.out.print(sql);
		    	 rs = DB.executeQuery(stmt,sql);
		    	 while(rs.next()){
					 Deliver d = new Deliver();
					 d.setDeliverId(rs.getInt("DeliverId"));
					 d.setId(rs.getInt("id"));
					 d.setJobName(rs.getString("jobName"));
					 d.setUserName(rs.getString("userName"));
					 d.setCompanyName(rs.getString("companyName"));
					 d.setUerId(rs.getInt("userId"));
					 d.setDeliverTime(rs.getTimestamp("deliverTime"));
					 d.setState(rs.getString("state"));
					 d.setJobPlace(rs.getString("jobPlace"));
					 d.setCompanyId(rs.getInt("companyId"));
					 Delivers.add(d);
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
	
	public static int getCompanyDeliver(List<Deliver> Delivers,int pageNo,int pageSize,int companyId){
		 int pageCount =0; 
		 Connection conn = null;
	   	 Statement stmt=null;
	   	 ResultSet rs = null;
	   	 ResultSet rsCount =null;
	   	 try {
		    	 conn = DB.getConn();
		    	 stmt = DB.getStatement(conn);
		    	 rsCount = DB.executeQuery(stmt, "select count(*) from Deliver where companyId="+companyId);
		    	 rsCount.next();
		    	 pageCount = (rsCount.getInt(1)+pageSize-1)/pageSize;
		    	 String sql="select * from Deliver where companyId="+companyId+ " limit "+(pageNo-1)*pageSize+","+pageSize;
		    	 rs = DB.executeQuery(stmt,sql);
		    	 while(rs.next()){
					 Deliver d = new Deliver();
					 d.setDeliverId(rs.getInt("DeliverId"));
					 d.setId(rs.getInt("id"));
					 d.setJobName(rs.getString("jobName"));
					 d.setUserName(rs.getString("userName"));
					 d.setCompanyName(rs.getString("companyName"));
					 d.setUerId(rs.getInt("userId"));
					 d.setDeliverTime(rs.getTimestamp("deliverTime"));
					 d.setState(rs.getString("state"));
					 d.setJobPlace(rs.getString("jobPlace"));
					 d.setCompanyId(rs.getInt("companyId"));
					 Delivers.add(d);
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
	
	public void update(int deliverId){
		Connection conn =null;
		Statement stmt = null;
		PreparedStatement  pStmt=null;
	  try{
		 conn = DB.getConn();
	     stmt = DB.getStatement(conn);
		 String sql = "update deliver set state=? where deliverId="+deliverId;
		 System.out.println(sql);
		 pStmt = DB.getPStatement(conn, sql);
		 try {
			pStmt.setString(1, state);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		 
	  }finally{
		  DB.closeStmt(pStmt);
		  DB.closeConn(conn);
	  }
	  
		
	}
	
	public static Deliver getDeliver(int deliverId){
		 Connection conn = null;
	   	 Statement stmt=null;
	   	 ResultSet rs = null;
	   	 Deliver d = new Deliver();
	   	 try {
		    	 conn = DB.getConn();
		    	 stmt = DB.getStatement(conn);
		    	 String sql="select state from deliver where deliverId= "+deliverId;
		    	 rs = DB.executeQuery(stmt,sql);
		    	 rs.next();
		    	 
				 d.setState(rs.getString("state"));
				 
				 
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally{
				DB.closeRs(rs);
				DB.closeStmt(stmt);
				DB.closeConn(conn);
			}
	  
			return d;
			
		}
	
}
