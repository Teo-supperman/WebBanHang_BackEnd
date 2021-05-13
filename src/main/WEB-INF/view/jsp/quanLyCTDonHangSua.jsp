<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEBSITE QUẢN LÝ</title>

<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

input[type=text] {
	padding: 10px;
	width: 400px;
	height: 30px;
	font-family: tahoma;
	font-size: 16px;
	background: none;
}

input[type=submit] {
	background-color: seagreen;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.but1 {
	background-color: midnightblue;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
}

.mau1 {
	color: blue;
	font-weight: bold;
	font-size: 16px;
	font-family: Arial Narrow;
}

.mau2 {
	color: red;
	font-family: Arial Narrow;
	font-weight: bold;
	font-size: 16px;
}

.error {
	color: red;
}
</style>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />
<script type="application/x-javascript">
	
	
	
	
	

	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 






</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all">

<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!--js-->
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-2.1.1.min.js"></script>
<!--icons-css-->
<link
	href="${pageContext.request.contextPath}/assets/css/font-awesome.css"
	rel="stylesheet">


</head>
<body>
	<div class="page-container">
		<div class="left-content">
			<div class="mother-grid-inner">
				<!--header start here-->
				<div class="header-main">
					<div class="header-left">
						<div class="logo-name">
							<a href='<c:url value="/QuanLyCuaHang/"></c:url>'>
								<h1>DKING</h1> <!--<img id="logo" src="" alt="Logo"/>-->
							</a>
						</div>

						<div class="clearfix"></div>
					</div>
					<div class="header-right">

						<!--notification menu end -->
						<div class="profile_details">
							<ul>
								<li class="dropdown profile_details_drop"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="false">
										<div class="profile_img">
											<span class="prfil-img"><img
												src="${pageContext.request.contextPath}/assets/images/p1.png"
												alt=""> </span>
											<div class="user-name">
												<p>NGUYEN TRI TIN</p>
												<span>Administrator</span>
											</div>
											<i class="fa fa-angle-down lnr"></i> <i
												class="fa fa-angle-up lnr"></i>
											<div class="clearfix"></div>
										</div>
								</a>
									<ul class="dropdown-menu drp-mnu">
										<li><a href="#"><i class="fa fa-cog"></i> Cài đặt</a></li>
										<li><a href="#"><i class="fa fa-user"></i> Thông tin
												cá nhân</a></li>
										<li><a href="#"><i class="fa fa-sign-out"></i> Đăng
												Xuất</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!--heder end here-->
				<!-- script-for sticky-nav -->
				<script>
					$(document).ready(function() {
						var navoffeset = $(".header-main").offset().top;
						$(window).scroll(function() {
							var scrollpos = $(window).scrollTop();
							if (scrollpos >= navoffeset) {
								$(".header-main").addClass("fixed");
							} else {
								$(".header-main").removeClass("fixed");
							}
						});

					});
				</script>
				<!-- /script-for sticky-nav -->
				<!--inner block start here-->
				<div class="inner-block">
					<div class="product-block">
						<div class="pro-head">
							<h1 style="text-align: center; font-weight: bold;">CẬP NHẬT
								SỐ LƯỢNG MẶT HÀNG</h1>
							<a href='<c:url value="CTDonHang?id=${maDon }"></c:url>'
								class="btn btn-danger"
								style="padding: 10px; width: 200px; height: 60px; font-family: arial; font-weight: bold; font-size: 20pt;">QUAY
								VỀ</a>
						</div>
						<div class="pro-head">
							<br>
							<h2>MÃ ĐƠN HÀNG: ${ma }</h2>
						</div>
						<form:form action="editCT" modelAttribute="ctdon" method="POST">
							<table class="tg">

								<tr>
									<td><form:hidden path="id"/><form:label path="soLuong">
											<spring:message text="Số lượng mới"></spring:message>
										</form:label></td>
									<td><form:input path="soLuong" size="8" /> <form:hidden
											path="soLuong" /></td>
								</tr>
								<tr>
									<td><form:label path="sp">
											<spring:message text="Tên sản phẩm"></spring:message>
										</form:label></td>
									<td><form:input path="sp.tenSP" size="8" readonly="true"
											disabled="true" /> <form:hidden path="sp" /></td>
								</tr>
								<tr>

									<td colspan="2">
										<input type="submit" value="Cập nhật">
									</td>
								</tr>
							</table>
						</form:form>

						<div class="clearfix"></div>
					</div>
				</div>
				<!--inner block end here-->
				<link rel="stylesheet" type="text/css"
					href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/assets/js/nivo-lightbox.min.js"></script>
				<script type="text/javascript">
					$(document).ready(function() {
						$('#nivo-lightbox-demo a').nivoLightbox({
							effect : 'fade'
						});
					});
				</script>

				<!--copy rights start here-->
				<div class="copyrights">
					<p>© 2020 DKing. All Rights Reserved | Design by DKing</p>
				</div>
				<!--COPY rights end here-->
			</div>
		</div>
		<!--slider menu-->
		<div class="sidebar-menu">
			<div class="logo">
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
				</a> <a href="#"> <span id="logo"></span> <!--<img id="logo" src="" alt="Logo"/>-->
				</a>
			</div>
			<div class="menu">
				<ul id="menu">

					<li id="menu-comunicacao"><a
						href='<c:url value="SanPham"></c:url>'><i
							class="fa fa-book nav_icon"></i><span>QUẢN LÝ SẢN PHẨM</span><span
							class="fa fa-angle-right" style="float: right"></span></a>
						<ul id="menu-comunicacao-sub">

							<li id="menu-arquivos"><a
								href='<c:url value="./SanPham"></c:url>'>Danh sách sản phẩm</a></li>
							<li id="menu-arquivos"><a
								href='<c:url value="./SanPham/showForm"></c:url>'>Thêm sản
									phẩm</a></li>
						</ul>
					<li id="menu-comunicacao"><a
						href='<c:url value="DonHang"></c:url>'><i
							class="fa fa-book nav_icon"></i><span>QUẢN LÝ ĐƠN HÀNG</span><span
							class="fa fa-angle-right" style="float: right"></span></a>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--slide bar menu end here-->
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}
					toggle = !toggle;
				});
	</script>
	<!--scrolling js-->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.nicescroll.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js">
		
	</script>
	<!-- mother grid end here-->
</body>
</html>