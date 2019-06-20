<?php
global $_W;
include "function.php";

if ($_SESSION['nowuser_apptype'] == 'in_app') {
    $url = $_W['siteroot'] . "app/index.php?i=" . $_W['uniacid'] . "&c=entry&m=hulu_like&do=ardpostlogin";
    ?>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <title>微信登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <script src="//static.ydbimg.com/Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="//static.ydbimg.com/API/YdbOnline.js" type="text/javascript"></script>
    <script type="text/javascript">
        function WxLogin() {
            var YDB = new YDBOBJ();
            var res = YDB.WXLogin(1, "<?php echo $url;?>");
            //回调页面为文件中的wxlogin.php
        }

        $(document).ready(function () {
            WxLogin();
        });
    </script>
<?php } else {
    message("请在微信客户端打开", $this->createMobileUrl('fengmian'), "warning");
}

//header("Location: ".$this->createMobileUrl('fengmian'));exit();

?>