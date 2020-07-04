<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%

String rightMsg=(String)session.getAttribute("right");
if( rightMsg!=null ) { %>

<div class="alert alert-success" role="alert"><%=rightMsg %></div>
<% session.removeAttribute("right");

} %>
<html>
  <head>  
    <title>User Sign in</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
     <script src="bootstrap/jquery-3.4.1.min.js"></script>
   <script src="bootstrap/css/bootstrap.min.js"></script>
  
  </head>
  
  <body  style="font-family:Microsoft YaHei" >
  <ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="login.jsp">用户登录/注册</a></li>
  <li role="presentation"><a href="adminlog.jsp">管理员登录/注册</a></li>
</ul>
  <div style="text-align:center;margin-top:120px">
  <h1 >User Sign in</h1>
  <br>
    <br>
    <br>
    <br>
    <form action="loginServlet" method="post" class="form-inline" class="form-horizontal">
    	 <div class="form-group">
    <label  class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="name"  placeholder="name">
  </div>
  </div>
  <br>
  <br>
  <br>
  <div class="form-group">
     <label  class="col-sm-2 control-label">Password</label>
     <div class="col-sm-10">
    <input type="password" class="form-control" name="password" placeholder="Password">
  </div>
  </div>
  <br>
  <br>
  <br>
  <div class="checkbox">
    <label>
      <input type="checkbox"> Remember me
    </label>
  </div>
    	<br>
        <br>
        <br>
    	<button type="submit" class="btn btn-primary">Submit</button>

    	<button type="reset" class="btn btn-primary">Reset</button> 
    </form>
    <br>
    <div id="Butten">还没有帐号?<a href="register.jsp">点此注册 !</a></div>
    </div>
   
  </body>
</html>
