package cn.nnb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import cn.nnb.util.Log;




public class BaseDao {
	
	protected Connection conn;                //数据库连接句柄
	
	/*
	 * 获取数据库连接
	 */
	protected void openconnection() throws ClassNotFoundException,SQLException{		
		try {
			if( conn == null || conn.isClosed() ){
				Class.forName("oracle.jdbc.driver.OracleDriver");  //使用反射技术动态加载数据库的驱动
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl01","nb","nb");
			}			
		} catch (ClassNotFoundException e) {
			Log.logger.error(e.getMessage());
		    throw e;
		} catch (SQLException e) {	
			Log.logger.error(e.getMessage());
			throw e;
		}
	}	
	
	public void closeResource(){
		
		if(conn != null){
			try {
				conn.close();
				conn = null;
			} catch (Exception e) {
				Log.logger.error(e.getMessage());
			}			
		}		
	}
	
	public void beginTransaction() throws Exception{
		if(conn != null){
			conn.setAutoCommit(false);
		}
			
	}
	
	public void commit() throws Exception{
		if(conn != null){
			conn.commit();
		}	
	}
	
	public void rollback() throws Exception{
		if(conn != null){
			conn.rollback();
		}
		
	}
	
	

}
