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
										<li class="nav-item"><a class="nav-link" href="#mh" tabindex="-1"
												aria-disabled="true">Mua hàng</a></li>
										<li class="nav-item"><a class="nav-link" href="#tt" tabindex="-1"
												aria-disabled="true">Tin tức</a></li>
										<li class="nav-item"><a class="nav-link" href="#dc" tabindex="-1"
												aria-disabled="true">Địa chỉ</a></li>
										<li class="nav-item"><a class="nav-link" href="/mailer/mailer" tabindex="-1"
												aria-disabled="true">Liên hệ</a></li>


									</ul>
									<form class="d-flex">
										<input class="form-control me-2" type="search" placeholder=" Search"
											aria-label="Search">
									</form>
									<h5 class="nav-link" style="color: red;">${username}</h5>
									<form class="d-flex"> 
										<a href="/account/login"><img src="https://img.icons8.com/bubbles/2x/user.png" alt=""
											style="width: 70px; height: 70px; margin-top: 30px;">
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
				<div class="heading" id="sp">
					<h1>GIỎ HÀNG</h1>
				</div>


				<table class="table" style="text-align: center;">
					<thead>
						<tr>
							<th scope="col">Hình</th>
							<th scope="col">Tên</th>
							<th scope="col">Giá</th>
							<th scope="col">Số lượng</th>
							<th scope="col">Tổng tiền</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${cart.items}">
							<form action="/cart/update/${item.id}" method="post">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td class="align-middle"><img class="pic-1" src="../images/${item.image}"
											style="width: 150px; height: 150px;"></td>
									<td class="align-middle">${item.name}</td>
									<td class="align-middle">${item.price}</td>
									<td class="align-middle"><input class="form-control" name="qty" value="${item.qty}"
											onblur="this.form.submit()"></td>
									<td class="text-right align-middle">${item.price * item.qty}</td>
									<td class="text-right align-middle">
										<a class="btn btn-success" href="/cart/remove/${item.id}">Remove</a>
									</td>
								</tr>
							</form>
						</c:forEach>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>Tổng: ${Total}</td>
							<td></td>
						</tr>
					</tbody>
				</table>
				<center>
					<td><a class="btn btn-success" href="/cart/clear">Clear Cart</a></td>
					<td><a class="btn btn-success" href="/home/index">Add More</a></td>
					<td><a class="btn btn-success" href="/cart/checkout">Ckeck Out</a></td>
				</center>

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


		</html>