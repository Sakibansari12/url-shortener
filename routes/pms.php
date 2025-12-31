<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PMS as PMS;
use App\Http\Controllers\RazorpayController;

use App\Services\RentalsUnitedService;




        
//Route::get('/invite/accept/{token}', [PMS\ShortUrl\ShortUrlController::class, 'show'])->name('invite.accept.form');
Route::get('{code}', [PMS\ShortUrl\ShortUrlController::class, 'redirect']);






//Route::get('/invite/accept/{token}', [PMS\Invitation\InvitationController::class, 'show'])->name('invite.accept.form');
//Route::post('/invite/accept/{token}', [PMS\Invitation\InvitationController::class, 'store'])->name('invite.accept.store');


Route::prefix('pms')->group(function () {
    Route::get('/login', [PMS\Auth\LoginController::class, 'showLoginForm'])->name('pms.form');
    Route::post('/login', [PMS\Auth\LoginController::class, 'login'])->name('pms.login');

    Route::get('/forgot/password', [PMS\Auth\LoginController::class, 'forgotPassword'])->name('password.request');
    Route::post('/forgot-password', [PMS\Auth\LoginController::class, 'sendResetLink'])->name('pms.forgot.password.send');
    Route::get('/password/reset/{token}', [PMS\Auth\LoginController::class, 'showResetForm']);
    Route::post('/reset-password', [PMS\Auth\LoginController::class, 'resetPassword'])->name('password.update');




    







    Route::middleware(['auth:admin', \App\Http\Middleware\SessionTimeout::class])->group(function () {

        Route::get('/dashboard', [PMS\DashboardController::class, 'dashboard'])->name('pms.dashboard');

        Route::get('company/list', [PMS\Company\CompanyController::class, 'index'])->name('pms.company.list');
        Route::get('company/form/{id?}', [PMS\Company\CompanyController::class, 'form'])->name('pms.company.form');
        Route::post('company/save', [PMS\Company\CompanyController::class, 'save'])->name('pms.company.save');
        Route::put('company/toggle-status/{id}', [PMS\Company\CompanyController::class, 'toggleStatus'])->name('pms.company.toggle-status');
        Route::delete('company/delete/{id}', [PMS\Company\CompanyController::class, 'delete'])->name('pms.company.delete');
        Route::post('company/multidelete', [PMS\Company\CompanyController::class, 'multiDelete'])->name('pms.company.multidelete');


        Route::get('user/list', [PMS\User\UserController::class, 'index'])->name('pms.user.list');
        Route::get('user/form/{id?}', [PMS\User\UserController::class, 'form'])->name('pms.user.form');
        Route::post('user/save', [PMS\User\UserController::class, 'save'])->name('pms.user.save');
        Route::put('user/toggle-status/{id}', [PMS\User\UserController::class, 'toggleStatus'])->name('pms.user.toggle-status');
        Route::delete('user/delete/{id}', [PMS\User\UserController::class, 'delete'])->name('pms.user.delete');
        Route::post('user/multidelete', [PMS\User\UserController::class, 'multiDelete'])->name('pms.user.multidelete');
       

        Route::get('shorturl/list', [PMS\ShortUrl\ShortUrlController::class, 'index'])->name('pms.shorturl.list');
        Route::get('shorturl/form/{id?}', [PMS\ShortUrl\ShortUrlController::class, 'form'])->name('pms.shorturl.form');
        Route::post('shorturl/save', [PMS\ShortUrl\ShortUrlController::class, 'save'])->name('pms.shorturl.save');
        Route::put('shorturl/toggle-status/{id}', [PMS\ShortUrl\ShortUrlController::class, 'toggleStatus'])->name('pms.shorturl.toggle-status');
        Route::delete('shorturl/delete/{id}', [PMS\ShortUrl\ShortUrlController::class, 'delete'])->name('pms.shorturl.delete');
        Route::post('shorturl/multidelete', [PMS\ShortUrl\ShortUrlController::class, 'multiDelete'])->name('pms.shorturl.multidelete');


         
        Route::get('invitation/list', [PMS\Invitation\InvitationController::class, 'index'])->name('pms.invitation.list');
        Route::get('invitation/form/{id?}', [PMS\Invitation\InvitationController::class, 'form'])->name('pms.invitation.form');
        Route::post('invitation/save', [PMS\Invitation\InvitationController::class, 'save'])->name('pms.invitation.save');
        Route::put('invitation/toggle-status/{id}', [PMS\Invitation\InvitationController::class, 'toggleStatus'])->name('pms.invitation.toggle-status');
        Route::delete('invitation/delete/{id}', [PMS\Invitation\InvitationController::class, 'delete'])->name('pms.invitation.delete');
        Route::post('invitation/multidelete', [PMS\Invitation\InvitationController::class, 'multiDelete'])->name('pms.invitation.multidelete');
        


        Route::get('/logout', [PMS\Auth\LoginController::class, 'logout'])->name('pms.logout');
        Route::get('/changepassword', [PMS\Auth\LoginController::class, 'changepassword'])->name('pms.changepassword.form');
        Route::post('/changepassword', [PMS\Auth\LoginController::class, 'changepasswordsubmit'])->name('pms.changepasswordsubmit.submit');

        Route::get('/404', function () {
            return view('pms.layouts.404');
        })->name('pms.404');
    });
});
