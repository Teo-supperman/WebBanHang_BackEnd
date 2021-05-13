<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
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



<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/assets/js/jquery-3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#tablePerson').DataTable();
						$('.dataTables_filter')
								.append(
										"<br><br><a href='<c:url value="SanPham/showForm"></c:url>' class='btn btn-success ml-2'>Thêm sản phẩm</a><a 	href='<c:url value="./SanPham"></c:url>' class='ml-2 btn btn-warning'>Làm mới dữ liệu bảng</a><br><br>");			
					});
</script>


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
							<ul><a href="${pageContext.request.contextPath}/" class="btn btn-success">TRANG CHỦ</a></ul>
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
							<!-- 							<h1 style="text-align: center; font-weight: bold;">DANH SÁCH -->
							<!-- 								SẢN PHẨM</h1> -->
							<%-- 							<br> <a href='<c:url value="SanPham/showForm"></c:url>' --%>
							<!-- 								class="btn btn-danger btn-lg" -->
							<!-- 								style="background-color: midnightblue; padding: 20px; width: 300px; font-family: tahoma; font-weight: bold; font-size: 18pt;">Thêm -->
							<!-- 								sản phẩm</a><br> -->
							<!-- 							<br> -->
						</div>


						<!-- 						<div class="pro-head"> -->
						<!-- 							<br> -->
						<!-- 							<h2>DANH SÁCH SẢN PHẨM</h2> -->
						<!-- 						</div> -->
						<div class="container">
							<div class="col-md-12">
								<h1 class="text-center text-danger">DANH SÁCH SẢN PHẨM</h1>
								<h6 style="font-weight: bold;"
									class="text text-center text-primary">${message}</h6>
								<table id="tablePerson"
									class="table table-striped table-bordered" style="width: 100%">
									<thead>
										<tr>
											<th width="80">Mã sản phẩm</th>
											<th width="120">Tên sản phẩm</th>
											<th width="120">Hình ảnh</th>
											<th width="120">Đơn vị tính</th>
											<th width="120">Đơn giá</th>
											<th width="120">Tồn kho</th>
											<th width="120">Mô tả</th>
											<th width="120">Loại sản phẩm</th>
											<th width="120">Edit</th>
											<th width="120">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="sp" items="${sanPhamList}">
											<tr>
												<td>${sp.id}</td>
												<td><a href="<c:out value="xem/${sp.id}"></c:out>">${sp.tenSP}</a></td>
												<td><img alt=""
													src="${pageContext.request.contextPath}/assets/images/${sp.hinhURL}"
													style="width: 100px; height: 80px;"></td>
												<td>${sp.donViTinh}</td>
												<td>${sp.donGia}</td>
												<td>${sp.tonKho}</td>
												<td>${sp.moTa}</td>
												<td>${sp.loai.tenLoaiSP}</td>
												<td><a href="SanPham/edit?id=${sp.id}" class="mau1">Edit</a></td>
												<td><a
													href='<c:url value="SanPham/remove/${sp.id}"></c:url>'
													onclick="return confirm('Bạn có chắc chắn xóa sản phẩm ra khỏi hệ thống?\nLƯU Ý: Sản phẩm sẽ không được xóa nếu đã có trong đơn hàng!')"
													class="mau2" onerror="Đã xảy ra lỗi!" >Delete</a></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

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
					<li id="menu-comunicacao"><a
						href='<c:url value="LoaiSanPham"></c:url>'><i
							class="fa fa-book nav_icon"></i><span>QUẢN LÝ LOẠI SẢN
								PHẨM</span><span class="fa fa-angle-right" style="float: right"></span></a>
						<ul id="menu-comunicacao-sub">

							<li id="menu-arquivos"><a
								href='<c:url value="LoaiSanPham"></c:url>'>Danh sách loại
									sản phẩm</a></li>
							<li id="menu-arquivos"><a
								href='<c:url value="LoaiSanPham/showForm"></c:url>'>Thêm
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