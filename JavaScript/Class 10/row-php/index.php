<?php


require_once "vendor/autoload.php";

use App\classes\Home;
use App\classes\Person;



//$person = new Person();
//echo $person->walk();

$home = new Home();
$home->index();