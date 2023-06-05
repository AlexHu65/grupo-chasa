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

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
//vamos a la seccion
Route::get('/seguros/{seccion}', 'HomeController@seccion')->name('secciones.seguros');
//vamos al seguro de la seccion
Route::get('/seguros/{seccion}/{slug}', 'HomeController@seguros')->name('seguros.seguro');



Route::group(['prefix' => 'admTemplate'], function () {
    Voyager::routes();
});
