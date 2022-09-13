<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Order\OrderController;

Route::controller(OrderController::class)->prefix("/admin/order")
    ->group(function() {
        Route::get('/index', 'index')->name('order.index');
        Route::get('/detail', 'detail')->name('order.detail');
        Route::post('/update', 'update')->name('order.update');
        Route::post('/delete', 'delete')->name('order.delete');
});
