<?php


require_once "vendor/autoload.php";
use App\classes\Home;
use App\classes\FullName;

$home = new Home();

if (isset($_GET['page']))
{
    if ($_GET['page'] == 'home')
    {
        $home->index();
    }
    elseif ($_GET['page'] == 'about')
    {
        $home->about();
    }
    elseif ($_GET['page'] == 'portfolio')
    {
        $home->portfolio();
    }
    elseif ($_GET['page'] == 'gallery')
    {
        $home->gallery();
    }
    elseif ($_GET['page'] == 'contact')
    {
        $home->contact();
    }
    elseif ($_GET['page'] == 'detail')
    {
        $home->detail($_GET['id']);
    }
}


elseif ($_POST['full_name_btn'])
{
    $fullName = new FullName($_POST);
    $fullName->index();
}

