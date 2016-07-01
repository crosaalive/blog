<?php
namespace Admin\Controller;
class CommonController extends MyCoreController {
	public function _initialize() {
		// unset($_SESSION['uid']);
		// unset($_SESSION['user_name']);
		if (!isset($_SESSION['user_name'])) { //没登录则跳转登录页面
			$this->redirect('Admin/Login/index');
		}

	}
}

?>