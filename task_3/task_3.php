<?php


class Figure
{
    protected $type = '';

    public function getType()
    {
        return $this->type;
    }
}

class Rectangle extends Figure
{
    private $length,
            $width;

    function __construct($length = 0, $width = 0)
    {
        $this->type = 'Rectangle';
        $this->length = $length;
        $this->width = $width;
    }
    function getArea()
    {
        return $this->length * $this->width; //"Площадь квадрата 
    }
}

class Circle extends Figure
{
    private $radius;

    function __construct($r = 0)
    {
        $this->type = 'Circle';
        $r = floatval($r);
        $this->radius = $r;
    }
    function getArea()
    {
        return round(M_PI * $this->radius * $this->radius); //"Площадь круга
    }
}

class Triangle extends Figure
{
    private $a,
            $b,
            $c;

    function __construct($a = 0, $b = 0, $c = 0)
    {
        $a = floatval($a);
        $b = floatval($b);
        $c = floatval($c);
        $p = ($a + $b + $c) / 2; // Полупериметр
        if (($p > $a) && ($p > $b) && ($p > $c)) {
            $this->a = $a;
            $this->b = $b;
            $this->c = $c;
            $this->type = 'Triangle';
        }
    }
    function getArea()
    {
        $p = ($this->a + $this->b + $this->c) / 2;
        return  round(sqrt($p * ($p - $this->a) * ($p - $this->b) * ($p - $this->c))); // "Площадь треугольника
    }
}

$fd = fopen("result.txt", 'a+') or die("не удалось создать файл");

switch (mt_rand(1, 3)) {
    case '1':
        $rectangle = new Rectangle(mt_rand(1, 20), mt_rand(1, 10));
        $str = $rectangle->getArea() . "\r\n";
        fwrite($fd, $str);
        fclose($fd);
        break;
    case '2':
        $circle = new Circle(mt_rand(1, 20));
        $str = $circle->getArea() . "\r\n";
        fwrite($fd, $str);
        fclose($fd);
        break;
    case '3':
        start: 
        $a = mt_rand(1, 20);
        $b = mt_rand(1, 20);
        $c = mt_rand(1, 20);
        if ($a < $b + $c && $b < $a + $c && $c < $a + $b) {
            $triangle = new Triangle($a, $b, $c);
            $str = $triangle->getArea() . "\r\n";
            fwrite($fd, $str);
            fclose($fd);
            break;
        } else {
            goto start;
        }
        break;
}

$f = file('result.txt');
arsort($f, $sort_flags = SORT_NUMERIC);

foreach ($f as $key => $val) {
    echo  "Площадь ".$key.' = '.$val.'<br/>';
}