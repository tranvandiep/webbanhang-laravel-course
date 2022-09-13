<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\UserController;

Route::controller(UserController::class)->prefix("/admin/user")
    ->group(function() {
        Route::get('/index', 'index')->name('user.index');
        Route::get('/view', 'view')->name('user.view');
        Route::post('/add', 'add')->name('user.add');
        Route::post('/delete', 'delete')->name('user.delete');
});
