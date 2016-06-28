<?php
/**
 * cat Model
 */
namespace Admin\Model;
use Think\Model;
class CatModel extends Model{
	// protected $tableName = 'cat'; 
	static	public function catList(){
		$list = D('cat')->field('cat_id,parent_id,cat_name,sort')->select();
		return $list;
	}
}

?>