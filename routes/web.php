<?php

use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});


Route::get('/config/clear', function () {
    Artisan::call("config:clear");
    Artisan::call("cache:clear");
    Artisan::call("route:clear");
    dd('Config cleared successfully.');
});