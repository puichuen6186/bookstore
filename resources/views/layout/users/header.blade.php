<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home | PUICHUEN Book</title>
	<link rel="shortcut icon" type="image/x-icon" href="{{asset('bookshop/img/logo/icons8-cat-96.png')}}" />

	<link rel="stylesheet" href="{{asset('bookshop/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link rel="stylesheet" href="{{asset('bookshop/css/main.css')}}">
	<link rel="stylesheet" href="{{asset('bookshop/css/style.css')}}">
	<link rel="stylesheet" href="{{asset('bookshop/vendor/slick/slick.css')}}">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@700&display=swap" rel="stylesheet">
	@stack('css')
	
</head>

<body>
	<header id="header">
		<div class="header-top" id="home">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +0774713319</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> puichuen6186@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right ">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end-header-top -->
		<div class="header-middle">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="{{ URL ('/user') }}"><img src="{{asset('bookshop/img/logo/chuen-bookstore-icon.png')}}" alt="" /></a>
						</div>
						<div class="btn-group pull-right">

						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav ">
								@if(Auth::guard('taikhoan')->id() !=0)
									<li><a href=""><i class="fa fa-user"></i> T??i Kho???n</a></li>
									<li><a href="{{ route('sach.giohang') }}"><i class="fa fa-shopping-cart"></i> Gi??? H??ng</a></li>
								@endif
								@if(Auth::guard('taikhoan')->id() !=0)
									<li><a href="{{ route('dangxuat') }}"><i class="fa fa-sign-out"></i> ????ng Xu???t</a></li>
								@else
								<li><a href="{{ route('dangnhap') }}"><i class="fa fa-lock"></i> ????ng Nh???p</a></li>
								<li><a href="{{ route('dangky') }}"><i class="fa fa-star"></i> ????ng K??</a></li>
								@endif
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end-header-middle -->
		<div class="header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-sm-9 my-2">

						<div class="mainmenu pull-left">
							<ul class="nav menu">
								<li class="nav-item">
									<a class="nav-link" href="{{ route('trangchu') }}">Trang ch???</a>
								</li>
								<li class="nav-item hienra">
									<a class="nav-link " href="#">Tin T???c</a>

								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">Li??n h???</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<!-- Search form -->

						<div class="md-form mt-0 ">
							<form method="post" action="{{ route('sach.timkiem') }}">
								@csrf
								<div class="input-group">
									<input class="form-control" type="text" name="search" placeholder="T??m ki???m" >
									<button class="btn btn-success " type="submit"><i class="fa fa-search" ></i></button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end-header-bottom -->
	</header><!-- end header -->