<?php
/**
 * article model
 */
namespace Admin\Model;
use Think\Model;
class ArticleModel extends Model{

	protected $_validate = array(
        array('title', 'require', '文章标题不能为空', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        // array('content', '', '标识已经存在', self::MUST_VALIDATE, 'unique', self::
    );
	/**
	 * 文章列表 / 获取一条文章记录
	 */
	static public function articleList($id=''){
		if ($id) {
			$list = D('article')
				->field('id,title,content,user_id,user_name,recycle,created,click,cat_id,is_show')
				->where(array('id'=>"$id"))
				->find();
		}else{
			$list = D('article')
				->field('id,title,user_id,user_name,recycle,created,click,cat_id')
				->select();
				}
		return $list;
	}
/**
 *添加文章
 */
	static public function addData($data=''){
		$result = D('article')->add($data);
		return $result;
	}
	/**
	 * 根据id修改文章
	 */
	static public function saveData($id='',$data=''){
		$result = D('article')->where($id)->save($data);
		return $result;
	}
}