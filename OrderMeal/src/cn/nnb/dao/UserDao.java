package cn.nnb.dao;

import java.sql.ResultSet;
import java.sql.Statement;

import cn.nnb.pojo.User;
import cn.nnb.util.Log;


public class UserDao  extends BaseDao{
	
	public User login(String uname,String pwd) throws Exception{
		Log.logger.info(uname + "���ڵ�¼");
		System.out.println("uname"+uname+",pwd"+pwd);
		User user = null;
		String sql = "select * from t_user  where name = '" + uname + "' and pwd = '" + pwd +"'";
		this.openconnection();                       //���ݿ�Ĵ� 
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);  
		if(rs != null){			
			while(rs.next()){
				user = new User();
				String role = rs.getString("role");
				user.setName(uname);
				user.setPwd(pwd);
				user.setRole(role);
				Log.logger.info(uname + "��¼�ɹ�");
				break;
			}			
		}else{
			Log.logger.info(uname + "��¼ʧ��");
		}		
		
		return user;	
		
	}

}
