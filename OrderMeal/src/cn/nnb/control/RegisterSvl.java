package cn.nnb.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.nnb.biz.UserBiz;
import cn.nnb.pojo.User;
import cn.nnb.util.Log;

public class RegisterSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegisterSvl() {
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
		String conpwd = request.getParameter("conpwd");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		if(uname!=null && pwd !=null && !uname.equals("") && !pwd.equals("")){
			UserBiz biz = new UserBiz();
			try {
				User user = biz.login(uname, pwd);
				if(user != null){
					request.getSession().setAttribute("user",user);
					request.getSession().setAttribute("uname", user.getName());
		//			BookBiz bkbiz=new BookBiz();
		//			List<Book> bklist=bkbiz.getAllBook();
		//			request.setAttribute("booklist", bklist);
		//			for (Book book : bklist) {
		//				System.out.println(book.getBname()+"++++"+book.getAuthor());
						
		//			}

						request.getRequestDispatcher("main/index.jsp").forward(request, response);
					
				}else{
					request.setAttribute("errMsg","��¼ʧ�ܣ������û����������Ƿ���ȷ");
					request.getRequestDispatcher("main/login.jsp").forward(request, response);
				}
			} catch (Exception e) {
				Log.logger.error(e.getMessage());
				request.setAttribute("errMsg","ϵͳ��æ�����Ժ�����");
				//request.getRequestDispatcher("/error.jsp").forward(request, response);
				request.getRequestDispatcher("main/login.jsp").forward(request, response);

			}			
		}else{
			request.setAttribute("errMsg","�û��������룬����Ϊ��");
			System.out.println(uname+pwd);
			request.getRequestDispatcher("main/login.jsp").forward(request, response);

			//request.getRequestDispatcher("/error.jsp").forward(request, response);
			
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
