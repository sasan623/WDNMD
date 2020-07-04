<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>支付界面</title>

<style>
body {
	width: 400px;
	padding: 250px;
	text-align: center;
	margin: auto;
}

div {
	font-size: 20px;
}
</style>
</head>
<body>

	<%
		Integer a = (Integer) session.getAttribute("a");//账户余额
		Integer total = (Integer) session.getAttribute("total");//支付金额
		if (session.getAttribute("a") == null) {
			a = 0;
		} 
		if ( a >= total) {
			a = a - total;
			session.setAttribute("a", a);
	%><dd>
	<div class="alert alert-success" role="alert">支付成功！生成订单中...</div></dd><br>
	<%
		response.setHeader("Refresh", "3;url=order.jsp"); //3秒跳转到支付订单
		} else {
	%>
	<div class="alert alert-danger" role="alert"><h3>
		余额不足！请充值或者返回购物车</h3><br>
		<br> <a href="money.jsp" target="_parent"><button type="button" class="btn btn-primary">账户充值</button></a> <br> <br>
		<a href="buy.jsp"><button type="button" class="btn btn-primary">返回购物车</button></a> <br> <br>
	</div>
	<%
		}
	%>
</body>
</html>