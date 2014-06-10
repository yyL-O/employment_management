package com.job.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;





public class DB {
    public static Connection getConn(){
    	Connection conn=null;
        try {
		   Class.forName("com.mysql.jdbc.Driver");
		   conn= DriverManager.getConnection("jdbc:mysql://localhost/job?user=root&password=8325652");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}catch (SQLException e) {
			e.printStackTrace();
		}
    	  return conn;
    }
    
    public static Statement getStatement(Connection conn){
    	Statement stmt =null;
    	if(conn!=null){
    		try {
				stmt=conn.createStatement();
			} catch (SQLException e) {
				e.printStackTrace();
			}
    	}
		return stmt;
    	
    }
    
    public static PreparedStatement getPStatement(Connection conn,String sql){
    	PreparedStatement pStmt =null;
    	if(conn!=null){
    		try {
				pStmt=conn.prepareStatement(sql);
			} catch (SQLException e) {
				e.printStackTrace();
			}
    	}
		return pStmt;
    	
    }
    
    public static ResultSet executeQuery(Statement stmt,String sql){
    	ResultSet rs=null;
    	if(stmt!=null){
    		try {
				rs=stmt.executeQuery(sql);
			} catch (SQLException e) {
				e.printStackTrace();
			}
    	}
		return rs;
    }
    
    public static void closeConn(Connection conn){
    	 if(conn!=null){
    		 try {
				conn.close();
				conn=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
    	 }
    }
    
    public static void closeStmt(Statement stmt){
   	    if(stmt!=null){
   		    try {
			   stmt.close();
			   stmt=null;
			} catch (SQLException e) {
				e.printStackTrace();
			 }
   	     }
    }
    
    public static void closeRs(ResultSet  rs){
    	if(rs!=null){
    		try {
				rs.close();
				rs=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}

    	}
    }
}
