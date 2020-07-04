<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" import="java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>账户充值</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
     <script src="bootstrap/jquery-3.4.1.min.js"></script>
   <script src="bootstrap/css/bootstrap.min.js"></script>
<style type="text/css">
body {
	width: 400px;
	padding: 250px;
	text-align: center;
	margin: auto;
}

</style>

</head>
<body>
	<form method="post" action="">
		<table align="center">
		<td>
		<dd>
			<span style="font-size: 20px">充值金额：</span></dd><br>
			
		<dd>	
			<input style="font-size: 20px" type="text" name="a" size=15
				maxlength="15" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')"></dd><br>
		<dd>		
			<input type="submit" value="确认充值" class="btn btn-success"></dd><br>
			
		

		<%
			int mo;int mon;
			if (session.getAttribute("a") == null) {
				mo = 0;mon=0;
			} else {
				 mo = (Integer) session.getAttribute("a");
			}
			String a = request.getParameter("a");//	取得文本框的值
			if (a == null || a == "") {
				a = "0";
			}
			mon = Integer.parseInt(a);
			mon = mon + mo;%><div class="alert alert-success" role="alert">成功添加<%=a %>元</div>
			<%session.setAttribute("a", mon); %>
		
		
	 <span style="font-size: 20px">账户余额：<%=mon%></span>
	 <br>
	 <br>
		<span style="font-size: 20px"><a href="frame.jsp" name="g"><button type="button" class="btn btn-primary">继续购物</button></a></span>
	<br>
	<br>
	<span style="font-size: 20px"><a href="buy.jsp" name="f"><button type="button" class="btn btn-primary">返回购物车</button></a></span>
	</td>
	</table>
	</form>
</body>
</html>