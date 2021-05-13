<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html class="no-js">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dking - Đặt hàng</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">

<!-- All CSS is here
	============================================ -->

<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/vandella.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/jellybelly.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/icofont.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/vendor/fontello.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/easyzoom.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
 	-->
<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/vendor/vendor.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/plugins/plugins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/style.min.css">

</head>
<body>
	<div class="main-wrapper main-wrapper-3">
		<jsp:include page="_header.jsp"></jsp:include>
		<div class="breadcrumb-area breadcrumb-mt ">
			<div class="container">
				<div class="breadcrumb-content">
					<h2>Đặt hàng</h2>
					<ul>
						<li><a href="${pageContext.request.contextPath}/">Trang
								chủ </a></li>
						<li><span> > </span></li>
						<li class="active">Đặt hàng</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="checkout-area bg-gray ">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="payment-details mb-40">
							<h4 class="checkout-title">Thông tin giao hàng</h4>
							<ul>
								<li>Họ tên: <input readonly="readonly" type="text" required="" placeholder="Họ tên"
									name="hoTen" value="${kh.hoTen}"></li>
								<li>Số điện thoại: <input type="text" required="" placeholder="Số điện thoại"
									name="soDienThoai" readonly="readonly" value="${kh.soDienThoai}"></li>
								<li>Địa chỉ: <input type="text" required="" placeholder="Địa chỉ"
												name="diaChi" readonly="readonly" value="${kh.diaChi}"></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="payment-details">
							<h4 class="checkout-title">Thông tin thanh toán</h4>
							<ul>
							<li>Chi tiết đơn hàng:</li>
							<c:forEach var="item" items="${cart.dsSP}">
								<li><b>${item.tenSP}</b> x ${item.soLuong} ${sp.donViTinh}</li>
							</c:forEach>
								<li>Hình thức thanh toán: <span>Thanh toán khi nhận
										hàng</span></li>
							</ul>
							<div class="total-order">
								<ul>
									<li>Tổng tiền <span>${cart.tongTien}đ</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="back-continue-wrap">
					<a href="${pageContext.request.contextPath}/GioHang">Quay lại giỏ hàng</a> <a href="${pageContext.request.contextPath}/DatHang/XacNhan">Xác nhận đặt hàng</a>
				</div>
			</div>
		</div>
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
</body>
</html>