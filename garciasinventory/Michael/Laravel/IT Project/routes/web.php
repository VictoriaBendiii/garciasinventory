<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/login','AdminController@login');;
Route::get('/admin/dashboard','AdminController@dashboard');
Route::get('/admin/product','AdminController@product');
Route::get('/admin/notification','AdminController@notification');
Route::get('/admin/inventory','AdminController@inventory');
Route::get('/admin/deliveries','AdminController@deliveries');
Route::get('/admin/stock','AdminController@stock');
Route::get('/admin/addproduct','AdminController@addproduct');
Route::get('/admin/addaccount','AdminController@addaccount');