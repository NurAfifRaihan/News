<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
#mengimport controller student
use App\Http\Controllers\NewsController;
# panggil controller
use App\Http\Controllers\AuthController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

# Route news
# Method GET
Route::get('/news/{id}', [NewsController::class, 'show']);
Route::get('/news', [NewsController::class, 'index']);
Route::get('/news/category/{category}', [NewsController::class, 'cari']);
Route::get('/news/search/{title}', [NewsController::class, 'search']);

# Method POST
Route::post('/news', [NewsController::class, 'store']);
Route::put('/news/{id}', [NewsController::class, 'update']);
Route::delete('/news/{id}', [NewsController::class, 'destroy']);

#bungkus route dengan middleware sanctum
Route::middleware('auth:sanctum')->group(function () {
    # Method GET, route /news
    Route::get('/news', [NewsController::class, 'index']);
    # Create student
    Route::post('/news', [NewsController::class, 'store']);
    # Update student
    Route::put('/news/{id}', [NewsController::class, 'update']);
    # Delete student
    Route::delete('/news/{id}', [NewsController::class, 'destroy']);
});

# untuk register dan login pake auth
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

