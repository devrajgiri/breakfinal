package org.nwo.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

public class TableService {
	 boolean rvalue;
		
	public boolean createTable(String email) {
		
		 // JDBC driver name and database URL
			final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
		    final String DB_URL = "jdbc:mysql://localhost/"+email;

		   //  Database credentials
		    final String USER = "root";
		    final String PASS = "located";
		    
		    String dbName=email;
		   
		   Connection conn = null;
		   Statement stmt = null;
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName("com.mysql.jdbc.Driver");

		      //STEP 3: Open a connection
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);

		      //STEP 4: Execute a query
		      System.out.println("Creating database...");
		      stmt = conn.createStatement();
		      
		     
		    	  String sql1 = "CREATE TABLE user" +
                  "(id INTEGER not NULL, " +
                  " username VARCHAR(255), " + 
                  " email VARCHAR(255), " + 
                  " PRIMARY KEY ( id ))";
		    	  stmt.executeUpdate(sql1);
		    	  System.out.println("tables created");
		      	  
		      
		    
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		   System.out.println("Goodbye!");
		   return rvalue;
		   
		}//end main
	
	
		}//end JDBCExample


	

