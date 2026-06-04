<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MobilController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PesananController;
use App\Http\Controllers\HomeController;

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::middleware(['auth','admin'])->group(function () {

    Route::get('/dashboard-admin',
        [DashboardController::class,'index'])
        ->name('dashboard.admin');

    Route::resource('mobil', MobilController::class);

});

require __DIR__.'/auth.php';

Route::get('/beranda', [HomeController::class, 'index'])
    ->name('beranda');

Route::middleware('auth')->group(function () {
    Route::get('/pesanan/create/{mobil}',
        [PesananController::class,'create'])
        ->name('pesanan.create');

    Route::post('/pesanan/store',
        [PesananController::class,'store'])
        ->name('pesanan.store');
});

Route::patch(
    '/admin/pesanan/{pesanan}/status',
    [PesananController::class, 'updateStatus']
)->name('pesanan.status');

Route::get('/', [HomeController::class,'index']);

Route::get('/galeri', [HomeController::class,'galeri'])
    ->name('galeri');

Route::get('/detail/{mobil}',
    [HomeController::class,'detail'])
    ->name('detail');
Route::get('/tentang',
    [HomeController::class, 'tentang'])
    ->name('tentang');