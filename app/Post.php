<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = [
        'title', 'description', 'content','image','cate_id','author_id'
    ];

    public function category(){
        return $this->belongsTo(Category::class,'cate_id');
    }

    public function user(){
        return $this->belongsTo(User::class,'author_id');
    }
}
