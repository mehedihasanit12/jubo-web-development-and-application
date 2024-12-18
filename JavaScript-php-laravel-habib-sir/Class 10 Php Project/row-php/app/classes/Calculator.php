<?php


namespace App\classes;


class Calculator
{
    public $firstNumber, $secondNumber, $choice, $result;

    public function __construct($post)
    {
        $this->firstNumber  = $post['first_number'];
        $this->secondNumber = $post['second_number'];
        $this->choice       = $post['choice'];
    }

    public function index()
    {
        switch ($this->choice)
        {
            case '+':
                $this->result = $this->addition();
                break;
            case '-':
                $this->result = $this->subtraction();
                break;
            case '*':
                $this->result = $this->multiplication();
                break;
            case '/':
                $this->result = $this->division();
                break;
            case '%':
                $this->result = $this->remainder();
                break;
        }
        header("Location: web.php?page=about&&result=$this->result");
    }

    public function addition()
    {
        $this->result = $this->firstNumber + $this->secondNumber;
        return $this->result;
    }

    public function subtraction()
    {
        $this->result = $this->firstNumber - $this->secondNumber;
        return $this->result;
    }

    public function multiplication()
    {
        $this->result = $this->firstNumber * $this->secondNumber;
        return $this->result;
    }

    public function division()
    {
        $this->result = $this->firstNumber / $this->secondNumber;
        return $this->result;
    }

    public function remainder()
    {
        $this->result = $this->firstNumber % $this->secondNumber;
        return $this->result;
    }
}