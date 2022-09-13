<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Category\CategoryController;

Route::controller(CategoryController::class)->prefix("/admin/category")
    ->group(function() {
        Route::get('/index', 'index')->name('category.index');
        Route::post('/add', 'add')->name('category.add');
        Route::post('/delete', 'delete')->name('category.delete');
});
