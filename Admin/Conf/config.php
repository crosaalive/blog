<?php
return array(
	// 'SHOW_PAGE_TRACE'	  =>  true, 	// 显示页面Trace信息
	'HTML_CACHE_ON'       =>  false, 		// 开启静态缓存
	'TMPL_CACHE_ON'       =>  false,       // 是否开启模板编译缓存,
	"DEFAULT_CHARSET"     =>  'utf-8', 		//默认页面输出编码
 	'TMPL_DETECT_THEME'     => false,       // 自动侦测模板主题
 	'TMPL_TEMPLATE_SUFFIX'  => '.html',     // 默认模板文件后缀
	'LAYOUT_ON'           =>  true,   //开启模板布局     默认是关闭状态 详见ThinkPHP手册的"模板"
	'LAYOUT_NAME'         =>  '/Common/layout'
	//'配置项'=>'配置值'
	//后台模板
);