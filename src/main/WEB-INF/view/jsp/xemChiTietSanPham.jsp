<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html class="no-js">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dking - Chi tiết/ Đặt hàng sản phẩm</title>
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
	src="${pageContext.request.contextPath}/assets/js/table.js"></script>
	<script
	src="${pageContext.request.contextPath}/assets/js/paginator.js"></script>
	<script
	src="${pageContext.request.contextPath}/assets/js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="main-wrapper main-wrapper-3">
		<jsp:include page="_header.jsp"></jsp:include>
		<div class="product-details-area product-details-bg slider-mt-7">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-12">
						<div class="product-details-tab-wrap">
							<div
								class="product-details-tab-large tab-content pt-40 text-center">
								<div class="tab-pane active" id="pro-details1">
									<div class="product-details-2-img ">
										<img
											src="${pageContext.request.contextPath}/assets/images/${sp.hinhURL}"
											alt="">
									</div>
								</div>
								
							</div>
							<div class="product-details-tab-small nav">
								<a class="active" href="#pro-details1"> <img
									src="${pageContext.request.contextPath}/assets/images/${sp.hinhURL}" alt="">
								</a> 
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-12">
						<div class="product-details-content main-product-details-content">
							<h2>${sp.tenSP}</h2>
							
							<div class="pro-details-price">
								<span>${sp.donGia}đ</span>
							</div>
							<c:if test="${sp.tonKho>0}">
								<form id="them" action="${pageContext.request.contextPath}/GioHang/Them" method="POST">
									<div class="pro-details-quality">
										<span>Số lượng:</span>
										<!-- <div class="cart-plus-minus">
											<input required="required" id="soLuong" class="cart-plus-minus-box" type="text" name="soLuong"
												onkeypress="validate(event)"
												value="1">
										</div> -->
										
										<div class="giohang1">
										
										<input required="required" id="soLuong" name="soLuong" value="1"
												onkeypress="validate(event)" type="number" max="${sp.tonKho}" min="1" style="width: 100">
										
												<input type="text" id="tonkhoo" value="${sp.tonKho}" hidden="true">
												
										</div>
										
										<script type="text/javascript">
										
											var tonkho =document.getElementById("tonkhoo").value;
											
											
											$( "#soLuong" ).keyup(function() {
												
												var soLuong = $("#soLuong").val();
												var test = parseInt(soLuong, 10);
												
												if(test > tonkho){
										        	$("#soLuong").val(tonkho);
										        	
												}else if(test == 0){
													$("#soLuong").val("1");
												}
											});
											
												/* $("#soLuong").click(function(){
													soLuong = $("#soLuong").val();
													var test = parseInt(soLuong, 10);
													alert(soLuong);
											        if(soLuong > tonkho){
											        	$("#soLuong").val(tonkho);
											        	alert("loi");
													}
											        else{
													
													}
											   	     
											    }); */
												
												
													/* var soLuong=$("#soLuong").val();
													var tonkho =document.getElementById("tonkhoo").value;
													
													
													$('.giohang1').on('click', function(e) {
														alert(soLuong +" - "+ tonkho); */
														/* if(soLuong < tonkho){
															e.preventDefault();
															$('.qtybutton').click(false);
														    $('.qtybutton').attr('disabled', true); 
														   $(this).click(false);
														}else{
															e.preventDefault();
														      $('.qtybutton').attr('disabled', false);
															$('.qtybutton').click(true);
														} */
													    
													/* }); */
												</script>
										
									</div>
									<div class="product-details-meta">
										<ul>
											<li><span>Còn lại:</span> ${sp.tonKho}</li>
											<li><span>Đơn vị tính:</span> ${sp.donViTinh}</li>
										</ul>
									</div>
									<div class="pro-details-action-wrap">
										<div class="pro-details-buy-now">
											<input type="hidden" name="id" value="${sp.id}"> <a
												title="Add to Cart" href="#"
												onclick="document.getElementById('them').submit();">Thêm
												vào giỏ hàng</a>
										</div>
									</div>
								</form>
							</c:if>
							<c:if test="${sp.tonKho==0}">
								<div class="product-details-meta">
									<ul>
										<li><span>Tình trạng:</span> Hết hàng</li>
									</ul>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="description-review-wrapper pt-160 pb-155">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="dec-review-topbar nav mb-65">
							<a class="active" data-toggle="tab" href="#des-details1">Mô
								tả</a>
						</div>
						<div class="tab-content dec-review-bottom">
							<div id="des-details1" class="tab-pane active">
								<div class="description-wrap">
									<p>${sp.moTa}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="_footer.jsp"></jsp:include>
		<script type="text/javascript">
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
	</div>
</body>
</html>