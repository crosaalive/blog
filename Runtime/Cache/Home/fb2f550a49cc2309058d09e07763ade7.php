<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title><?php echo ($cid['cat_name']); ?></title>
	<link rel="stylesheet" href="/xblog/Public/css/index.css">
	<script type="text/javascript" src="/xblog/Public/js/jquery.min.js"></script>
	<script>
		$(".hot").mouseover(function(){
  			$(this).css("background-color","#f77825");
		});
		// $(".hot").mouseover(function(){
  		// 	$(this).css("background-color","#f77825");
		// });
	</script>
</head>
<body>

	<div class="top">
		<div class="logo"><a href="#"><img src="/xblog/Public/images/logo.jpg" alt=""></a></div>
		<div class="nav">
			<ul>
				<?php if(is_array($nav)): foreach($nav as $key=>$v): ?><li><a href="<?php echo ($na['url']); ?>"><?php echo ($v['name']); ?></a></li><?php endforeach; endif; ?>

			</ul>
		</div>
	</div>

	<div class="clear"></div>

	<div class="content">
		<div class="content_l">
			<div class="slide">
					<li><a href=""><img src="/xblog/Public/images/a1.gif" alt=""></a></li>
					<li><a href=""><img src="/xblog/Public/images/a2.gif" alt=""></a></li>
					<li><a href=""><i<!-- mg src="/xblog/Public/images/a1.gif" alt=""></a></li> -->
			</div>
			<br>
			<div class="clear"></div>
			<div class="list"><h2><?php echo ($cid['cat_name']); ?>  列表</h2></div>
			<br>

			
		<?php if(is_array($article)): foreach($article as $key=>$arti): ?><div class="article">
				<div class="thumb"><a href=""><img src="/xblog/Public/images/01.jpg" alt=""></a></div>
				<div class="detail">
					<div>
							<li> <h3><a href="<?php echo U('Home/Index/content',array('id'=>$arti['id']));?>"><?php echo ($arti['title']); ?></a></h3> </li>

							<li class="detail_a"><?php echo html_entity_decode($arti['content']); ?></li>

							<li><span><?php echo ($arti['cat_name']); ?></span><span>时间 <?php echo (date('Y-m-d h',$v['created'])); ?></span>
							<span >点击(<?php echo ($arti['click']); ?>)</span></li>
					</div>	
				</div>
			</div><?php endforeach; endif; ?>

			<!-- <div class="article">
				<div class="thumb"><a href=""><img src="/Public/images/01.jpg" alt=""></a></div>
				<div class="detail">
					<div>
							<li> <h3>Stack Overflow is a community of 4.7 million programmersStack Overflow is a community of 4.7 million programmers</h3> </li>

							<li class="detail_a">Stack Overflow is a community of 4.7 million programmers, just like you, helping each other. Stack Overflow is a community of 4.7 million programmers, just like you, helping each other. Stack Overflow is a community of 4.7 million programmers, just like you, helping each other. Stack Overflow is a community of 4.7 million programmers, just like you, helping each other. Stack Overflow is a community of 4.7 million programmers, just like you, helping each other. Stack Overflow is a community of 4.7 million programmers, just like you, helping each other. </li>

							<li><span>分类4444</span><span>时间: 1970-01-01 08 </span>
							<span >点击(12313)</span></li>
					</div>	
				</div>
			</div>
		</div>
 -->
 <br>
 <div class="page">
   <?php echo $page; ?>
   </div>
 </div>

<div class="middle"></div>	
		<div class="content_r">
			<div class="cat_r">
			<!-- 关注我 -->
			<div class="focus">
				<h3>关注我</h3>
				<ul>
					<li><a href=""><img src="/xblog/Public/images/xl.jpg" alt="联系邮箱"></a></li>
					<li><a href=""><img src="/xblog/Public/images/yx.jpg" alt="QQ群讨论"></a></li>
					<li><a href="https://github.com/"><img src="/xblog/Public/images/img03.gif" alt="联系邮箱"></a></li>
				</ul>
			</div>
			<!-- 关注我结束 -->
			<!-- ad_1 -->
			<div class="banner_1"><img src="/xblog/Public/images/ad_1.jpg" alt=""></div>
			<!-- 栏目导航 -->
					<div class="cat_title"><h3>栏目导航</h3></div>

					<div class="category">
							<li>
							<?php if(is_array($cat)): foreach($cat as $key=>$cate): ?><li><a href="<?php echo U('Home/Index/catList',array('cid'=>$cate['cid']));?>"><?php echo ($cate['cat_name']); ?></a></li><?php endforeach; endif; ?>
							</li>
					</div>
			</div>
			<!-- ad_2 -->
			<div class="banner_2">
				<p><img src="/xblog/Public/images/ad002.gif" alt=""></p>
			</div>

			<!-- 热门文章 -->
			<div class="tab">
				<li id="hot" class=""><h3>热门文章</h3></li>
			</div>
			<div class="hot_list">


				<?php if(is_array($hot)): foreach($hot as $key=>$h): ?><li><a href="<?php echo U('Home/Index/content',array('id'=>$h['id']));?>">
					<?php echo $h['title']; ?>
					</a></li><?php endforeach; endif; ?>
			</div>
			<!-- ad_3 -->
			<div class="banner_3">
				<a href=""><img src="/xblog/Public/images/a004.gif" alt=""></a>
			</div>
			<!-- 友情链接 -->
			<div class="link">
				<h3>
					<a href="#">友情链接</a>
				</h3>
			</div>
			<div class="url">
				<?php if(is_array($link)): foreach($link as $key=>$lin): ?><li><a href="<?php echo ($lin['url']); ?>"><?php echo ($lin['desc']); ?></a></li><?php endforeach; endif; ?>
<!-- 				<li><a href="#">测试</a></li> -->
			</div>


		</div>
	</div>
	
	<div class="clear"></div>
	<br>
<div class="footer"><p><a href="http://www.miitbeian.gov.cn"> &nbsp;粤ICP备15092204号</a></p></div>

</body>
</html>