<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/admin','PostController@adminAll')->name('admin.all');
Route::get('/','PostController@indexJson');
Route::get('/category/{id}','PostController@postId');
Route::get('/posts/search','PostController@search')->name('posts.search');
Route::resource('posts','PostController');  
