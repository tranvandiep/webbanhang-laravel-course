<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Feedback\FeedbackController;

Route::controller(FeedbackController::class)->prefix("/admin/feedback")
    ->group(function() {
        Route::get('/index', 'index')->name('feedback.index');
        Route::post('/update', 'update')->name('feedback.update');
        Route::post('/delete', 'delete')->name('feedback.delete');
});
