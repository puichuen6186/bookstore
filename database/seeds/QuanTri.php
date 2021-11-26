<?php

use Illuminate\Database\Seeder;

class QuanTri extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data =[
            'username'=>'admin',
            'password'=>bcrypt('123456'),
            'email'=>'test@gmail.com'
        ];
      
        DB::table('quan_tri')->insert($data);
    }
}
