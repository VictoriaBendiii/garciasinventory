<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function login(){
    	return view('login');
    }
    public function dashboard(){
    	return view('admin.dashboard');
    }
    public function product(){
    	return view ('admin.product');
    }
    public function notification(){
    	return view ('admin.notification');
    }
    public function inventory(){
        return view ('admin.inventory');
    }
    public function deliveries(){
    	return view ('admin.deliveries');
    }
    public function stock(){
    	return view ('admin.stock');
    }
    public function addproduct(){
    	return view ('admin.addproduct');
    }
    public function addaccount(){
    	return view ('admin.addaccount');
    }
    public function logout(){
    	return view ('/');
    }

}
