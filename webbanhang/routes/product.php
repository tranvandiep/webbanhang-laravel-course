<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Product\ProductController;

Route::controller(ProductController::class)->prefix("/admin/product")
    ->group(function() {
        Route::get('/index', 'index')->name('product.index');
        Route::get('/view', 'view')->name('product.view');
        Route::post('/add', 'add')->name('product.add');
        Route::post('/delete', 'delete')->name('product.delete');
});
