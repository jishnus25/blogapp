<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BlogController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [BlogController::class, 'index'])->name('index'); 
Route::get('/admin', [AuthController::class, 'LoginForm'])->name('LoginForm'); 

Route::post('/admin/login', [AuthController::class, 'login'])->name('admin.login'); 
Route::post('/admin/logout', [AuthController::class, 'logout'])->middleware('check.cookie')->name('admin.logout');
Route::get('/create-blog', [BlogController::class, 'create'])->middleware('check.cookie')->name('create.blog');
Route::post('/blog/store', [BlogController::class, 'store'])->middleware('check.cookie')->name('blogs.store');
Route::get('/manage-blog', [BlogController::class, 'manage'])->middleware('check.cookie')->name('manage.blog'); 
Route::get('/blog', [BlogController::class, 'blog'])->middleware('check.cookie')->name('blog');
Route::get('/blogs/{id}/edit', [BlogController::class, 'edit'])->middleware('check.cookie')->name('blogs.edit');
Route::put('/blogs/{id}/update', [BlogController::class, 'update'])->middleware('check.cookie')->name('blogs.update');
Route::delete('/blogs/{id}/delete', [BlogController::class, 'destroy'])->middleware('check.cookie')->name('blogs.delete');
Route::get('/blog/{id}', [BlogController::class, 'fullblog'])->name('blogs.show');
Route::get('/blogs/search', [BlogController::class, 'search'])->name('blogs.search');
Route::get('/blogs/filter', [BlogController::class, 'filter'])->name('blogs.filter');


// Route::get('/', [BlogController::class, 'index'])->name('index');


// Route::get('/admin', [AuthController::class, 'LoginForm'])->name('LoginForm');
// Route::post('/admin/login', [AuthController::class, 'login'])->name('admin.login');
// Route::post('/admin/logout', [AuthController::class, 'logout'])->name('admin.logout');
// Route::get('/blog/{id}', [BlogController::class, 'fullblog'])->name('blogs.show');
// Route::get('/blogs/search', [BlogController::class, 'search'])->name('blogs.search');
// Route::get('/blogs/filter', [BlogController::class, 'filter'])->name('blogs.filter');
// Route::get('/blog', [BlogController::class, 'blog'])->name('blog');


// Route::middleware('auth:sanctum')->group(function () {
//     Route::get('/create-blog', [BlogController::class, 'create'])->name('create.blog');
//     Route::post('/blog/store', [BlogController::class, 'store'])->name('blogs.store');
//     Route::get('/manage-blog', [BlogController::class, 'manage'])->name('manage.blog');
//     Route::get('/blogs/{id}/edit', [BlogController::class, 'edit'])->name('blogs.edit');
//     Route::put('/blogs/{id}/update', [BlogController::class, 'update'])->name('blogs.update');
//     Route::delete('/blogs/{id}/delete', [BlogController::class, 'destroy'])->name('blogs.delete');
// });





require __DIR__ . '/auth.php';
