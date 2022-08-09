<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Users;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::resource('kontrak_matakuliah', App\Http\Controllers\API\KontrakMatakuliahController::class);
Route::resource('absen', App\Http\Controllers\API\AbsenController::class);
Route::resource('absen_mahasiswa', App\Http\Controllers\API\AbsenMahasiswaController::class);
Route::resource('matakuliah', App\Http\Controllers\API\MatakuliahController::class);
Route::resource('jadwal', App\Http\Controllers\API\JadwalController::class);
Route::resource('users', App\Http\Controllers\API\UsersController::class);
Route::resource('semester', App\Http\Controllers\API\SemesterController::class);
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
