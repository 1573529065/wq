<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('update_address', TEMPLATE_INCLUDEPATH)) : (include template('update_address', TEMPLATE_INCLUDEPATH));?>

 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/my.css">
<script type="text/javascript" src="<?php echo MODULE_URL;?>template/mobile/style/public.js"></script>
<?php  if($user['is_mz'] == 1) { ?>
<?php  if(((empty($member['member_birthday']))||(empty($member['member_height']))||(empty($member['member_weight']))||(empty($member['member_wechat'])))) { ?>
<script type="text/Javascript">
$(document).ready(function(){
 $("#page_float").show();
});
</script>
<!--弹窗开始-->
<div id="page_float">

<div class="page_float_off"></div>
<div id="page_float_body">

<div class="page_float_pic">亲爱的<?php  echo $user['nickname'];?>，完善资料之后，更容易获得异性的青睐噢！</div>

<div class="page_float_p">
<div class="page_float_p_1">稍后再说</div>
<a href="<?php  echo $this->createMobileUrl('info');?>">
<div class="page_float_p_2">现在完善</div>
</a>
</div>

</div>

</div>
<!--弹窗结束-->
<?php  } else { ?><?php  } ?>
<?php  } else { ?>
<script type="text/Javascript">
$(document).ready(function(){
 $("#page_float").show();

	$(".page_float_p_1").click(function () {
		 $.post("<?php  echo $this->createMobileUrl('mianze',array('type'=>'del'));?>",
				{
					sad: 1
				},
				function (data, status) {
						window.location.reload();
				});
	});
	});
</script>
<!--弹窗开始-->
<div id="page_float">

<div id="page_float_body" style="height:70%">
<h4 style="margin-left:40%;margin-top:10px">免责声明</h4>
<div class="page_float_pic" style="width:100%;height:70%;overflow-y:auto;">
 <div style='text-align:center;'>
  <p style="font-size:15px;line-height:20px;color:gray">乐享定制 交友相亲网-免责声明 1乐享定制 交友相亲网对其用户提供的服务能否满足用户的要求和期望、服务中断与否、服务的及时性、安全性、出错发生等问题不作担保。 2对于用户通过乐享定制 交友相亲网提供的服务传送内容，乐享定制 交友相亲网已按照国家有关规定严格审查，但无法完全控制经由网站服务传送的内容。对内容的正确性、完整性或品质不作保证。因此用户在使用乐享定制 交友相亲，可能会接触到令人不快、不适当或令人厌恶的内容。在任何情况下，乐享定制 交友相亲网均不为用户经由网站服务以张贴、发送电子邮件或其他方式传输的任何内容负责。 3对于乐享定制 交友相亲网提供的各种广告信息、链接、咨询等，乐享定制 交友相亲网不保证其内容的正确性、合法性或可靠性，相关责任由广告商承担；并且，对于用户经由乐享定制 交友相亲网服务于广告商进行联系或商业往来，完全属于用户和广告商之间的行为，与乐享定制 交友相亲网没有任何关系，对于前述商业往来所产生的任何损害或损失，乐享定制 交友相亲网不负任何责任。 4对于用户上传的照片、资料、证件等，乐享定制 交友相亲网已采用相关措施进行审核，但不保证其内容的正确性、合法性或可靠性，相关责任由上传上述内容的用户负责 5用户以自己的独立判断从事与交友相关的行为，并独立承担可能产生的不利后果和责任，乐享定制 交友相亲网不承担任何法律责任。 6是否使用网站服务下载或取得任何资料应由用户自行考虑并自负风险，因任何资料的下载而导致的用户电脑系统的任何损坏或数据丢失等后果，乐享定制 交友相亲网不承担任何责任 7、乐享定制 交友相亲网对所有用户自发组织的活动、自发成立的组织不承担任何责任 8乐享定制 交友相亲网对于本网站策划发起、组织或是承办的任何用户活动(包括但不限于收取费用以及完全公益的活动)不担保一定能满足用户的需要，也不担保用户参加活动的结果 9对于用户的投诉，乐享定制 交友相亲网将认真核实，但不保证最终公之于众的投诉的真实性、合法性，对于投诉内容侵犯用户隐私权、名誉权等合法权利的，所有法律任由投诉者承担与乐享定制 交友相亲网无关 10尽管乐享定制 交友相亲网己采取相应的技术保障措施，但用户仍有可能收到各类的广告信(乐享定制 交友相亲网发送的广告信除外)或其他不以交友为目的邮件，乐享定制 交友相亲网不承担责任。 隐私权 1本法律声明所涉及的隐私是指，在用户注册乐享定制 交友相亲网帐户时，使用其它乐享定制 交友相亲网产品或服务，访问乐享定制 交友相亲网页，或参加任何形式的用户活功时，乐享定制 交友相亲网收集的用户的个人身份识别资料，包指用户的姓名、呢称、电郎地址、出生日期、性别职业、所在行业、个人收入等。 2乐享定制 交友相亲网会收集上述信息用于：提供网站服务，改进网页内容，满足用户对某种产品、活动的需求、通知您最新产品、活动信息、或根据法律规则要求。 3、乐享定制 交友相亲网可能利用工具，为合作伙伴的网站进行数据搜集工作，有关数据也会作统计用途。网站会将所记录的乐享定制 交友相亲网用户数据整合起来，以综合数据形式供合作伙伴参考。综合数据会包括人数统计和使用情况等资料，但不会包含任何可以识别个人身份的数据。当乐享定制 交友相亲网要替合作秋伴进行数据搜集时，乐享定制 交友相亲网将和合作伙伴同时在网站或者是网页上告知用户。 4、乐享定制 交友相亲网不会将用户的个人识别信息出租、出售或泄漏给任何人，以下情况除外用户明确同意让第三方共享资料；只有透露用户的个人资料，才能提供用户所要求的产品和服务；为保护乐享定制 交友相亲网、用户及社会公众的权利、财产或人身安全：根据法律法规的规定，向司法机关提供；受到黑客攻击导致用户信息泄漏的：被搜索引擎在搜索结果中显示；其他乐享定制 交友相亲网认为有必要的情况 禁止从事下列行为 1、用户同意将不会利用乐享定制 交友相亲网服务进行任何违法或不正当的活动，包括但不限于下列行为：发布信息或者利用乐享定制 交友相亲网的服务时必须符合中国有关法规，不得在乐享定制 交友相亲网，网页上或者利用乐享定制 交友相亲网的服务制作、复制、发布、传播以下信息：反对宪法所确定的基木原则的：危害国家安危的，泄露国家秘密，颠复国家政权，破坏国家统一的：损害国家荣誉和利益的：煸动民族仇恨、民族歧视、破坏民族团结的：破坏国家宗教政策，宜扬邪教和封建迷信的：散布谣言，扰乱社会秩序，破坏社会稳定的：散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教峻犯罪的；侮辱或者诽谤他人，侵害他人本平台的责任范围 1，当用户使用本平台并享受平台服务时,即代表用户已经阅读并接受本协议全部条款。并且承诺使用本平台的风险由用户本人负担。本平台是在现有技术基础上提供的。本平台不保证以下事项:a)本平台将符合您的要求。b)本平台不受干扰、能够及时提供、安全可靠或免于出错。c)本服务使用权的取得结果是正确或可靠的。d)您经由本平台购买或取得的任何商品或服务将符合您的期望。最终解释权归泰州市悦享网络科技有限公司所有！
  </p>
 </div>
