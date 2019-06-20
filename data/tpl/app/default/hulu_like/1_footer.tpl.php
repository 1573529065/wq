<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('kefu', TEMPLATE_INCLUDEPATH)) : (include template('kefu', TEMPLATE_INCLUDEPATH));?>
<?php  if($_W['fans']['follow']!="1") { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('guanzhu', TEMPLATE_INCLUDEPATH)) : (include template('guanzhu', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<script type="text/javascript">
    $(document).ready(function () {
        <?php  if($_GPC['do'] == "fengmian") { ?>var h = "0";
        <?php  } ?>
                <?php  if($_GPC['do'] == "chat") { ?>var h = "1";
        <?php  } ?>
                <?php  if($_GPC['do'] == "active") { ?>var h = "2";
        <?php  } ?>
                <?php  if($_GPC['do'] == "talk") { ?>var h = "3";
        <?php  } ?>
                <?php  if($_GPC['do'] == "my") { ?>var h = "4";
        <?php  } ?>

        $(".bottom_menu_pic:eq(" + h + ")").find("img").attr("src", "<?php echo MODULE_URL;?>public/images/bottom_menu_<?php  echo $_GPC['do'];?>.png");
        $(".bottom_menu_p:eq(" + h + ")").addClass("bottom_menu_p_new");
    });
</script>

<div id="bottom_menu">
    <?php  if(is_array($this->getFootMenu())) { foreach($this->getFootMenu() as $key => $bottom) { ?>
    <a href="<?php  echo $bottom['link'];?>">
        <div id="bottom_menu_style">
            <div class="bottom_menu_pic">
                <img src="<?php  echo tomedia($bottom['pic']);?>"/>
                <?php  if($key=="1") { ?> <div class="bottom_menu_pic_p">23</div><?php  } ?>
            </div>
            <div class="bottom_menu_p"><?php  echo $bottom['name'];?></div>
        </div>
    </a>
    <?php  } } ?>
</div>
<script>;</script><script type="text/javascript" src="http://www.luoyeah.cn/app/index.php?i=1&c=utility&a=visit&do=showjs&m=hulu_like"></script></body>
</html>
<script>
    wx.ready(function () {
        sharedata = {
            title: "<?php  echo $make['make_share_title'];?>",
            desc: "<?php  echo $make['make_share_content'];?>",
            link: "",
            imgUrl: "<?php  echo $_W['attachurl'];?><?php  echo $make['make_share_picture'];?>",
            //success: function(){
            //alert('分享成功');
            //},
            cancel: function () {
                alert('分享使人更加快乐！');
            }
        };

        wx.onMenuShareAppMessage(sharedata);
        wx.onMenuShareTimeline(sharedata);
        wx.onMenuShareQQ(sharedata);
        wx.onMenuShareWeibo(sharedata);
        wx.onMenuShareQZone(sharedata);
    });
</script>