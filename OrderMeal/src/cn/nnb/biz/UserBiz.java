package cn.nnb.biz;

import cn.nnb.dao.UserDao;
import cn.nnb.pojo.User;
import cn.nnb.util.Log;


public class UserBiz {
	
	public User login(String uname,String pwd) throws Exception{		
		User user = null;
		
		if(uname != null && pwd != null && !uname.equals("") && !pwd.equals("")){
			
			UserDao dao = new UserDao();
			try {
				user = dao.login(uname, pwd);
			} catch (Exception e) {
				Log.logger.error(e.getMessage());
				throw e;
			}finally{
				dao.closeResource();
			}			
			
		}
		
		return user;
	}

}
