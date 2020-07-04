<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%

String errMsg=(String)session.getAttribute("err");

if( errMsg!=null ) { %>

<div class="alert alert-danger" role="alert"><%=errMsg %></div>

<% session.removeAttribute("err");

} %>
<html>
  <head>  
    <title>用户注册界面</title> 
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
     <script src="bootstrap/jquery-3.4.1.min.js"></script>
   <script src="bootstrap/css/bootstrap.min.js"></script>
  </head>
  
  <body class=body style="font-family:Microsoft YaHei" >
  <div style="text-align:center;margin-top:120px">
    <h1 >User Register</h1>
    <br>
    <br>
    <br>
    <br>
    <br>
    <form action="registerServlet" method="post"  class="form-inline" class="form-horizontal">   	
    <div class="form-group">
    <label  class="col-sm-2 control-label">Id</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="id"  placeholder="id">
  </div>
  </div>
  <br>
  <br>
  <br>  		
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
    	<br>
    	<button type="submit" class="btn btn-primary">Submit</button>
    	<button type="reset" class="btn btn-primary">Reset</button>
    </form>
    <br>
    <a href="login.jsp">回到登录</a>
    <br>
    <br>
       点击 “Submit” 按钮，即表示您同意并愿意遵守 <a href="yonghuxieyi.jsp">用户协议</a>。
    </div>
  </body>
</html>

