<%@page import="test5.product"%>
<%@page import="test5.Product_clo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>在线购物</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
     <script src="bootstrap/jquery-3.4.1.min.js"></script>
   <script src="bootstrap/css/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-color: black;
}

img {
	width: 400px;
	height: 400px;
	no-repeat;
		background-size: cover;
}
</style>
    
</head>
<body>
    <br>
    <br>
	<jsp:useBean id="db" scope="application"
		class="test5.DataBase"></jsp:useBean>
	<form action="shopcart.jsp?op=add" method="post">
		<table>
			<tr>
				<!-- 遍历商品全部信息 -->
				<%
					String op, name, type, msg;
					int price, quantity;
					int id;
					Product_clo clo = new Product_clo();
					ArrayList<product> list = clo.getAllProduct();
					if (list != null && list.size() > 0) {
						for (int i = 0; i < list.size(); i++) {
							product pro = list.get(i);
							id = pro.getId();
							name = pro.getName();
							price = pro.getPrice(); 
							type = pro.getType();
							msg = pro.getMsg();
							quantity = pro.getQuantity();
				%><td><img alt="商品图片" src="../img/<%=pro.getPicture()%> " class="img-thumbnail"></td>
				
				<td>
				
				<font color="white"><h4>
					<dd>
						<span class="label label-danger">NEW</span>商品名称：<%=name%></dd> <br>
					<dd>
						商品价格：💰<%=price%></dd> <br>
					<dd>
						商品类型：<%=type%></dd> <br>
					<dd>
						商品介绍：<%=msg%></dd> <br>
					<dd>
						商品数量：<%=quantity%></dd> <br>
					<dd>
						
						<a href='shopcart.jsp?op=add&id=<%=id%>&name=<%=name%>&price=<%=price%>' >
						<button type="button" class="btn btn-primary">加入购物车</button>
						</a>
															
					</dd> 
</h4>
</font>
				</td>

			</tr>
			<%
				}
				}
			%>
		</table>
		<br>
	</form>

</body>
</html>