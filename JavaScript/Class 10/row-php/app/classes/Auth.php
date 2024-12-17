<?php


namespace App\classes;


class Auth
{
    public $username = "admin";
    protected $password = "123456" ;
    private $accessLabel = "Main Admin";

    public function login()
    {
        echo "In login";
    }

    protected function register()
    {
        echo "In register";
    }

    private function logout()
    {
        echo "In logout";
    }
}