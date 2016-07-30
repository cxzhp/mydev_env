<?php


$time = time();
$int = $_SERVER['argv'][1];


$str_encode = slightech_encode($int,$time);
$str_decode = slightech_decode($str_encode,$time);

echo "str_encode:".$str_encode."\n";
echo "str_decode:".$str_decode."\n";


function slightech_encode($int_value,$int_timestamp){
	$factor = 29611;
	$time_factor = '1'.substr($int_timestamp,-5);
	$str_encode = dechex($int_value + $factor + $time_factor);
	return $str_encode;
}


function slightech_decode($str_encode,$int_timestamp){
	$factor = 29611;
	$time_factor = '1'.substr($int_timestamp,-5);
	$int_value = hexdec($str_encode) - $factor - $time_factor;
	return $int_value;
}










/* vim: set tabstop=4 shiftwidth=4 expandtab: */
