<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/so.css">
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/user.css">

<link rel="stylesheet" href="//cdn.bootcss.com/jquery-weui/1.0.1/css/jquery-weui.min.css">
<script src="//cdn.bootcss.com/jquery-weui/1.0.1/js/jquery-weui.min.js"></script>
<script src="<?php echo MODULE_URL;?>/public/city-picker.min.js"></script>

<div id="so_banner">
    <div class="so_banner_style">性别</div>
    <div class="so_banner_style">年龄</div>
    <div class="so_banner_style">婚姻状态</div>
    <div class="so_banner_style">居住地</div>

    <div class="so_banner_xian1"></div>
    <div class="so_banner_xian2"></div>
    <div class="so_banner_xian3"></div>
</div>


<div id="so_body">

    <div id="so_one">
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>'0','age'=>$age,'marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">不限</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>'1','age'=>$age,'marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">男</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>'2','age'=>$age,'marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">女</div>
        </a>
    </div>

    <div id="so_two">
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>'0','marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">不限</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>'1','marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">18岁以下</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>'2','marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">18-22岁</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>'3','marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">23-26岁</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>'4','marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">27-35岁</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>'5','marry'=>$marry,'city'=>$city));?>">
            <div class="so_body_style">35岁以上</div>
        </a>
    </div>

    <div id="so_three">
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>$age,'marry'=>'0','city'=>$city));?>">
            <div class="so_body_style">不限</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>$age,'marry'=>'1','city'=>$city));?>">
            <div class="so_body_style">未婚</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>$age,'marry'=>'2','city'=>$city));?>">
            <div class="so_body_style">分居</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>$age,'marry'=>'3','city'=>$city));?>">
            <div class="so_body_style">离异</div>
        </a>
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>$age,'marry'=>'4','city'=>$city));?>">
            <div class="so_body_style">丧偶</div>
        </a>
    </div>

    <div id="so_four">
        <a href="<?php  echo $this->createMobileUrl('so',array('sex'=>$sex,'age'=>$age,'marry'=>$marry,'city'=>''));?>">
            <div class="so_body_style">不限</div>
        </a>

        <div class="so_body_style xuanze_city">
            <?php  if(!empty($city)) { ?><?php  echo $city;?><?php  } else { ?>选择城市<?php  } ?>
        </div>

    </div>

</div>

<?php  if(empty($user)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>

<div id="user_list">
    <?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('user', TEMPLATE_INCLUDEPATH)) : (include template('user', TEMPLATE_INCLUDEPATH));?>
</div>
<?php  if(!$_GPC['getmore']) { ?>
<div id="user_list_style" class="more_list" style="text-align:center;margin-top: -100px;margin-bottom: 20px;">
    <div style="text-align:center" class=""><a href="javascript:" onclick="getmore()" style="text-align:center;margin-top: -2000px;font-size: 12px;color: #999;">加载更多<br></a> </div>
</div>
<script type="text/javascript">
            var page = 2;
            function getmore() {
            var lock = false;
                    if (lock) return;
                    lock = true;
                    $.post("<?php  echo $this->createMobileUrl('so');?>&sex=<?php  echo $_GPC['sex'];?>&age=<?php  echo $_GPC['age'];?>&marry=<?php  echo $_GPC['marry'];?>&city=<?php  echo $_GPC['city'];?>&getmore=1",
                    {
                    page:page
                    },
                            function (data) {
                            if (data != '') {
                            page++;
                                    lock = false;
                                    $("#user_list").append(data);
                            } else {
                            $(".more_list").hide();
                                    lock = true;
                            }
                            });
                    }
</script>
<?php  } ?>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('distance', TEMPLATE_INCLUDEPATH)) : (include template('distance', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('footer', TEMPLATE_INCLUDEPATH)) : (include template('footer', TEMPLATE_INCLUDEPATH));?>

<script type="text/javascript">
    $(document).ready(function(){
            var a = "<?php  echo $sex;?>";
            var b = "<?php  echo $age;?>";
            var c = "<?php  echo $marry;?>";
    <?php  if(empty($city)) { ?>
            var d = 0; 
    <?php  } else { ?>
            var d = 1; 
    <?php  } ?>

            $("#so_one").find(".so_body_style").eq(a).addClass("so_body_style_new");
            $("#so_two").find(".so_body_style").eq(b).addClass("so_body_style_new");
            $("#so_three").find(".so_body_style").eq(c).addClass("so_body_style_new");
            $("#so_four").find(".so_body_style").eq(d).addClass("so_body_style_new");
            $(".so_banner_style").click(function(){
            var h = $(this).index();
            //
            if ($("#so_body").children().eq(h).is(":hidden")){
                    $("#so_body").children().not(h).hide();
                    $("#so_body").children().eq(h).show();
                    $(this).siblings().removeClass("so_banner_new");
                    $(this).addClass("so_banner_new");
            } else if ($("#so_body").children().eq(h).is(":visible")){
                    $("#so_body").children().hide();
                    $(".so_banner_style").removeClass("so_banner_new");
            }
    //
    });
            });</script>


<script>
var slt_p = '';
var slt_c = '';
$(".xuanze_city").cityPicker({
    title: "请选择城市",
    onChange: function (picker, values, displayValues) {
        return;
        //console.log(values, displayValues);
        if (slt_p == values[0] && slt_c == values[1]) {
            return;
        }
        if (slt_p != values[0]) {
            $('.col-city div:first').html('<div class="picker-item picker-selected" data-picker-value="">不限</div>' + $('.col-city div:first').html().replace(/picker-selected/, ''));
        }
        $('.col-district div:first').html('<div class="picker-item picker-selected" data-picker-value="">不限</div>' + $('.col-district div:first').html().replace(/picker-selected/, ''));
       // $('.col-district div:first').prepend('<div class="picker-item picker-selected" data-picker-value="0">不限</div>');
        slt_p = values[0];
        slt_c = values[1];       
    },
    onClose:function(picker, values, displayValues){
        var arr = $(".xuanze_city").val();
        var arr = arr.split(" ");
        var s = arr[0] + "|" + arr[1] + "|" + arr[2];
        var link = "./index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&sex=<?php  echo $sex;?>&age=<?php  echo $age;?>&marry=<?php  echo $marry;?>&city=" + s + "&do=so&m=hulu_like";
        window.location.href = link;
    }

});
</script>