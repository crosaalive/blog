<?php
namespace Index\Controller;
use Think\Controller;
use Think\Page;
class IndexController extends Controller {
    public function index(){
    	$nav 	 = M('nav')->limit('0,6')->order('sort desc')->select();
    	$cat = M('cat')->limit('0,10')->select();
    	$link    = M('link')->order('sort desc')->select();
    	$article   = M('article')->where('recycle=0')
					    	->order('created desc')
					    	->limit('0,7')
					    	->select();
		$hot   = M('article')->where('recycle=0')
					    	->order('click desc')
					    	->limit('0,8')
					    	->select();
		$this->assign('hot',$hot);
    	$this->assign('nav',$nav);
    	$this->assign('article',$article);
    	$this->assign('link',$link);
    	$this->assign('cat',$cat);
    	$this->display();
    }
}