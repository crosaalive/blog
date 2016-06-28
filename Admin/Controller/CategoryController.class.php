<?php
namespace Admin\Controller;
use Think\Controller;
use Admin\Model\CatModel;
class CategoryController extends CommonController{
	/**
	 * 分类列表
	 */
    public function index(){
    	$this->assign('list',CatModel::catList());//获取分类列表
    	$this->display();
    }

/**
 * 添加分类表单
 */
    public function catForm(){
    	$this->assign('list',CatModel::catList());//获取分类列表
    	$this->display();
    	
    }
/**
 * 添加/编辑 分类处理
 *t
 */
    public function formHandle(){
    	$cat 				        = M('cat');
    	$data['cat_id']	    = I('post.cid','','intval');
    	$data['parent_id']  = I('post.cat_id','0','intval');
    	$data['cat_name']  	= I('post.cat_name','0');
    	$data['sort'] 		  = I('post.cat_id','0','intval');
    	if ($data['cat_id']) {		//有$cat_id  则更新,没有则新增
    		  $cat->save($data);
    	}elseif ($data['cat_name']) {
    		  $result = $cat->add($data);
          if ($result) {
              $this->success('添加成功','index',1);
          } else {
            $this->error('添加失败','index',2);
          }
    	}
    	$this->redirect('index');
    }
/**
 * 分类编辑
 */
   	public function edit(){
   		$data['cat_id']      = I('cat_id','0','intval');
   		$data['parent_id']   = I('parent_id','0','intval');
    	$data['cat_name']    = I('cat_name','0');
    	$data['sort']        = I('cat_id','0','intval');
    	$this->assign('data',$data);
    	$this->assign('list',CatModel::catList());
    	$this->display();
   	}
/**
 * 删除处理
 */
   	public function delHandle(){
   		$data = M('cat');
   		$id   = I('post.cat_id','','intval');
   		if ($id) {
   			$result = $data->where(array('cat_id' =>"$id"))->delete();//根据分类id删除记录
   			$this->ajaxReturn($result);
   		} else{
   			$this->ajaxReturn(0);
   		}
   	}

}