<?php


namespace App\classes;


class Series
{
    public $startingNumber, $endingNumber, $result, $i;

    public function __construct($post)
    {
        $this->startingNumber = $post['starting_number'];
        $this->endingNumber = $post['ending_number'];

    }

    public function index()
    {
        for ($this->i = $this->startingNumber; $this->i <= $this->endingNumber; $this->i++)
        {
            $this->result .= $this->i.' ';
        }
        header("Location: web.php?page=gallery&&result=$this->result");
    }
}