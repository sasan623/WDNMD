package org.servlet;
import java.io.IOException;
import org.dao.*;
import org.model.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("gb2312");
			int id=Integer.valueOf(request.getParameter("id"));
			String name=request.getParameter("name");
			String password=request.getParameter("password");			
			request.getSession().setAttribute("u", name);
			if(new LoginDao().insertUser( id , name, password)){		
				request.getSession().setAttribute("right", "ע��ɹ�");
				response.sendRedirect("login.jsp");
			}else  {request.getSession().setAttribute("err", "�û�����id�Ѵ���");//���session����
			response.sendRedirect("register.jsp");
			}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
