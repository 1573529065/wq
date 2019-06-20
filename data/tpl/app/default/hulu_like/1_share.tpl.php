<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/share.css">
<script type="text/Javascript" src="<?php echo MODULE_URL;?>public/jquery.min.js"></script>

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'推广分享','touming.png');?>
<!--顶部菜单导航结束-->


<div id="share_title"><div class="share_title_p">数据统计</div></div>

<!--开始-->
<div id="share_one">

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">推广人数</div>
<div class="share_one_p2"><?php  echo $one;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">可领佣金</div>
<div class="share_one_p2"><?php  echo $two;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">总共佣金</div>
<div class="share_one_p2"><?php  echo $three;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

</div>
<!--结束-->

<div id="share_title"><div class="share_title_p">新增推广人数</div></div>

<!--开始-->
<div id="share_one">

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">今天推广</div>
<div class="share_one_p2"><?php  echo $four;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">3天推广</div>
<div class="share_one_p2"><?php  echo $five;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">7天推广</div>
<div class="share_one_p2"><?php  echo $six;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

</div>
<!--结束-->


<div id="share_title"><div class="share_title_p">新增充值金额</div></div>

<!--开始-->
<div id="share_one">

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">今天充值</div>
<div class="share_one_p2"><?php  echo $seven;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">昨天充值</div>
<div class="share_one_p2"><?php  echo $eight;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

<div class="share_one_style">
<div class="share_one_p">
<div class="share_one_p1">历史充值</div>
<div class="share_one_p2"><?php  echo $nine;?></div>
<div class="share_one_up1"></div>
<div class="share_one_up2"></div>
</div>
</div>

</div>
<!--结束-->
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>
