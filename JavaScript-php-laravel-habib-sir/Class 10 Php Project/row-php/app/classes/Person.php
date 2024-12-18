<?php


namespace App\classes;
use App\classes\Auth;
use App\classes\ExampleOne;

class Person extends Auth implements ExampleOne
{
    public $name = "Sojib";
    protected $email = "sojib@gmail.com";
    private $mobile = "015435435345";


    public function walk()
    {
        $this->password = '55555';
        echo $this->password;
    }

    protected function run()
    {
        echo "In run";
    }

    private function speak()
    {
        echo "In speak";
    }

    public function one()
    {
        // TODO: Implement one() method.
    }

    public function two()
    {
        // TODO: Implement two() method.
    }

    public function three()
    {
        // TODO: Implement three() method.
    }
}