<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html class="no-js">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dking - Giỏ hàng</title>
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
	<script
	src="${pageContext.request.contextPath}/assets/js/jquery-3.4.1.min.js"></script>

</head>
<body>
	<div class="main-wrapper main-wrapper-3">
		<jsp:include page="_header.jsp"></jsp:include>
		<div class="breadcrumb-area breadcrumb-mt ">
			<div class="container">
				<div class="breadcrumb-content">
					<h2>Giỏ hàng</h2>
					<ul>
						<li><a href="${pageContext.request.contextPath}/">Trang
								chủ </a></li>
						<li><span> > </span></li>
						<li class="active">Giỏ hàng</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="cart-area bg-gray ">
			<div class="container">
				<div class="cart-table-content">
					<c:if test="${error!=null}">
						<div class="alert alert-danger" role="alert">${error}</div>
					</c:if>
					<div class="table-content table-responsive">
						<table>
							<thead>
								<tr>
									<th>Sản phẩm</th>
									<th class="th-text-center">Đơn giá</th>
									<th class="th-text-center">Số lượng</th>
									<th class="th-text-center">Tổng tiền</th>
									<th class="th-text-center">Xóa</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${cart!=null && cart.lineItemCount>0}">
									<c:forEach items="${cart.dsSP}" var="sp" varStatus="counter">
										<tr>
											<td class="cart-product">
												<div class="product-img-info-wrap">
													<div class="product-img">
														<a href="#"><img
															src="${pageContext.request.contextPath}/assets/images/${sp.hinhURL}"
															alt=""></a>
													</div>
													<div class="product-info">
														<h4>
															<a href="#">${sp.tenSP}</a>
														</h4>
														<span>Đơn vị tính: ${sp.donViTinh}</span>
													</div>
												</div>
											</td>
												<td class="product-price"><span class="amount">${sp.giaTien}đ</span></td>
											<td class="cart-quality">
												<div class="pro-details-quality">
													<div>
													
													
														<form id="capNhat"
															action="${pageContext.request.contextPath}/GioHang/CapNhat">
															<input id="soLuong"
																type="text" name="soLuong" onkeypress="validate(event)" value="${sp.soLuong}" min="1">
															
															<input type="text" id="tonkhoo" value="${sp.tonKho}" hidden="true">
															
															<input type="hidden" name="index"
																value="${counter.count}" />
																<button type="submit">Cập nhật</button>
														</form>
														
														
													<script type="text/javascript">
														var tonkho =document.getElementById("tonkhoo").value;
														$( "#soLuong" ).keyup(function() {
															var soLuong = $("#soLuong").val();
															var test = parseInt(soLuong, 10);
															if(test > tonkho){
													        	$("#soLuong").val(tonkho);
															}
														});
													</script>
														
														
														
													</div>
												</div>
											</td>
										
											<td class="product-total"><span>${sp.tongTien}đ</span></td>
											<td class="product-remove"><a
												onclick="return confirm('Bạn có chắc chắn muốn xóa?')"
												href="${pageContext.request.contextPath}/GioHang/Xoa?index=${counter.count}"><img
													class="inject-me" src="assets/images/icon-img/close.svg"
													alt=""></a></td>
										</tr>
									</c:forEach>
									<tr>
										<td class="text-right" colspan="4">Tổng tiền:</td>
										<td class="text-center" colspan="2">${cart.tongTien}đ</td>
									</tr>
								</c:if>

							</tbody>
						</table>
					</div>
					<div class="proceed-btn">
						<a href="${pageContext.request.contextPath}/DatHang">Đặt hàng</a>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
		function update() {
			var capNhat = document.getElementById("capNhat");
			capNhat.submit();
		}
		function validate(evt) {
			var theEvent = evt || window.event;
			var key = theEvent.keyCode || theEvent.which;
			key = String.fromCharCode(key);
			var regex = /[0-9]/;
			if (!regex.test(key)) {
				theEvent.returnValue = false;
				if (theEvent.preventDefault)
					theEvent.preventDefault();
			}
		}
	</script>
</body>
</html>