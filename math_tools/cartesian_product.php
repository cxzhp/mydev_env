<?php
/*==================================
*   Copyright (C) 2016 Baidu.com, Inc. All rights reserved.
*   
*   filename	:	cartesian_product.php
*   author		:	zhouping01
*   create_time	:	2016-04-03
*   desc		:	笛卡尔积  (di ca er ji)
*
===================================*/




$arr = array(
             'master,slaver,editor',
             'collectTask,doTask',
             );


$arr = getResultDika($arr);
formatResultDika($arr);

function formatResultDika($array){
    $i = 0;
    foreach($array as $arrDoList){
        $i++;
       
       echo "$i ".implode("\t",$arrDoList); 
       echo "\n";
    }
}

function getResultDika($array){
    foreach($array as $strElements){
        $arrElements[] = explode(',',$strElements);
    }

    return combineDika($arrElements);
}


/**
 * 所有数组的笛卡尔积  *
 * @param unknown_type $arrElements
 */
function combineDika($arrElements) {

    $cnt = count($arrElements);
    $result = array();
    foreach($arrElements[0] as $item) {
        $result[] = array($item);
    }
    for($i = 1; $i < $cnt; $i++) {
        $result = combineArray($result,$arrElements[$i]);
    }
    return $result;
}

/**
 * 两个数组的笛卡尔积  *
 * @param unknown_type $arr1
 * @param unknown_type $arr2
 */
function combineArray($arr1,$arr2) {
    $result = array();
    foreach ($arr1 as $item1) {
        foreach ($arr2 as $item2) {
            $temp = $item1;
            $temp[] = $item2;
            $result[] = $temp;
        }
    }
    return $result;
}







/* vim: set tabstop=4 shiftwidth=4 expandtab: */
