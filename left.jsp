<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>导航栏</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
     <script src="bootstrap/jquery-3.4.1.min.js"></script>
   <script src="bootstrap/css/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-color:black;
}
.footer{
position:fixed;
bottom:10px;
}
</style>
<base target="_parent"/>
</head>
<body>
<div>
		<font color="white"><h2>球鞋市场</h2></font>
		<ul class="nav nav-pills nav-stacked">
		<li ><a href="#" class="tooltip-test" data-toggle="tooltip" title="JUST DO IT">NIKE</a></li>
    <li ><a href="#" class="tooltip-test" data-toggle="tooltip" title="永不止步">ANTA</a></li>
	<li ><a href="#" class="tooltip-test" data-toggle="tooltip" title="一切皆有可能">LiNing</a></li>	
</ul>
	</div>
<div class="footer"><font color="white">
账户余额：
<%
int mon;
if (session.getAttribute("a") == null) {
	mon=0;
} else {
	 mon = (Integer) session.getAttribute("a");
} %>
<%=mon%>元
<br>
<br>

<a href = "frame.jsp" target="_parent">刷新</a><br><br>
<a href = "money.jsp" target="_parent">账户充值</a><br><br>
<a href="buy.jsp">查看购物车</a><br><br>
<a href="buy.jsp?op=clear">清空购物车</a>
</font>
</div>	
</body>
</html>