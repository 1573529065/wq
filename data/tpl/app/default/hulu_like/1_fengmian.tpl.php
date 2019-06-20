<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<?php  echo register_jssdk(false);?>

<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/fengmian.css">
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/user.css">

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('banner', TEMPLATE_INCLUDEPATH)) : (include template('banner', TEMPLATE_INCLUDEPATH));?>

<div id="fengmian_menu">
    <?php  if(is_array($fengmian_menu)) { foreach($fengmian_menu as $key => $fengmian_menu) { ?>
    <a href="<?php  echo $fengmian_menu['link'];?>">
        <div id="fengmian_menu_style">
            <div class="fengmian_menu_pic">
                     <img src="<?php echo MODULE_URL;?>public/menu/<?php  echo $fengmian_menu['pic'];?>"/>
			</div>
            <div class="fengmian_menu_p"><?php  echo $fengmian_menu['name'];?></div>
        </div>
    </a>
    <?php  } } ?>
</div>


<script>
//$(document).ready(function(){
var page = 2;
function getmore(usertype) {
    var lock = false;    
    if(lock) return;
    lock = true;
    $.post("<?php  echo $this->createMobileUrl('getmore');?>",
        {
            type: usertype,page:page
        },
        function (data) {
            if (data != '') {
                page++;
                lock = false;                    
                $("#fengmian_loading").show();
                $("#user_list").append(data);
                setTimeout("$('#fengmian_loading').hide()", 2000);
            } else {
                $(".more_list").hide();
                lock = true;
            }                
    });
}
//});
</script>

<?php  if(empty($user)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>

<div id="user_list">
    <?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('user', TEMPLATE_INCLUDEPATH)) : (include template('user', TEMPLATE_INCLUDEPATH));?>
</div>

<div id="user_list_style" class="more_list" style="text-align:center;margin-top: -100px;margin-bottom: 20px;">
  <div style="text-align:center" class=""><a href="javascript:" onclick="getmore('<?php  echo $type;?>')" style="text-align:center;margin-top: -2000px;font-size: 12px;color: #999;">加载更多<br></a> </div>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('distance', TEMPLATE_INCLUDEPATH)) : (include template('distance', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('footer', TEMPLATE_INCLUDEPATH)) : (include template('footer', TEMPLATE_INCLUDEPATH));?>

<div id="fengmian_loading">
    <div class="fengmian_loading_body"><div class="fengmian_loading_pic">拼命加载中...</div></div>
</div>