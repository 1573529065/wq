<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/news.css">
<script type="text/Javascript" src="<?php echo MODULE_URL;?>public/jquery.min.js"></script>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('liaotian_fanhui', TEMPLATE_INCLUDEPATH)) : (include template('liaotian_fanhui', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('send_picture', TEMPLATE_INCLUDEPATH)) : (include template('send_picture', TEMPLATE_INCLUDEPATH));?>

<style>
    .news_send_picture{float:left;width:10%;height:50px;}
    .news_send_picture_pic{width:20px;height:20px;margin:15px auto;background-image:url("<?php echo MODULE_URL;?>public/images/picture.png");background-size:100% 100%;}

</style>

<script>
    $(document).ready(function () {
        $(".top_menu_c").click(function () {

            //
            $.post("<?php  echo $this->createMobileUrl('news_del',array('news_openid'=>$_GPC['openid']));?>",
                    {
                        //openid:"",
                        //city:"",
                    },
                    function (data, status) {
                        //alert("与<?php  echo getnickname($_W['uniacid'],$_GPC['openid']);?>的聊天记录清空");
                    });
            //
        });
    });
</script>

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('fengmian'),'与“'.getnickname($_W['uniacid'],$_GPC['openid']).'”聊天','touming.png');?>
<!--顶部菜单导航结束-->

<!--聊天记录开始-->
<div id="news_list">
    <?php  if(is_array($news)) { foreach($news as $key => $news) { ?>



    <?php  if($_W['openid']==$news['openid']) { ?>
        <?php  if($news['news_type']=="1") { ?>
        <div id="news_list_right">
            <div class="news_right_avatar"><div class="news_right_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
            <div class="news_right_content"><div class="news_right_content_p"><?php echo $chat_num_replace != '' ? chat_num_replace($news['news_content'],$chat_num_replace) : $news['news_content'];?></div></div>
        </div>
        <?php  } else if($news['news_type']=="4") { ?>
        <div id="news_list_right">
            <div class="news_right_avatar"><div class="news_right_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
            <div class="news_right_content"><div class="news_right_content_p"><img style="max-width:200px;auto;"  src="<?php  echo $_W['attachurl'];?><?php  echo $news['news_content'];?>"/></div></div>
        </div>
        <?php  } ?>
    <?php  } else { ?>
        <?php  if($news['news_type']=="1") { ?>
        <div id="news_list_left">
            <div class="news_left_avatar"><div class="news_left_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
            <div class="news_left_content"><div class="news_left_content_p"><?php echo $chat_num_replace != '' ? chat_num_replace($news['news_content'],$chat_num_replace) : $news['news_content'];?></div></div>
        </div>
        <?php  } else if($news['news_type']=="4") { ?>
        <div id="news_list_left">
            <div class="news_left_avatar"><div class="news_left_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
            <div class="news_left_content"><div class="news_left_content_p"><img style="max-width:200px;auto;"  src="<?php  echo $_W['attachurl'];?><?php  echo $news['news_content'];?>"/></div></div>
        </div>
        <?php  } ?>
    <?php  } ?>


    <?php  } } ?>
</div>
<!--聊天记录结束-->


<div id="news_send">

    <div class="news_send_picture"><div class="news_send_picture_pic"></div></div>

    <div class="news_send_left"><input id="news_send_left_content" type="text"/></div>
    <?php  if($user['upid']=='4') { ?>
    <div class="news_send_right"><div class="news_send_right_p">发送</div></div>
    <?php  } else if($user['upid']!='4') { ?>
    <div class="news_send_right"><div class="news_send_right_p">发送</div></div>
    <!--
    <div class="news_send_right"><div onclick="alert('聊天功能仅限VIP会员使用，请先开通VIP');" class="news_send_right_p">发送</div></div>
    -->
    <?php  } else { ?>
    <?php  } ?>

    <input id="news_type" type="hidden" name="news_type" value="1"/>

</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>

<style>
.mb-100 {
    margin-bottom: 130px; 
}
</style>
<script>
var set_msg_falg = false;
var last_ajax_data = '';
    function showmessage() {
        $.post("<?php  echo $this->createMobileUrl('liaotian');?>",
                {
                    openid: "<?php  echo $_GPC['openid'];?>",
                },
                function (data, status) {
                    if (data != '' && last_ajax_data != data) {
                        last_ajax_data = data;
                        $("#news_list").html(data);
                        var h = ($("#news_list").height()) + 50;
                        var hang = h + "px";
                        if (set_msg_falg == false) {
                            $("html,body").animate({scrollTop: hang}, 2000);                       
                        }
                    }
                    setTimeout("showmessage()", 2000);
                });
    }

    $(document).ready(function () {        
        var h = ($("#news_list").height()) + 50;
        var hang = h + "px";
        $("html,body").animate({scrollTop: hang}, 2000);

        $("#news_send_left_content").focus(function () {
            $(this).css("border-bottom", "1px solid #09BB07");
         //   $('#news_send').addClass("mb-100");
            set_msg_falg = true;
        });

        var txt = $("#news_send_left_content").val();
        if (txt = null || txt == "") {
            $("#news_send_left_content").blur(function () {
                $(this).css("border-bottom", "1px solid #EEE");
            //    $('#news_send').removeClass("mb-100");
                set_msg_falg = false;
            });
        }
        setTimeout("showmessage()", 2000);
    });
</script>


<script>
    $(document).ready(function () {
        $(".news_send_right_p").click(function () {
            var news_type = $("#news_type").val();
            var news_openid = "<?php  echo $_GPC['openid'];?>";
            var news_content = $("#news_send_left_content").val();

            $.post("<?php  echo $this->createMobileUrl('news',array('type'=>'1'));?>",
                    {
                        news_type: news_type,
                        news_openid: news_openid,
                        news_content: news_content,
                    },
                    function (data, status) {
                        $(".news_send_picture_pic").css("background-image", "url('<?php echo MODULE_URL;?>public/images/picture.png')");
                        $('#news_send_left_content').removeAttr("readonly")

                        $("#news_type").val("1");
                        eval("var arr=" + data);
//alert(arr.type);
                        if (arr.type == 2) {
                            $("#liaotian_fanhui").show();
                        }
                        $("#news_send_left_content").val("");
                    });
        });
    });
</script>