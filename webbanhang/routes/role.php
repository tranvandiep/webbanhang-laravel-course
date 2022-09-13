<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Role\RoleController;

Route::controller(RoleController::class)->prefix("/admin/role")
    ->group(function() {
        Route::get('/index', 'index')->name('role.index');
        Route::post('/add', 'add')->name('role.add');
        Route::post('/delete', 'delete')->name('role.delete');
});
