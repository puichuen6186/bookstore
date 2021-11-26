<!DOCTYPE html>
<html lang="en">
<head>
	<title>Đăng ký | PUICHUEN Book</title>
	<link rel="shortcut icon" type="image/x-icon" href="{{asset('bookshop/img/logo/icons8-cat-96.png')}}" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="{{asset('/bookshop/login/images/icons/favicon.ico')}}"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/vendor/bootstrap/css/bootstrap.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/vendor/animate/animate.css')}}">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/vendor/css-hamburgers/hamburgers.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/vendor/animsition/css/animsition.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/vendor/select2/select2.min.css')}}">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/vendor/daterangepicker/daterangepicker.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/css/util.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('/bookshop/login/css/main.css')}}">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@700&display=swap" rel="stylesheet">
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url({{asset('/bookshop/login/images/bg2.jpg')}});">
					<span class="login100-form-title-1">
						Đăng ký tài khoản
					</span>
                </div>
                <div class="container-fluid">
                    <div class="row">
                      <div class="col-md">
                          <form action="{{route('submit.dangky')}}" method="post" enctype="multipart/form-data" >
                            @csrf
                            <div class="register">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Hình đại diện</label>
                                                <input type="file" id="upload-image" name='kh_avatar' accept="image/*" value="" require>
                                              </div>
                                            <div class="form-group">
                                                <label for="">Họ tên</label>
                                                <input type="text" name="kh_ten" class="form-control" id="a3">
                                              </div>
                                            <div class="form-group">
                                                <label for="">Email</label>
                                                <input type="email" name="kh_email" class="form-control" id="exampleInputEmail3">
                                              </div>
                                            <div class="form-group">
                                                <label for="">Địa chỉ</label>
                                                <input type="text" name="kh_diachi" class="form-control" id="a4">
                                              </div>
                                            
                                            <div class="form-group">
                                                <label for="">Giới tính</label>
                                                <input type="radio" name="kh_gtinh" checked value="1" >Nam &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="kh_gtinh" value="0" >Nữ
                                              </div>
                                            
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="">Tài khoản</label>
                                                <input type="text" class="form-control" name="tk_username" >
                                              </div>
                                            <div class="form-group">
                                                <label for="">Mật khẩu</label>
                                                <input class="form-control" type="password" name="tk_password">
                                              </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Nhập lại MK</label>
                                                <input class="form-control" type="password" name="tk_password1">
                                              </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Số điện thoại</label>
                                                <input type="text" name="kh_sdt" class="form-control" id="a2">
                                              </div>
                                        </div>
                                    </div>
                                </div>
                                <botton type="submit" class="btn btn-success" id="submitForm">Đăng ký</botton>
                            </div>
                          </form>
                      </div>
                    </div>
                </div>
			</div>
		</div>
	</div>

 
<!--===============================================================================================-->
	<script src="{{asset('/bookshop/login/vendor/jquery/jquery-3.2.1.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('/bookshop/login/vendor/animsition/js/animsition.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('/bookshop/login/vendor/bootstrap/js/popper.js')}}"></script>
	<script src="{{asset('/bookshop/login/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('/bookshop/login/vendor/select2/select2.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('/bookshop/login/vendor/daterangepicker/moment.min.js')}}"></script>
	<script src="{{asset('/bookshop/login/vendor/daterangepicker/daterangepicker.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('/bookshop/login/vendor/countdowntime/countdowntime.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('/bookshop/login/js/main.js')}}"></script>
  
</body>
</html>