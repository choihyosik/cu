package com.gd25.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBCon {

private static Connection con;
	
	private DBCon() {
		
		
		
	}
	
	
	
	public static Connection getConnection() throws NamingException, SQLException {
		 Context initContext = new InitialContext(); //서버의 환경 변수 설정 파일에 접근 객체
		   Context envContext  = (Context)initContext.lookup("java:/comp/env");
		   DataSource ds = (DataSource)envContext.lookup("jdbc/GD25");
		   Connection conn = ds.getConnection();
		   if(conn == null){
		   
			   return ds.getConnection(); //새로 컨넥션 객체 생성
			
		   }
		
		   return conn;
		
	}
	
	
}
