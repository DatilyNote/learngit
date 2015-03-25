package cn.nnb.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.nnb.biz.UserBiz;
import cn.nnb.pojo.User;
import cn.nnb.util.Log;

public class LoginSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginSvl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		String uname = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		if(uname!=null && pwd !=null && !uname.equals("") && !pwd.equals("")){
			UserBiz biz = new UserBiz();
			try {
				User user = biz.login(uname, pwd);
				if(user != null){
					request.getSession().setAttribute("user",user);
		//			BookBiz bkbiz=new BookBiz();
		//			List<Book> bklist=bkbiz.getAllBook();
		//			request.setAttribute("booklist", bklist);
		//			for (Book book : bklist) {
		//				System.out.println(book.getBname()+"++++"+book.getAuthor());
						
		//			}
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				}else{
					request.setAttribute("msg","登录失败，请检查用户名、密码是否正确");
					request.getRequestDispatcher("/error.jsp").forward(request, response);
				}
			} catch (Exception e) {
				Log.logger.error(e.getMessage());
				request.setAttribute("errMsg","系统繁忙，请稍后连接");
				request.getRequestDispatcher("/error.jsp").forward(request, response);
			}			
		}else{
			request.setAttribute("errMsg","用户名或密码，不能为空");
			System.out.println(uname+pwd);
			request.getRequestDispatcher("/error.jsp").forward(request, response);
			
		}
		
	}

	
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
