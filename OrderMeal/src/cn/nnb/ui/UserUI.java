package cn.nnb.ui;

import cn.nnb.biz.UserBiz;
import cn.nnb.pojo.User;


public class UserUI {
	public User login(String uname,String pwd){
		User user=null;
		UserBiz biz=new UserBiz();
		try {
			user=biz.login(uname, pwd);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
		
		return user;
		
	}
	
	
	public static void main(String []args){
		
		UserUI ui=new UserUI();
		User user=ui.login("admin", "123");
		if(user !=null)
		{
			System.out.println(user.getName()+"登陆成功，他的角色是"+user.getRole());
		}
		else{
			System.out.println("用户名或密码错误");
		}
	}

}
