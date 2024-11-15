<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;

    
    protected $fillable = [
        'name',     
        'author',   
        'content',  
        'date',     
        'image'    
    ];

  
    protected $table = 'blog_posts';
}
