<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
	<div class="span-2c">
		<c:forEach var="item" items="${listReceipt}">${item.time }</c:forEach>
		<h3 class="tlt">Bar Chart</h3>
		<%-- 		<canvas id="bar" height="300" width="400" --%>
		<%-- 			style="width: 400px; height: 300px;"></canvas> --%>
		<%-- 		<c:forEach var="item" items="${listReceipt}">${item.time }</c:forEach> --%>
		<canvas id="myCanvas" width="200" height="100"
			style="border: 1px solid #d3d3d3;">
Your browser does not support the HTML canvas tag.</canvas>

		<script>
			var c = document.getElementById("myCanvas");
			var ctx = c.getContext("2d");
			ctx.beginPath();
			ctx.arc(95, 50, 40, 0, 2 * Math.PI);
			ctx.stroke();
		</script>
	</div>
</body>
</html>