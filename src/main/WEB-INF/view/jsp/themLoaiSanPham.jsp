<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại sản phẩm</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
<style type="text/css">
.tg {
	border: none;
	background-color: none;
}

.tg td {
	background: none;
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	border: none;
	background-color: none;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	border: none;
	background-color: none;
	background-color: none;
}

input[type=text] {
	padding: 10px;
	width: 100%;
	height: 30px;
	font-family: tahoma;
	font-size: 16px;
	background: none;
	border-color: black;
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

.chon {
	height: 50px;
}

.chon2 {
	height: 40px;
	border: 2px solid black;
	color: black;
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
								<a href="${pageContext.request.contextPath}/"
									class="btn btn-success">TRANG CHỦ</a>
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
						<c:if test="${empty loai.tenLoaiSP}"><h1 class="text-center text-danger">THÊM MỚI LOẠI SẢN PHẨM</h1></c:if>
							<c:if test="${!empty loai.tenLoaiSP}"><h1 class="text-center text-danger">CẬP NHẬT LOẠI SẢN PHẨM</h1></c:if>
						</div>
						<!-- 						<div class="pro-head"> -->
						<!-- 							<br> -->
						<!-- 							<h2>THÊM MỚI SẢN PHẨM</h2> -->

						<!-- 						</div> -->

						<form:form action="addLoai" modelAttribute="loai" method="post">
							<table class="tg" style="width: 100%;">
<%-- 								<c:if test="${!empty loai.tenLoaiSP}"> --%>
<!-- 									<tr> -->
<%-- 										<td><form:label path="id"> --%>
<%-- 												<spring:message text="Mã loại sản phẩm"></spring:message> --%>
<%-- 											</form:label></td> --%>
<%-- 										<td><form:input path="id" size="8" readonly="true" --%>
<%-- 												disabled="true" /> <form:hidden path="id" /></td> --%>
<!-- 									</tr> -->

<%-- 								</c:if> --%>
								<tr>
									<td><form:label path="tenLoaiSP">
											<spring:message text="Tên loại sản phẩm"></spring:message>
										</form:label></td>
									<td><form:input path="tenLoaiSP" /> <form:errors
											path="tenLoaiSP" cssClass="error"></form:errors></td>
								</tr>

								<tr>
									<td colspan="2"><c:if test="${!empty loai.tenLoaiSP}">
											<input type="submit"
												value='<spring:message text="Chỉnh sửa loại sản phẩm"></spring:message>'>
										</c:if> <c:if test="${empty loai.tenLoaiSP}">
											<input type="submit"
												value='<spring:message text="Thêm loại sản phẩm"></spring:message>'>

										</c:if><input type="reset"
										value='<spring:message text="Làm mới dữ liệu"></spring:message>'
										style="background-color: midnightblue; color: white;"></td>
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
						href='<c:url value="../SanPham"></c:url>'><i
							class="fa fa-book nav_icon"></i><span>QUẢN LÝ SẢN PHẨM</span><span
							class="fa fa-angle-right" style="float: right"></span></a>
						<ul id="menu-comunicacao-sub">

							<li id="menu-arquivos"><a
								href='<c:url value="../SanPham"></c:url>'>Danh sách sản phẩm</a></li>
							<li id="menu-arquivos"><a
								href='<c:url value="../SanPham/showForm"></c:url>'>Thêm sản
									phẩm</a></li>
						</ul>
					<li id="menu-comunicacao"><a
						href='<c:url value="../DonHang"></c:url>'><i
							class="fa fa-book nav_icon"></i><span>QUẢN LÝ ĐƠN HÀNG</span><span
							class="fa fa-angle-right" style="float: right"></span></a>
					<li id="menu-comunicacao"><a
						href='<c:url value="../LoaiSanPham"></c:url>'><i
							class="fa fa-book nav_icon"></i><span>QUẢN LÝ LOẠI SẢN
								PHẨM</span><span class="fa fa-angle-right" style="float: right"></span></a>
						<ul id="menu-comunicacao-sub">

							<li id="menu-arquivos"><a
								href='<c:url value="../LoaiSanPham"></c:url>'>Danh sách loại
									sản phẩm</a></li>
							<li id="menu-arquivos"><a
								href='<c:url value="../LoaiSanPham/showForm"></c:url>'>Thêm
									loại sản phẩm</a></li>
						</ul>
					
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