<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Trang chủ</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
				crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
				crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
				integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
				crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
				integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
				crossorigin="anonymous"></script>

			<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css">
			<link rel="stylesheet" href="css/style.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
			<link rel="stylesheet" href="../css/style.css">
			<script>
				var dropdownElementList = [].slice.call(document
					.querySelectorAll('.dropdown-toggle'))
				var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
					return new bootstrap.Dropdown(dropdownToggleEl)
				})
			</script>


		</head>

		<body>
			<div class="container-fluid ">
				<header>
					<div class="b">
						<nav class="navbar navbar-expand-lg navbar-dark navbar-light" style="background-color: black;">
							<div class="container-fluid">
								<a class="navbar-brand " href="/home/index">Khánh Store</a>
								<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
									data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbarScroll">
									<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
										style="-bs-scroll-height: 100px;">
										<li class="nav-item"><a class="nav-link active" aria-current="page"
												href="#">Home</a></li>
										<li class="nav-item"><a class="nav-link" href="#sp">Sản
												phẩm</a></li>
										<li class="nav-item"><a class="nav-link" href="#tt" tabindex="-1"
												aria-disabled="true">Tin tức</a></li>
										<li class="nav-item"><a class="nav-link" href="#dc" tabindex="-1"
												aria-disabled="true">Địa chỉ</a></li>
										<li class="nav-item"><a class="nav-link" href="/mailer/mailer" tabindex="-1"
												aria-disabled="true">Liên hệ</a></li>
									</ul>
									<form class="d-flex">
										<form action="/home/index" method="post">
											<input class="form-control me-2" type="search" placeholder=" Search"
												aria-label="Search" value="${keywords}" name="keywords">
										</form>
									</form>
									<h5 class="nav-link" style="color: red;"><a href="/logout">${username}</a> </h5>
									<form class="d-flex">
										<a href="/account/login"><img src="https://img.icons8.com/bubbles/2x/user.png"
												alt="" style="width: 70px; height: 70px; margin-top: 30px;">
										</a>
									</form>


									<form class="d-flex">
										<a href="/cart/view"><img src="https://img.icons8.com/bubbles/2x/buy.png" alt=""
												style="width: 70px; height: 70px; margin-top: 30px;">
										</a>
									</form>
								</div>
							</div>
					</div>
					</nav>
			</div>
			</header>

			<main>
				<!--Hình header-->
				<div class="anh">
					<img src="https://www.louisvuitton.com/images/louis-vuitton--LV_NBA_Drop2_Option1_DIE.jpg?wid=2048"
						alt="" style="margin-top: 90px;">
				</div>
				<img src="/home/1.jpg" alt="" style="margin-top: 90px;">
				<!--end header-->

				<!--Sản phẩm-->
				<div class="heading wow lightSpeedIn" data-wow-duration="1.25s" id="sp">
					<h1>SẢN PHẨM</h1>
					<p style="text-align: center;">Tổng số trang: ${page.totalPages}</p>
				</div>

				<div class="container wow bounceInRight" data-wow-duration="1.25s">
					<h3 class="h3">Sản phẩm tiêu biểu </h3>
					<p>Số trang hiện tại: ${page.number+1}</p>

					<div class="row">
						<c:forEach var="item" items="${page.content}">
							<div class="col-md-3 col-sm-6" style="margin-top: 30px;">
								<div class="product-grid6">
									<div class="product-image6">
										<a href="/cart/add/${item.id}">
											<img class="pic-1" src="../images/${item.image}">
										</a>
									</div>
									<div class="product-content">
										<h3 class="title">${item.name}</h3>
										<div class="price">${item.price}
										</div>
									</div>
									<ul class="social">

										<li><a href="/cart/add/${item.id}" data-tip="Add to Cart"><i
													class="fa fa-shopping-cart"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</c:forEach>
					</div>

					<center style="margin-top: 40px;">
						<a class="btn btn-dark" href="/home/index?p=0">First</a>
						<a class="btn btn-dark" href="/home/index?p=${page.number-1}">Previous</a>
						<a class="btn btn-dark" href="/home/index?p=${page.number+1}">Next</a>
						<a class="btn btn-dark" href="/home/index?p=${page.totalPages-1}">Last</a>
					</center>
				</div>
				<!-- End Sản phẩm-->

				<!--Tin Tức-->
				<div class="container" id="tt">
					<div class="row">
						<div class="heading">
							<h1 class="main-heading wow lightSpeedIn" data-wow-duration="1s">TIN TỨC</h1>
						</div>
						<div class="col-sm-8 wow bounceInLeft" data-wow-duration="3s">
							<img src="https://www.louisvuitton.com/images/louis-vuitton--W_Fa_LG_Womens_2021_Summer_Collection_Drop2_V3_DII.jpg?wid=1080"
								alt="" style="height: 100%; width: 95%;">
						</div>
						<div class=" col-sm-4">
							<div class="head">
								<h2 class="text-block wow bounceInDown center" data-wow-duration="3s">MULTI POCHETTE ACCESSOIRES</h2>
							</div>
							<p class="text-block wow fadeInUp" data-wow-duration="3s">The versatile Multi Pochette Accessoires is composed of a
								bag, a pouch, and a round coin purse, all made from pastel-colored
								Monogram Giant canvas. This hybrid bag features an adjustable
								jacquard strap with Louis Vuitton Malletier inscribed on it for
								shoulder or cross-body wear as well as a removable gold-color
								chain for hand and short-shoulder carry.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 wow bounceInDown" data-wow-duration="3s">
							<img src="https://www.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton--1A8H5H_LOOK29_VISUAL4_1_2.jpg?wid=656"
								alt="">
						</div>
						<div class="col-sm-4 wow bounceInUp" data-wow-duration="3s">
							<img src="https://www.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton--LV_Men_Summer21_1A8S80_Look_1_2.jpg?wid=656"
								alt="">
						</div>
						<div class="col-sm-4 wow bounceInDown" data-wow-duration="3s">
							<img src="https://www.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton--LV_Men_Summer21_M57946_LOOK01.jpg?wid=656"
								alt="">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<div class="head">
								<h2 class="text-block wow bounceInDown center" data-wow-duration="3s">WATERCOLOR SUMMER COLLECTION - LOOK 01</h2>
							</div>
							<p>
								This look is all about the capsule's Multicolor Watercolor
								Monogram graphic: a new take on the classic signature, inspired by
								painting techniques. It adorns a blouson tailored in Taurillon
								leather - with an embossed Monogram motif - and matching swim
								shorts in quick-drying technical fabric. <br> <br> This
								style may not be available until a later date. Please contact
								Client Services at +1.866.VUITTON for more details.
							</p>
						</div>
						<div class="col-sm-8 wow bounceInRight" data-wow-duration="3s">
							<img src="https://www.louisvuitton.com/images/louis-vuitton--LV_NBA_Drop2_Option2_DII.jpg?wid=1080"
								alt="">
						</div>
					</div>
					<center class=" wow bounceInUp" data-wow-duration="3s">
						<iframe width="80%" height="580px" src="https://www.youtube.com/embed/fFv5smPPuZo"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</center>
				</div>
				<!-- End tin tức-->

				<!--Địa chỉ-->
				<div class="giua wow bounceInDown" data-wow-duration="3s" id="dc" style="height: 800px;">
					<div class="heading" style="color: rgb(255, 255, 255); padding-top: 30px;">
						<h1>ĐỊA CHỈ</h1>
					</div>
					<div class="ifa" style="padding-bottom: 30px;">
						<center>
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3930.1104790180984!2d106.30614231531796!3d9.924756277047134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zOcKwNTUnMjkuMSJOIDEwNsKwMTgnMzAuMCJF!5e0!3m2!1svi!2s!4v1622796877907!5m2!1svi!2s"
								width="90%%" height="600" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
					</div>
					<h5 style="text-align: center; color: wheat;">Địa chỉ: ấp Xóm
						Trảng, xã Nguyệt Hóa, huyện Châu Thành, tỉnh Trà Vinh</h5>
					</center>
				</div>
				<!--End địa chỉ-->

			</main>

			<footer>
				<div class="bottom section-padding">
					<div class="container">
						<div class="row">
							<div class="col-md-12 text-center">
								<div class="copyright">
									<h6>
										© <span>2021</span> <a href="#" class="transition">Khánh
											Store</a> All rights reserved.
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>




		</body>
		<script>
			var header = document.getElementById('header');
			var mobileMenu = document.getElementById('mobile-menu');
			var headerHeight = header.clientHeight;
			//  đsong mở mobile menu
			mobileMenu.onclick = function () {
				var isClosed = header.clientHeight === headerHeight;
				if (isClosed) {
					header.style.height = 'auto';
				} else {
					header.style.height = null;
				}
			}
			// tự động đóng khi chọn menu
			var menuItems = document.querySelectorAll('#nav li a[href*="#"]');
			for (var i = 0; i < menuItems.length; i++) {
				var menuItem = menuItems[i];
				menuItem.onclick = function (event) {

					var isParentMenu = this.nextElementSibling
						&& this.nextElementSibling.classList.contains('subnav');
					if (isParentMenu) {
						event.preventDefault();
					} else {
						header.style.height = null;

					}

				}
			}
		</script>
		<script>
			wow = new WOW(
				{
					animateClass: 'animated',
					offset: 100,
					callback: function (box) {
						console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
					}
				}
			);
			wow.init();
			document.getElementById('moar').onclick = function () {
				var section = document.createElement('section');
				section.className = 'section--purple wow fadeInDown';
				this.parentNode.insertBefore(section, this);
			};
		</script>


		</html>