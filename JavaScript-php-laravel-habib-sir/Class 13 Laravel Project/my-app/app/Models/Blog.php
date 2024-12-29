<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    public static $blogs = [];

    public static function getAllBlog()
    {
        self::$blogs = [
            0=> [
                'id'            => 1,
                'title'         => 'This is blog one',
                'description'   => 'This is blog description one',
                'image'         => 'img/pic 2.jpg'
            ],
            1=> [
                'id'            => 2,
                'title'         => 'This is blog two',
                'description'   => 'This is blog description two',
                'image'         => 'img/pic 3.jpg'
            ],
            2=> [
                'id'            => 3,
                'title'         => 'This is blog three',
                'description'   => 'This is blog description three',
                'image'         => 'img/pic 4.jpg'
            ],
        ];
        return self::$blogs;
    }

    public static function getBlogById($id)
    {
        foreach (self::getAllBlog() as $blog)
        {
            if ($blog['id']==$id)
            {
                return $blog;
            }
        }
    }
}