</div>
<hr>
<div class="page_float_p_1" style="color:green;background-color:white;margin-left:28%;margin-bottom:0">已接受</div>

</div>

</div>
<?php  } ?>




<!--开始-->
<div id="my_top">

<div id="my_top_avatar"><div class="my_top_pic">
 <?php  if(empty($user['user_img'])) { ?>
 <img src="<?php  echo getavatar($_W['uniacid'], $user['openid']);?>"/>
<?php  } else { ?>
<img src="<?php  echo $_W['attachurl'].$user['user_img'];?>"/>
<?php  } ?>

</div></div>
<div class="my_top_p"><?php  echo $user['nickname'];?></div>

</div>

<!--结束-->

<!--提现开始-->
<div id="my_tixian">

<a href="<?php  echo $this->createMobileUrl('tixian');?>">
<div class="my_tixian_left">
<div class="my_tixian_left_a"><?php  echo $money;?></div><div class="my_tixian_left_b">余额</div>
</div>
</a>

<a href="<?php  echo $this->createMobileUrl('chongzhi');?>">
<div class="my_tixian_left">
<div class="my_tixian_left_a"><?php  echo $user['user_jinbi'];?></div><div class="my_tixian_left_b"><?php  echo $make['make_jinbi_name'];?></div>
</div>
</a>

<a href="<?php  echo $this->createMobileUrl('visit',array('type'=>'1'));?>">
<div class="my_tixian_left">
<div class="my_tixian_left_a"><?php  echo $visit;?></div><div class="my_tixian_left_b">访客</div>
</div>
</a>

<a href="<?php  echo $this->createMobileUrl('like',array('type'=>'1'));?>">
<div class="my_tixian_left">
<div class="my_tixian_left_a"><?php  echo $like;?></div><div class="my_tixian_left_b">暗恋</div>
</div>
</a>

<div class="my_tixian_xian1"></div>
<div class="my_tixian_xian2"></div>
<div class="my_tixian_xian3"></div>

</div>
<!--提现结束-->

<!--开始-->
<div id="my_menu">

<?php  if(is_array($my_menu)) { foreach($my_menu as $key => $my_menu) { ?>

<a href="<?php echo ($my_menu['link'] == 'real' && $user['realname'] == 2) ? 'javascript:;' : $this->createMobileUrl($my_menu['link']);?>">
<?php  if($my_menu['bold']=='1') { ?>
    <div id="my_menu_style_none">
<?php  } else { ?>
    <div id="my_menu_style">
<?php  } ?>
<div class="my_menu_a"><div class="my_menu_a_pic"><img src="<?php echo MODULE_URL;?>public/images/<?php  echo $my_menu['pic'];?>"/></div></div>
<div class="my_menu_b"><?php  echo $my_menu['name'];?><?php echo ($my_menu['link'] == 'real') ? $this->getUserIdState($user['realname']) : '';?></div>
<div class="my_menu_c">></div>
</div>
</a>
<?php  if($my_menu['bold']=='1') { ?>
    <div id="my_menu_style_bold"></div>
<?php  } else { ?>
<?php  } ?>

<?php  } } ?>

</div>
<!--结束-->



<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('footer', TEMPLATE_INCLUDEPATH)) : (include template('footer', TEMPLATE_INCLUDEPATH));?>