<?php


require_once "vendor/autoload.php";
use App\classes\HelloWorld;


$helloWorld = new HelloWorld();


    if($_GET['page'] == 'home')
    {
        $helloWorld->index();
    }


    elseif($_GET['page'] == 'about')
    {
        $helloWorld->about();
    }


    elseif($_GET['page'] == 'contact')
    {
        $helloWorld->contact();
    }

    elseif($_GET['page'] == 'portfolio')
    {
        $helloWorld->portfolio();
    }