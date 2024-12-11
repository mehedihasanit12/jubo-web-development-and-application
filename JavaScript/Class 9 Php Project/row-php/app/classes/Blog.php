<?php


namespace App\classes;

class Blog
{
    public static $blogs = [];

    public static function getAllBlog()
    {
        self::$blogs = [
          0 => [
              'id'                   => 1,
              'title'                => 'This is blog title one',
              'description_one'      => 'This is blog one description one',
              'description_two'      => 'This is blog one description two',
              'image'                => 'assets/img/pic 2.jpg'
          ],
          1 => [
              'id'                   => 2,
              'title'                => 'This is blog title two',
              'description_one'      => 'This is blog one description one',
              'description_two'      => 'This is blog one description two',
              'image'                => 'assets/img/pic 3.jpg'
          ],
          2 => [
              'id'                   => 3,
              'title'                => 'This is blog title three',
              'description_one'      => 'This is blog one description one',
              'description_two'      => 'This is blog one description two',
              'image'                => 'assets/img/pic 4.jpg'
          ],
          3 => [
              'id'                   => 4,
              'title'                => 'This is blog title four',
              'description_one'      => 'This is blog one description one',
              'description_two'      => 'This is blog one description two',
              'image'                => 'assets/img/pic 5.jpg'
          ],
          4 => [
              'id'                   => 5,
              'title'                => 'This is blog title five',
              'description_one'      => 'This is blog one description one',
              'description_two'      => 'This is blog one description two',
              'image'                => 'assets/img/pic 3.jpg'
            ],
          5 => [
              'id'                   => 6,
              'title'                => 'This is blog title six',
              'description_one'      => 'This is blog one description one',
              'description_two'      => 'This is blog one description two',
              'image'                => 'assets/img/pic 2.jpg'
            ]
        ];

        return self::$blogs;
    }

    public static function getBlogById($id)
    {
        foreach (self::getAllBlog() as $blog)
        {
            if ($blog['id'] == $id)
            {
                return $blog;
                break;
            }
        }
    }
}