package org.servlet;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.model.*;
import org.dao.*;

public class LoginServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		request.setCharacterEncoding("gb2312");           //设置请求编码
		response.setContentType("gb2312");                //设置响应编码
		LoginDao loginDao= new LoginDao();
		HttpSession session=request.getSession();         // 先获得user对象，如果是第一次访问该Servlet，用户对象肯定为空，但如果是第
		Login l=(Login) session.getAttribute("login");    // 二次甚至是第三次，就不应该再判断该用户的信息
		if(l==null)
			l = loginDao.checkLogin(request.getParameter("name"),request.getParameter("password"));
		if(l!=null){                                      //如果登陆成功
			session.setAttribute("login",l);              //将获取的对象保存在session中
			ArrayList al=loginDao.findMbInfo();           //获取留言板的内容，返回一个数组
			session.setAttribute("al", al);             //把数组保存起来
			response.sendRedirect("test5/frame.jsp");            //验证成功跳转到 main.jsp
		}
		else{                                             //验证失败跳转到 error.jsp
			response.sendRedirect("error.jsp");
		}
		}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		doGet(request,response);
	}
}
