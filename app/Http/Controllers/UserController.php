<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Cart;
use App\Taikhoan;
use DB;
use Session;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    
    
    public function getLogin()
    {
        return view('layout.users.login.login1');
    }
    public function getRegister()
    {
        return view('layout.users.login.dangky');
    }
    public function postLogin(Request $request)
    {
        $arr = [
            'username' => $request->username,
            'password' =>($request->password) ,
        ];
        // dd($arr);
        //  dd(Auth::guard('taikhoan'));
        // if ($request->remember == trans('remember.Remember Me')) {
        //     $remember = true;
        // } else {
        //     $remember = false;
        // }
        //kiểm tra trường remember có được chọn hay không
        if (Auth::guard('taikhoan')->attempt($arr)) {
           
            if(Auth::guard('taikhoan')->user()->tk_id == 1)
            {
                // dd(Auth::guard('taikhoan')->user()->tk_id);
                return redirect()->route('dashboard');
            }
            else
                return redirect()->route('trangchu');
        } else {

            dd('tài khoản và mật khẩu chưa chính xác');
            //...code tùy chọn
            //đăng nhập thất bại hiển thị đăng nhập thất bại
        }
    }

    //

        public function logout()
            {
                Auth::guard('taikhoan')->logout();
                Cart::destroy();
                return redirect()->route('trangchu');
            }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function storeRegister(Request $request)
    {
        if($request->file('kh_avatar')){

            $file=$request->file('kh_avatar');
            $filename =$file->getClientOriginalName('kh_avatar');
            $file->move('bookshop/img/khachhang',$filename);

            $data['kh_ten']=$request->kh_ten;
            $data['kh_email']=$request->kh_email;
            $data['kh_sdt']=$request->kh_sdt;
            $data['kh_gtinh']=$request->kh_gtinh;
            $data['kh_diachi']=$request->kh_diachi;
            $data['kh_avatar']=$filename;
            // dd($data);
            $kh_id= DB::table('khachhang')->insertGetId($data);

            $tk['username']=$request->tk_username;
            $tk['password']=bcrypt($request->tk_password);
            $tk['kh_id']=$kh_id;
            // dd($data);
            DB::table('taikhoan')->insert($tk);

            if($kh_id){
                Session::put('mess','Thêm thành công khách hàng!');
                return redirect()->route('dangnhap');
            }
           
        }
        dd("lỗi");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
