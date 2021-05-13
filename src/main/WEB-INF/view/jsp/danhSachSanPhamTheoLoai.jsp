<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dking - Trang chủ</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.png">
<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/vendor/vendor.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/plugins/plugins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/style.min.css">
<style type="text/css">
.pagination {
	padding: 20px;
}

a {
	display: inline-block;
	padding: 0 10px;
	cursor: pointer;
}

a .disabled {
	opacity: .3;
	pointer-events: none;
	cursor: not-allowed;
}

a .current {
	background: #f3f3f3;
}
</style>
</head>

<body>
	<div class="main-wrapper main-wrapper-3">
		<jsp:include page="_header.jsp"></jsp:include>
		<div class="shop-area breadcrumb-mt section-padding-12 pt-25 pb-160">
			<div class="container-fluid">
				<div class="row flex-row-reverse">
					<div class="col-xl-2 col-lg-3">
						<div class="shop-sidebar-style">
							<div class="sidebar-widget">
								<h4 class="pro-sidebar-title">Danh mục sản phẩm</h4>
								<div class="sidebar-widget-categori mt-45">
									<ul>
										<c:if test="${loaiId== 0}">
											<li><a href="${pageContext.request.contextPath}/"
												class="active">Tất cả</a></li>
										</c:if>
										<c:if test="${loaiId!= 0}">
											<li><a href="${pageContext.request.contextPath}/">Tất
													cả</a></li>
										</c:if>
										<c:forEach var="loai" items="${dsloai}">
											<c:if test="${loai.id== loaiId}">
												<li><a
													href="${pageContext.request.contextPath}/LoaiSanPham/${loai.id}"
													class="active">${loai.tenLoaiSP}</a></li>
											</c:if>
											<c:if test="${loai.id!= loaiId}">
												<li><a
													href="${pageContext.request.contextPath}/LoaiSanPham/${loai.id}">${loai.tenLoaiSP}</a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-10 col-lg-9">
						<div class="shop-wrap-5">
							<div class="tab-content pt-30">
								<div id="shop-1" class="container tab-pane active">
									<div class="row">
										<c:forEach items="${ds}" var="sp">
											<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
												<div class="single-item">
													<div class="product-wrap mb-50">
														<div class="product-img product-img-zoom mb-25">
															<a
																href="${pageContext.request.contextPath}/SanPham/${sp.id}">
																<img
																src="${pageContext.request.contextPath}/assets/images/${sp.hinhURL}"
																alt="">
															</a>
														</div>
														<div class="product-content">
															<h4>
																<a
																	href="${pageContext.request.contextPath}/SanPham/${sp.id}">${sp.tenSP}</a>
															</h4>
															<div class="product-price">
																<span>${sp.donGia} đ</span>
															</div>
														</div>
														<div class="product-action-position-1 text-center">
															<div class="product-content" id="${sp.id }">
																<h4>
																	<a
																		href="${pageContext.request.contextPath}/SanPham/${sp.id}">${sp.tenSP}</a>
																</h4>
																<div class="product-price">
																	<span>${sp.donGia}đ</span>
																</div>
																<h6>${sp.moTa}</h6>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>

									</div>

								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
		<script
			src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
		<script type="text/javascript">
			(function($) {
				var pagify = {
					items : {},
					container : null,
					totalPages : 1,
					perPage : 3,
					currentPage : 0,
					createNavigation : function() {
						this.totalPages = Math.ceil(this.items.length
								/ this.perPage);

						$('.pagination', this.container.parent()).remove();
						var pagination = $('<div class="pagination"></div>')
								.append(
										'<a class="nav prev disabled" data-next="false"><</a>');

						for (var i = 0; i < this.totalPages; i++) {
							var pageElClass = "page";
							if (!i)
								pageElClass = "page current";
							var pageEl = '<a class="' + pageElClass
									+ '" data-page="' + (i + 1) + '">'
									+ (i + 1) + "</a>";
							pagination.append(pageEl);
						}
						pagination
								.append('<a class="nav next" data-next="true">></a>');

						this.container.after(pagination);

						var that = this;
						$("body").off("click", ".nav");
						this.navigator = $("body").on("click", ".nav",
								function() {
									var el = $(this);
									that.navigate(el.data("next"));
								});

						$("body").off("click", ".page");
						this.pageNavigator = $("body").on("click", ".page",
								function() {
									var el = $(this);
									that.goToPage(el.data("page"));
								});
					},
					navigate : function(next) {
						// default perPage to 5
						if (isNaN(next) || next === undefined) {
							next = true;
						}
						$(".pagination .nav").removeClass("disabled");
						if (next) {
							this.currentPage++;
							if (this.currentPage > (this.totalPages - 1))
								this.currentPage = (this.totalPages - 1);
							if (this.currentPage == (this.totalPages - 1))
								$(".pagination .nav.next").addClass("disabled");
						} else {
							this.currentPage--;
							if (this.currentPage < 0)
								this.currentPage = 0;
							if (this.currentPage == 0)
								$(".pagination .nav.prev").addClass("disabled");
						}

						this.showItems();
					},
					updateNavigation : function() {

						var pages = $(".pagination .page");
						pages.removeClass("current");
						$(
								'.pagination .page[data-page="'
										+ (this.currentPage + 1) + '"]')
								.addClass("current");
					},
					goToPage : function(page) {

						this.currentPage = page - 1;

						$(".pagination .nav").removeClass("disabled");
						if (this.currentPage == (this.totalPages - 1))
							$(".pagination .nav.next").addClass("disabled");

						if (this.currentPage == 0)
							$(".pagination .nav.prev").addClass("disabled");
						this.showItems();
					},
					showItems : function() {
						this.items.hide();
						var base = this.perPage * this.currentPage;
						this.items.slice(base, base + this.perPage).show();

						this.updateNavigation();
					},
					init : function(container, items, perPage) {
						this.container = container;
						this.currentPage = 0;
						this.totalPages = 1;
						this.perPage = perPage;
						this.items = items;
						this.createNavigation();
						this.showItems();
					}
				};

				// stuff it all into a jQuery method!
				$.fn.pagify = function(perPage, itemSelector) {
					var el = $(this);
					var items = $(itemSelector, el);

					// default perPage to 5
					if (isNaN(perPage) || perPage === undefined) {
						perPage = 3;
					}

					// don't fire if fewer items than perPage
					if (items.length <= perPage) {
						return true;
					}

					pagify.init(el, items, perPage);
				};
			})(jQuery);

			$(".container").pagify( 8,".single-item");
		</script>
		<jsp:include page="_footer.jsp"></jsp:include>
	</div>
</body>

</html>