<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="org.model.MessBoar" %>
<%@page import="org.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
     <script src="bootstrap/jquery-3.4.1.min.js"></script>
   <script src="bootstrap/css/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-color: black;
}
</style>
</head> 
<body>	
  <%
  %>
<marquee behavior="alternate" direction="right" align="left" bgcolor=“white” height="30" width="1800" 
loop="3" scrollamount="10" hspace="5" vspace="5"onMouseOut="this.start()" onMouseOver="this.stop()">
	<font size="+2" color=white><b><i>欢 迎 来 到 潮 鞋 旗 舰 店 ! </b></i></font>
	</marquee>	
	<br>
	<form action="Search.jsp">
	<h4><span class="label label-info">潮鞋</span></h4>
	<br>
		 <div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="查 询...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Search!</button>
      </span>
    </div>
  </div>

 
	</form>
</body>
</html>