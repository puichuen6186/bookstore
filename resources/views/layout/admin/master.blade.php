
<!DOCTYPE html>
<head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="{{asset('backend/css/bootstrap.min.css')}}" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="{{asset('backend/css/style.css')}}" rel='stylesheet' type='text/css' />
<link href="{{asset('backend/css/style-responsive.css')}}" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="{{asset('backend/css/font.css')}}" type="text/css"/>
<link href="{{asset('backend/css/font-awesome.css')}}" rel="stylesheet">
<link rel="stylesheet" href="{{asset('backend/css/morris.css')}}" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="{{asset('backend/css/monthly.css')}}">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="{{asset('backend/js/jquery2.0.3.min.js')}}"></script>
<script src="{{asset('backend/js/raphael-min.js')}}"></script>
<script src="{{asset('backend/js/morris.js')}}"></script>
</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="" class="logo">
        Admin
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="{{asset('backend/images/2.png')}}">
                <span class="username">Qu???n tr???</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                {{-- <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li> --}}
                <li><a href="{{ route('admin.handle-logout') }}"><i class="fa fa-key"></i>????ng xu???t</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->

    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">

                <li class="sub-menu active">
                    <a href="{{ route('sach.index') }}">
                        <i class="fa fa-book"></i>
                        <span>S??ch</span>
                    </a>
                    {{-- <ul class="sub">
						<li><a href="typography.html">Typography</a></li>
						<li><a href="glyphicon.html">glyphicon</a></li>
                        <li><a href="grids.html">Grids</a></li>
                    </ul> --}}
                </li>
                <li class="sub-menu  ">
                    <a href="{{ route('loaisach.index') }}">
                        <i class="fa fa-book"></i>
                        <span>Lo???i s??ch</span>
                    </a>
                    {{-- <ul class="sub">
						<li><a href="typography.html">Typography</a></li>
						<li><a href="glyphicon.html">glyphicon</a></li>
                        <li><a href="grids.html">Grids</a></li>
                    </ul> --}}
                </li>
                <li class="sub-menu  ">
                    <a href="{{ route('tacgia.index') }}">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <span>T??c gi???</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="{{ route('nhaxb.index') }}">
                        <i class="fa fa-book"></i>
                        <span>Nh?? xu???t b???n</span>
                    </a>
                </li>
                <li class="sub-menu  ">
                    <a href="{{ route('khachhang.index') }}">
                        <i class="fa fa-book"></i>
                        <span>Kh??ch h??ng</span>
                    </a>
                </li>
                <li class="sub-menu  ">
                    <a href="{{ route('taikhoan.index') }}">
                        <i class="fa fa-book"></i>
                        <span>T??i kho???n</span>
                    </a>
                </li>
                <li class="sub-menu  ">
                    <a href="">
                        <i class="fa fa-book"></i>
                        <span>H??nh th???c thanh to??n</span>
                    </a>
                </li>
                <li class="sub-menu ">
                    <a href="">
                        <i class="fa fa-book"></i>
                        <span>H??nh th???c v???n chuy???n</span>
                    </a>
                </li>
                <li class="sub-menu  ">
                    <a href="">
                        <i class="fa fa-book"></i>
                        <span>Th???ng k??</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('admin.handle-logout') }}">
                        <i class="fa fa-user"></i>
                        <span>????ng xu???t</span>
                    </a>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
	@yield('content')


    </section>
 <!-- footer -->
    <div class="footer">
    <div class="wthree-copyright">
        <p>?? 2017 Visitors. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
    </div>
    </div>
  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="{{asset('backend/js/bootstrap.js')}}"></script>
<script src="{{asset('backend/js/jquery.dcjqaccordion.2.7.js')}}"></script>
<script src="{{asset('backend/js/scripts.js')}}"></script>
<script src="{{asset('backend/js/jquery.slimscroll.js')}}"></script>
<script src="{{asset('backend/js/jquery.nicescroll.js')}}"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="{{asset('backend/js/jquery.scrollTo.js')}}"></script>
<!-- morris JavaScript -->
<script src="{{asset('bookshop/vendor/ckeditor/ckeditor.js')}}"></script>
@stack('script')
</body>
</html>
