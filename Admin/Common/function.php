<?php
/**
 * 递归函数,用于分类合并
 */
	function recursion($data, $id=0) {
	 	$list = array();
	 	foreach($data as $v) {
	 		if($v['pid'] == $id) {
	 			$v['son'] = recursion($data, $v['id']);
	 			if(empty($v['son'])) {
	 				unset($v['son']);
	 			}
	 			array_push($list, $v);
	 		}
		}
	 return $list;
	}

	/**
  * 格式化字节大小
  * @param  number $size      字节数
  * @param  string $delimiter 数字和单位分隔符
  * @return string            格式化后的带单位的大小
  */
 function format_bytes($size, $delimiter = '') {
     $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
     for ($i = 0; $size >= 1024 && $i < 5; $i++) $size /= 1024;
     return round($size, 2) . $delimiter . $units[$i];
 }
