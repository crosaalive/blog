<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends CommonController {
    public function index(){

    	$k="11111111111111";
    	$this->assign("k",$k);
    	$this->display();
    }

    // public function catList(){
    //     $this->display();
    // }

    // public function catForm(){
    // 	$this->display();
    // }
}