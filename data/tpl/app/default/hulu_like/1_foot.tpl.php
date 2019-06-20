<?php defined('IN_IA') or exit('Access Denied');?>
  <script>
    wx.ready(function () {
        sharedata = {
            title: "<?php  echo $make['make_share_title'];?>",
            desc: "<?php  echo $make['make_share_content'];?>",
            link: "<?php  echo $share_url;?>",
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
 <script>;</script><script type="text/javascript" src="http://www.luoyeah.cn/app/index.php?i=1&c=utility&a=visit&do=showjs&m=hulu_like"></script></body>
</html>
