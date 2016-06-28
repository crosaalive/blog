<?php
namespace Admin\Controller;
use Think\Controller;
use Admin\Model\CatModel;
use Admin\Model\ArticleModel;
use Think\page;
class ArticleController extends CommonController{
/**
 *文章列表 
 */
	public function index(){
		$_SESSION['user_name']='admin';
		// echo "<pre>";	//2016-6-27 16:45:34 插入数据库的内容要执行过滤或转义
		// $con = M()->query('select * FROM z_cat');
		// $b = array_map('mysql_real_escape_string', $con); //过滤引号等字符
		// print_r($a);
		$article    = M('article');
		$count      = $article->where('recycle=0')->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,5);// 实例化分页类 传入总记录数和每页显示的记录数(5)
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list 		= $article->where('recycle=0')
						->order('created desc')
						->limit($Page->firstRow.','.$Page->listRows)
						->select();
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display();
	}

/**
 * 文章添加表单
 */
	public function addArticle(){
		$this->assign('list',CatModel::catList());//获取分类列表
		$this->display();
	}

// 编辑文章
	public function editArticle(){
		$id 		= I('id','','intval');
		$result =ArticleModel::articleList($id);//获取分一条文章记录
		if ($id && $result) {
			$this->assign('content',$result);
			$this->assign('list',CatModel::catList());//获取分类列表
			$this->display();
		} else{
			$this->error('无效参数/或文章不存在','index',2);
		}		
	}

/**
 * 文章发布处理
 */
	public function addHandle(){
		$s 					=D('article');
		$data['title'] 		= I('post.title','00');
		$data['content'] 	= I('post.content','00');
		$data['cat_id'] 	= I('post.cat_id','','intval');
		$data['cat_name']  	= I('post.cat_name','');
		$data['user_name']	= $_SESSION['user_name'];
		$data['user_id']	= $_SESSION['user_id'];
		$data['is_show']	= I('post.is_show','0','intval');
		$data['created']	= time();
			if (!$s->create($data)){// 对$data['title']数据进行验证
				$this->error('添加失败! 文章标题为空','addArticle',1);
     			// exit($s->getError());
			}else{
		     	$result = ArticleModel::addData($data);//添加文章
				if ($result) {
					$this->success('添加成功','index',2);
				} else{
					$this->error('添加失败','index',3);
			}
		}	
	}
/**
 * 文章编辑处理
 */
	public function editHandle(){
		$is_edit			= I('post.edit','','intval');
		$id['id']			= I('post.id','','intval');
		$data['title'] 		= I('post.title','');
		$data['content'] 	= I('post.content','0');
		$data['cat_id'] 	= I('post.cat_id','','intval');
		$data['cat_name']  	= I('post.cat_name','');
		$data['is_show']	= I('post.is_show','0','intval');
		$data['modified']	= time();
		if ($is_edit && $id['id']) {
			$res = ArticleModel::saveData($id,$data);//编辑保存
			if ($res) {
					$this->success('编辑成功','index',2);
				} else{
					$this->error('编辑失败','index',2);
			} 
		} else{
			$this->error('文章非法编辑','index',1);
		}
	}

/**
 * 文章删除处理
 */
	public function delArticle(){
		$data = M('article');
   		$id   = I('post.a_id','','intval');
   		if ($id) {
   			$result = $data->where(array('id' =>"$id"))->delete();//根据文章id删除记录
   			$this->ajaxReturn($result);
   		} else{
   			$this->ajaxReturn(0);
   		}
	}
}

