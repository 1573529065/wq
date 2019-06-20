<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/style.css">
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/active_view.css">

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('active'),'活动详情','touming.png');?>
<!--顶部菜单导航结束-->

<div id="view">

<div id="view_one">
<div class="view_a">活动标题：</div>
<div class="view_b"><?php  echo $active['active_title'];?></div>
</div>

<div id="view_one">
<div class="view_a">发起类型：</div>
<div class="view_b"><?php  echo getactivetype($active['active_type']);?></div>
</div>

<div id="view_one">
<div class="view_a">男生人数：</div>
<div class="view_b"><?php  echo count($join_boy);?>/<?php  echo $active['active_boy'];?>人</div>
</div>

<div id="view_one">
<div class="view_a">女生人数：</div>
<div class="view_b"><?php  echo count($join_girl);?>/<?php  echo $active['active_girl'];?>人</div>
</div>

<div id="view_one">
<div class="view_a">每人费用：</div>
<div class="view_b"><?php  echo round($active['active_money'],2);?>元</div>
</div>

<div id="view_one">
<div class="view_a">活动地点：</div>
<div class="view_b"><?php  echo $active['active_address'];?></div>
</div>

<div id="view_one">
<div class="view_a">活动时间：</div>
<div class="view_b"><?php  echo date('Y-m-d H:i',$active['active_starttime']);?> 至 <?php  echo date('m-d H:i',$active['active_endtime']);?></div>
</div>



<div id="view_one">
<div class="view_a">微信号码：</div>
<div class="view_b"><?php  echo $active['active_wechat'];?></div>
</div>

<div id="view_one">
<div class="view_a">手机号码：</div>
<a href="tel:<?php  echo $active['active_tel'];?>"><div class="view_b"><?php  echo $active['active_tel'];?></div></a>
</div>

<div id="view_two">
<div class="view_c">活动内容：</div>
<div class="view_d" onclick="alert('<?php  echo $active['active_content'];?>');"><?php  echo $active['active_content'];?></div>
</div>

</div>

<a href="<?php  echo $this->createMobileUrl('active_join',array('active_id'=>$active['active_id']));?>">
<div id="view_ok_two"><div class="view_ok_two_style">
<?php  if((empty($join))) { ?>报 名
<?php  } else if($join['join_pid']=='2') { ?>支付定金<?php  echo ($active['active_money']*$make['make_active_proportion']);?>元
<?php  } else if($join['join_pid']=='3') { ?>报名成功
<?php  } else if($join['join_pid']=='1') { ?>无法参与
<?php  } else { ?><?php  } ?>
</div></div>
</a>

<!--已参与的开始-->
<div id="active_view_join">
<div class="active_view_join_title">已参与的小伙伴：</div>
<div id="active_view_join_list">
<?php  if(is_array($joindata)) { foreach($joindata as $key => $joindata) { ?>
<div class="active_view_join_list_style">
<div class="active_view_join_list_pic"><img src="<?php  echo getavatar($_W['uniacid'],$joindata['openid']);?>"/></div>
<div class="active_view_join_list_p"><?php  echo getnickname($_W['uniacid'],$joindata['openid']);?></div>
</div>
<?php  } } ?>
</div>
</div>
<!--已参与的结束-->



<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>