<?php


namespace App\classes;

class HelloWorld
{
    public $message, $x, $data = [], $y, $z, $firstName, $lastName, $fullName;

    public function __construct()
    {
        $this->message = "Hello World";
    }

    public function index()
    {

        $this->students = [
            0=> [
                'name'      => 'Siam',
                'email'     => 'siam@gmail.com',
                'mobile'    => '01332323232'
            ],

            1=> [
                'name'      => 'Ratul',
                'email'     => 'ratul@gmail.com',
                'mobile'    => '0122323662'
            ],

            2=> [
                'name'      => 'Nasrin',
                'email'     => 'nasrin@gmail.com',
                'mobile'    => '01943244232'
            ]
        ];



        $students = $this->students;
        include "views/home.php";


        


        // foreach($this->students as $student)
        // {
        //     echo $student['name'].' '.$student['email'].' '.$student['mobile'].'<br/>';
        // }


        // $this->data = [10,20,30,'Rakib','Siam',25.22,true];
        // foreach($this->data as $item)
        // {
        //     echo $item.' ';
        // }
    }
}