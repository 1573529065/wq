<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>

<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/talk.css">
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/talk_list.css">

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('banner', TEMPLATE_INCLUDEPATH)) : (include template('banner', TEMPLATE_INCLUDEPATH));?>

<div id="talk_fabu">
<a href="<?php  echo $this->createMobileUrl('talk_add');?>">
<div class="talk_fabu_pic"></div>
</a>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('talk_deal', TEMPLATE_INCLUDEPATH)) : (include template('talk_deal', TEMPLATE_INCLUDEPATH));?>

<?php  if(empty($talk)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>

<div id="talk_list">
<?php  if(is_array($talk)) { foreach($talk as $key => $talk) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('talk_list', TEMPLATE_INCLUDEPATH)) : (include template('talk_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</div>

<?php  if(count($talk) >= 20) { ?>
<style type="text/css">    
#bottom_menu2 {
    position: relative;
    bottom: 113px;
    text-align: center;
}
</style>
<div id="bottom_menu2" class="more_list" style="z-index:-100;">
<a href="javascript:" onclick="getmore()" style="text-align:center;font-size: 12px;color: #999;">加载更多</a>
</div>
<script type="text/javascript">
var page = 2;  
function getmore() {
    var lock = false;    
    if(lock) return;
    lock = true;
    $.post("<?php  echo $this->createMobileUrl('talk');?>&getmore=1",
        {
            page:page
        },
        function (data) {
            if (data != '') {
                page++;
                lock = false;                    
                $("#talk_list").append(data);
            } else {
                $(".more_list").hide();
                lock = true;
            }                
    });
}  

</script>
<?php  } ?>
<script type="text/javascript">
function show_map(url) {
            $.ajax({
                url: url,
                type: 'post',
                dataType: 'json',
                data: {getofajax:1},
                success:function(data){
                    if (data.info) {
                        wx.ready(function(){
                            wx.openLocation({
                                latitude:data.info.lat, // 纬度，浮点数，范围为90 ~ -90
                                longitude:data.info.lng, // 经度，浮点数，范围为180 ~ -180。
                                name:data.info.name, // 位置名
                                address:data.info.address, // 地址详情说明
                                scale:14, // 地图缩放级别,整形值,范围从1~28。默认为最大
                                infoUrl:data.info.link, // 在查看位置界面底部显示的超链接,可点击跳转
                            });
                        }); 
                    }
                }
            });
    
  }
</script>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('footer', TEMPLATE_INCLUDEPATH)) : (include template('footer', TEMPLATE_INCLUDEPATH));?>



