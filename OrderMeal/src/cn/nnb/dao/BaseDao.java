package cn.nnb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import cn.nnb.util.Log;




public class BaseDao {
	
	protected Connection conn;                //���ݿ����Ӿ��
	
	/*
	 * ��ȡ���ݿ�����
	 */
	protected void openconnection() throws ClassNotFoundException,SQLException{		
		try {
			if( conn == null || conn.isClosed() ){
				Class.forName("oracle.jdbc.driver.OracleDriver");  //ʹ�÷��似����̬�������ݿ������
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
