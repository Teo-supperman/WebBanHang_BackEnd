<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dking - Tạo tài khoản</title>
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
		<div class="breadcrumb-area breadcrumb-mt">
			<div class="container">
				<div class="breadcrumb-content text-center">
					<h2>Tạo tài khoản</h2>
					<ul>
						<li><a href="${pageContext.request.contextPath}/">Trang
								chủ </a></li>
						<li><span> > </span></li>
						<li class="active">Tạo tài khoản</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="login-register-area bg-gray mt-40">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-md-12 ml-auto mr-auto">
						<div class="login-register-wrapper">
							<div class="tab-content">
								<div id="lg1" class="tab-pane active">
									<div class="login-form-container">
										<c:if test="${success!=null}">
											<div class="alert alert-success" role="alert">${success}</div>
										</c:if>
										<c:if test="${error!=null}">
											<div class="alert alert-danger" role="alert">${error}</div>
										</c:if>
										<div class="login-register-form">
											<form:form
												action="${pageContext.request.contextPath}/TaoTaiKhoan"
												modelAttribute="form">
												<form:errors path="kh.hoTen" cssStyle="color:red" />
												<form:input path="kh.hoTen" maxlength="50" placeholder="Họ tên"/>
												<form:errors path="kh.email" cssStyle="color:red" />
												<form:input path="kh.email" maxlength="50" placeholder="Email"/>
												<form:errors path="kh.soDienThoai" cssStyle="color:red" />
												<form:input path="kh.soDienThoai" maxlength="10"
													placeholder="Số Điện Thoại" />
												<form:errors path="tk.matKhau" cssStyle="color:red" />
												<form:password path="tk.matKhau"
													placeholder="Mật khẩu" />
												<form:errors path="kh.diaChi" cssStyle="color:red" />
												<form:input path="kh.diaChi" maxlength="255"
													placeholder="Địa Chỉ" />
												<div class="button-box">
													<button type="submit">Tạo tài khoản</button>
												</div>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
</body>
</html>
