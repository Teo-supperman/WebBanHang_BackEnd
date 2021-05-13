<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<header class="header-area section-padding-1 transparent-bar">
	<div class="header-large-device">
		<div class="header-bottom sticky-bar">
			<div class="container-fluid">
				<div class="header-bottom-flex">
					<div class="logo-menu-wrap">
						<div class="logo">
							<a href="${pageContext.request.contextPath}/"> <img
								src="${pageContext.request.contextPath}/assets/images/logo/logo-2.png"
								alt="logo">
							</a>
						</div>
						<div class="main-menu menu-lh-1 main-menu-padding-1 menu-mrg-1">
							<nav>
								<ul>
									<li><a href="${pageContext.request.contextPath}/">Trang
											chủ</a></li>
									<c:if test="${pageContext.request.userPrincipal.name == null}">
										<li><a href="${pageContext.request.contextPath}/DangNhap">Đăng
												nhập</a></li>
										<li><a
											href="${pageContext.request.contextPath}/TaoTaiKhoan">Tạo
												tài khoản</a></li>
									</c:if>
									<c:if test="${pageContext.request.userPrincipal.name != null}">
										 <sec:authorize access="hasRole('ROLE_ADMIN')">
										<li><a
											href="${pageContext.request.contextPath}/QuanLyCuaHang/">Quản
												lý cửa hàng</a></li>
											</sec:authorize>
										<li>Xin chào, ${pageContext.request.userPrincipal.name} !</li>
										<li><a href="#"
											onclick="document.getElementById('logout').submit();"><i
												class="icofont-logout"></i>Đăng xuất </a></li>
										<form id="logout" method="post"
											action="${pageContext.request.contextPath}/j_spring_security_logout">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}">
										</form>
									</c:if>
								</ul>
							</nav>
						</div>
					</div>
					<div
						class="header-action-wrap header-action-flex header-action-width">
						<div class="search-style-1 mr-2">
							<form action="${pageContext.request.contextPath}/SanPham/timKiem?keywords=${keywords }" method="get">
								<div class="form-search-1">
									<input class="input-text" value=""
										placeholder="Nhập sản phẩm cần tìm" type="search"
										name="keywords">
									<button>
										<i class="icofont-search-1"></i>
									</button>
								</div>
							</form>
						</div>
						<div class="same-style header-cart">
							<a href="${pageContext.request.contextPath}/GioHang"><i
								class="icofont-shopping-cart"></i><small>Giỏ hàng <c:if
										test="${cart==null}">(0)</c:if> <c:if test="${cart!=null}">(${cart.lineItemCount})</c:if>
							</small></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header-small-device header-small-ptb sticky-bar">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-6">
					<div class="mobile-logo mobile-logo-width">
						<a href="${pageContext.request.contextPath}/"> <img alt=""
							src="${pageContext.request.contextPath}/assets/images/logo/logo-2.png">
						</a>
					</div>
				</div>
				<div class="col-6">
					<div
						class="header-action-wrap header-action-flex header-action-mrg-1">
						<div class="same-style header-cart">
							<a href="${pageContext.request.contextPath}/GioHang"><i
								class="icofont-shopping-cart"></i> <c:if test="${cart==null}">(0)</c:if>
								<c:if test="${cart!=null}">(${cart.lineItemCount})</c:if> </small></a>
						</div>
						<div class="same-style header-info">
							<button class="mobile-menu-button-active">
								<span class="info-width-1"></span> <span class="info-width-2"></span>
								<span class="info-width-3"></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- Mobile menu start -->
<div class="mobile-menu-active clickalbe-sidebar-wrapper-style-1">
	<div class="clickalbe-sidebar-wrap">
		<a class="sidebar-close"><i class="icofont-close-line"></i></a>
		<div class="mobile-menu-content-area sidebar-content-100-percent">
			<div class="mobile-search">
				<form action="${pageContext.request.contextPath}/SanPham/timKiem?keywords=${keywords }" method="get">
					<div class="form-search-1">
						<input class="input-text" value=""
							placeholder="Nhập sản phẩm cần tìm" type="search" name="keywords">
						<button>
							<i class="icofont-search-1"></i>
						</button>
					</div>
				</form>
			</div>
			<div class="clickable-mainmenu-wrap clickable-mainmenu-style1">
				<nav>
					<ul>
						<li class="has-sub-menu"><a
							href="${pageContext.request.contextPath}/">Trang chủ</a></li>
						<c:if test="${pageContext.request.userPrincipal.name != null}">
							<li><a
								href="${pageContext.request.contextPath}/QuanLyCuaHang/">Quản
									lý cửa hàng</a></li>
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name == null}">
							<li><a href="${pageContext.request.contextPath}/DangNhap">Đăng
									nhập</a></li>
							<li><a href="${pageContext.request.contextPath}/TaoTaiKhoan">Tạo
									tài khoản</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<form id="logout" method="post"
					action="${pageContext.request.contextPath}/j_spring_security_logout">
					<div class="mobile-curr-lang-wrap">
						<div class="single-mobile-curr-lang">
							<a class="mobile-language-active" href="#">Xin chào,
								${pageContext.request.userPrincipal.name} <i
								class="icofont-simple-down"></i>
							</a>
							<div class="lang-curr-dropdown lang-dropdown-active">
								<ul>
									<li><a href="#"
										onclick="document.getElementById('logout').submit();">Đăng
											xuất</a></li>
								</ul>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}">
							</div>
						</div>
					</div>
				</form>
			</c:if>
		</div>
	</div>
</div>