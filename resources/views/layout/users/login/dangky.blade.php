<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script><link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
        margin: 0;
        padding: 0;
        background-color: #17a2b8;
        height: 100vh;
        }
        #login .container #login-row #login-column #login-box {
        margin-top: 120px;
        /* max-width: 600px; */
       
        border: 1px solid #9C9C9C;
        background-color: #EAEAEA;
        }
        #login .container #login-row #login-column #login-box #login-form {
        padding: 20px;
        }
        #login .container #login-row #login-column #login-box #login-form #register-link {
        margin-top: -85px;
        }
    </style>
</head>
<body>
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="{{ route('submit.dangky') }}" method="post" enctype="multipart/form-data">
                        <h3 class="text-center text-info">Đăng ký thành viên</h3>
                        @csrf
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
                                <label for="exampleInputPassword1">Số điện thoại</label>
                                <input type="text" name="kh_sdt" class="form-control" id="a2">
                                </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-info btn-md" value="Đăng nhập">
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
