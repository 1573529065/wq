<?php
function chat_num_replace($talk_content, $chat_num_replace) {
    return preg_replace('/\d/', $chat_num_replace, $talk_content);
}

//黑名单
function image_exists($url) {
    if (!strstr($url, 'http')) {
        if (file_exists($url)) {
            return true;
        } else {
            return false;
        }
    }
    $hdrs = @get_headers($url);
    $pic_valid = is_array($hdrs) ? preg_match('/^HTTP\\/\\d+\\.\\d+\\s+2\\d\\d\\s+.*$/', $hdrs[0]) : false;
    return $pic_valid ? true : false;
}
function auth() {
    global $_W;
    $my = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

    if ($my['upid'] == "1") {
        //msg("您已被拉黑！","","error");
        echo"<script>alert('您已被拉黑！');</script>";
        header("Location: " . murl('entry//my', array('m' => 'hulu_like')));

        exit();
    }
}

//生成订单
//订单类型，金额，VIP时间，排名ID，礼物获得OPENID，礼物ID，被打赏者OPENID，动态ID
function addorder($order_type, $fee, $order_vip_days, $order_join_id, $order_gift_receive, $order_gift_id, $order_dashang_receive, $order_talk_id) {
    global $_W;

    $order_num = date('YmdHis') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);

    $order_old = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_order') . "WHERE uniacid=:uniacid AND order_num=:order_num", array(':uniacid' => $_W['uniacid'], ':order_num' => $order_num));

    if (empty($order_old)) {

        $orderdata = array(
            'uniacid' => $_W['uniacid'],
            'openid' => $_W['openid'],
            'order_pid' => '1',
            'order_type' => $order_type,
            'order_num' => $order_num,
            'order_money' => $fee,
            'order_starttime' => $_W['timestamp'],
            'order_endtime' => '',
            'order_ip' => $_W['clientip'],
            'order_container' => $_W['container'],
            'order_os' => $_W['os'],
            'order_vip_days' => $order_vip_days,
            'order_join_id' => $order_join_id,
            'order_gift_receive' => $order_gift_receive,
            'order_gift_id' => $order_gift_id,
            'order_dashang_receive' => $order_dashang_receive,
            'order_talk_id' => $order_talk_id,
        );
        $res = pdo_insert('hulu_like_order', $orderdata);

        if (!empty($res)) {
            return $order_num;
        } else {
            
        }
    } else {
        
    }
}

//获得登录时间
function getlogintime($uniacid, $openid) {

    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['login_time'];
}

//获得图片
function getpicture($uniacid, $vid, $picture_type) {
    $picture = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_picture') . "WHERE uniacid=:uniacid AND picture_vid=:picture_vid AND picture_type=:picture_type AND picture_pid=:picture_pid", array(':uniacid' => $uniacid, ':picture_vid' => $vid, ':picture_type' => $picture_type, ':picture_pid' => '3'));
    foreach ($picture as $key => $v) {
        $pic[] = $v['picture_url'];
    }
    return $pic;
}

//说说
function gettalkpinglun($uniacid, $talkid) {
    $pinglun = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk_pinglun') . "WHERE uniacid=:uniacid AND talk_id=:talk_id ORDER BY pinglun_id DESC", array(':uniacid' => $uniacid, ':talk_id' => $talkid));
    return $pinglun;
}

function gettalkzannum($uniacid, $talkid) {

    $talk = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk_zan') . "WHERE uniacid=:uniacid AND talk_id=:talk_id", array(':uniacid' => $uniacid, ':talk_id' => $talkid));
    return count($talk);
}

function gettalkpinglunnum($uniacid, $talkid) {

    $talk = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk_pinglun') . "WHERE uniacid=:uniacid AND talk_id=:talk_id", array(':uniacid' => $uniacid, ':talk_id' => $talkid));
    return count($talk);
}

//礼物
function getgiftpic($uniacid, $giftid) {
    $gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $uniacid, ':gift_id' => $giftid));
    return $gift['gift_picture'];
}

function getgiftname($uniacid, $giftid) {
    $gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $uniacid, ':gift_id' => $giftid));
    return $gift['gift_name'];
}

function getgiftmoney($uniacid, $giftid) {
    $gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $uniacid, ':gift_id' => $giftid));
    return round($gift['gift_money'], 4);
}

//提示
function getemptydata($text, $link) {
    return'
<a href="' . $link . '">
<div id="emptydata">' . $text . '</div>
</a>
';
}

//活动发起类型

function getactivetype($activetype) {
    if ($activetype == '1') {
        return"个人发起";
    } elseif ($activetype == '2') {
        return"商家发起";
    } elseif ($activetype == '3') {
        return"官方发起";
    }
}

//msg
function msg($msg, $redirect, $type) {
    include template('common/msg', TEMPLATE_INCLUDEPATH);
}

//订单类型
function getordertype($ordertype) {

    if ($ordertype == "1") {
        return"开通VIP";
    } elseif ($ordertype == "2") {
        return"参与活动";
    } elseif ($ordertype == "3") {
        return"充值金币";
    } elseif ($ordertype == "4") {
        return"送礼物";
    } elseif ($ordertype == "5") {
        return"打赏";
    } elseif ($ordertype == "6") {
        return"赞赏说说";
    }
}

//会员头像

function getuid($uniacid, $openid) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['uid'];
}

//会员头像

function getavataar($uniacid, $openid) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['avatar'];
}
function getavatar($uniacid, $openid) {
    global $_W;
    $condition = " fans.uniacid='" . $uniacid . "' and fans.openid='" . $openid . "'";
    $sql = "SELECT fans.nickname, mem.avatar, fans.tag "
            . "FROM " . tablename('mc_mapping_fans') . " fans "
            . "LEFT JOIN " . tablename('mc_members') . " mem ON fans.uid=mem.uid "
            . "WHERE $condition LIMIT 1";
    $member_arr = pdo_fetch($sql);
    if (0 && get_fans_pic($member_arr['avatar'])) {
        return $member_arr['avatar'];
    }
    if (!empty($member_arr['tag']) && is_string($member_arr['tag'])) {
        if (is_base64($member_arr['tag'])) {
            $member_arr['tag'] = base64_decode($member_arr['tag']);
        }
        if (is_serialized($member_arr['tag'])) {
            $member_arr['tag'] = @iunserializer($member_arr['tag']);
        }
        if (!empty($member_arr['tag']['headimgurl'])) {
//            $pic = $member_arr['avatar'];
//            if (get_fans_pic($pic)) {
//                return $pic;
//            }
            return tomedia($member_arr['tag']['headimgurl']);
        }
    }
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    $pic = $user['avatar'];
    if (strstr($pic, 'hulu_like')) {//moni
        return $pic;
    }    
    if (get_fans_pic($pic)) {
        return $pic;
    }
    return $_W['siteroot'] . 'web/resource/images/noavatar_middle.gif';
}
function get_fans_pic($url) {
    $hdrs = @get_headers($url);
    $pic_valid = is_array($hdrs) ? preg_match('/^HTTP\\/\\d+\\.\\d+\\s+2\\d\\d\\s+.*$/', $hdrs[0]) : false;
    return $pic_valid ? $url : false;
}
//会员昵称
function getnickname($uniacid, $openid) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['nickname'];
}

//会员地址
function getuseraddress($uniacid, $openid) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['address'];
}

//登录

function checklogin() {
    global $_W;
    if (($_W['container'] != 'wechat') || (empty($_W['openid']))) {
        header("Location: " . url('entry//wechat', array('m' => 'hulu_like')));

        exit();
    }
}

//会员标签
function getusertag($uniacid, $openid) {

    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));

    $member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
   // if ($user['upid'] == '4') {
     //   $tag1 = "<div class='user_list_b_4_p'>VIP</div>";
    //}
    if ($user['realname'] == '2') {
        $tag2 = "<div class='user_list_b_4_p'>实名</div>";
    }
    if (!empty($member['member_feeling'])) {
        $tag3 = "<div class='user_list_b_4_p_3'>" . feelingdata()[$member['member_feeling'] - 1]['feeling_name'] . "</div>";
    }
    if (!empty($member['member_purpose'])) {
        $tag4 = "<div class='user_list_b_4_p'>" . purposedata()[$member['member_purpose'] - 1]['purpose_name'] . "</div>";
    }

    return $tag1 . $tag2 . $tag3 . $tag4;
}

//会员资料
function getmemberinfo($uniacid, $openid) {
    $member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));

    if (!empty($member['member_birthday'])) {
        $member_birthday = round((time() - $member['member_birthday']) / (24 * 60 * 60 * 365), 0);
    } elseif (empty($member['member_birthday'])) {
        $member_birthday = rand(18, 40);
    }

    if (!empty($member['member_height'])) {
        $member_height = $member['member_height'];
    } elseif (empty($member['member_height'])) {
        $member_height = rand(150, 190);
    }

    if (!empty($member['member_weight'])) {
        $member_weight = $member['member_weight'];
    } elseif (empty($member['member_weight'])) {
        $member_weight = rand(40, 80);
    }

    return $member_birthday . '岁 | ' . $member_height . 'CM | ' . $member_weight . 'KG';
}

//交友宣言
function getmembercontent($uniacid, $openid) {
    $member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));

    return $member['member_content'];
}

//顶部菜单
function topmenu($link, $title, $pic) {
    return"
	<div id='top_menu'>

<a href='" . $link . "'>
<div class='top_menu_a'><div class='top_menu_a_pic'><img src='" . MODULE_URL . "public/images/top_1.png'/></div></div>
</a>

<div class='top_menu_b'>" . $title . "</div>

<div class='top_menu_c'><div class='top_menu_c_pic'><img src='" . MODULE_URL . "public/images/" . $pic . "'/></div></div>

</div>
	";
}

//身高
function heightdata() {
    for ($x = 120; $x <= 220; $x++) {
        $height[] = $x;
    }
    return $height;
}

//体重
function weightdata() {
    for ($y = 30; $y <= 230; $y++) {
        $weight[] = $y;
    }
    return $weight;
}

//交友目的
function purposedata() {
    $purpose = array(
        array('purpose_id' => '1', 'purpose_name' => '交友'),
        array('purpose_id' => '2', 'purpose_name' => '相亲'),
        array('purpose_id' => '3', 'purpose_name' => '约会'),
        array('purpose_id' => '4', 'purpose_name' => '学习交流'),
        array('purpose_id' => '5', 'purpose_name' => '其他'),
    );
    return $purpose;
}

//感情状态
function feelingdata() {
    $feeling = array(
        array('feeling_id' => '1', 'feeling_name' => '单身中'),
        array('feeling_id' => '2', 'feeling_name' => '约会中'),
        array('feeling_id' => '3', 'feeling_name' => '恋爱中'),
    );
    return $feeling;
}

//婚姻状态
function marrydata() {
    $marry = array(
        array('marry_id' => '1', 'marry_name' => '未婚'),
        array('marry_id' => '2', 'marry_name' => '已婚'),
        array('marry_id' => '3', 'marry_name' => '离异'),
        array('marry_id' => '4', 'marry_name' => '丧偶'),
    );
    return $marry;
}

//薪资
function salarydata() {
    $salary = array(
        array('salary_id' => '1', 'salary_name' => '我不在乎对方薪资'),
        array('salary_id' => '2', 'salary_name' => '1K以下'),
        array('salary_id' => '3', 'salary_name' => '1K-2K元'),
        array('salary_id' => '4', 'salary_name' => '2K-3K元'),
        array('salary_id' => '5', 'salary_name' => '3K-4K元'),
        array('salary_id' => '6', 'salary_name' => '4K-5K元'),
        array('salary_id' => '7', 'salary_name' => '5K-6K元'),
        array('salary_id' => '8', 'salary_name' => '6K-7K元'),
        array('salary_id' => '9', 'salary_name' => '7K-8K元'),
        array('salary_id' => '10', 'salary_name' => '8K-9K元'),
        array('salary_id' => '11', 'salary_name' => '9K-10K元'),
        array('salary_id' => '12', 'salary_name' => '10K-15K元'),
        array('salary_id' => '13', 'salary_name' => '15K-20K元'),
        array('salary_id' => '14', 'salary_name' => '20K元以上'),
    );
    return $salary;
}

//学历
function educationdata() {
    $education = array(
        array('education_id' => '1', 'education_name' => '我不在乎对方学历'),
        array('education_id' => '2', 'education_name' => '博士后'),
        array('education_id' => '3', 'education_name' => '博士'),
        array('education_id' => '4', 'education_name' => '硕士'),
        array('education_id' => '5', 'education_name' => '研究生'),
        array('education_id' => '6', 'education_name' => '大学本科'),
        array('education_id' => '7', 'education_name' => '大专'),
        array('education_id' => '8', 'education_name' => '高中'),
        array('education_id' => '9', 'education_name' => '中专'),
        array('education_id' => '10', 'education_name' => '初中'),
        array('education_id' => '11', 'education_name' => '小学'),
    );
    return $education;
}
//房产情况
function housedata() {
    $house = array(
        array('house_id' => '1', 'house_name' => '有房'),
        array('house_id' => '2', 'house_name' => '婚后可以买房'),
        array('house_id' => '3', 'house_name' => '无房'),
    );
    return $house;    
}

function careerdata() {
    $career = array(
        array('career_id' => '1', 'career_name' => '私企职工'),
        array('career_id' => '2', 'career_name' => '私企高管'),
        array('career_id' => '3', 'career_name' => '合同工'),        
        array('career_id' => '4', 'career_name' => '公务员'),
        array('career_id' => '5', 'career_name' => '事业单位'),
        array('career_id' => '6', 'career_name' => '国企'),
    );
    return $career;    
}

//地域
function areadata() {
    $area = array(
        array('area_id' => '1', 'area_name' => '我不在乎对方距离'),
        array('area_id' => '2', 'area_name' => '同一乡镇'),
        array('area_id' => '3', 'area_name' => '同一县城'),
        array('area_id' => '4', 'area_name' => '同一市区'),
        array('area_id' => '5', 'area_name' => '同一省份'),
        array('area_id' => '6', 'area_name' => '同一国家'),
        array('area_id' => '7', 'area_name' => '同一星球'),
    );
    return $area;
}

function getgaptime($oldtime) {
    if (!empty($oldtime)) {
        $gaptime = time() - $oldtime;
    } elseif (empty($oldtime)) {
        if (date('H') < 9) {
            $gaptime = rand(0, 3600*8);
        }else{
            $gaptime = rand(0, 3600);
        }
    }
    switch ($gaptime) {
        case $gaptime == 0:
            $restime = '刚刚';
            break;
        case $gaptime < 60:
            $restime = $gaptime . '秒之前';
            break;
        case $gaptime < 60 * 60:
            $restime = floor($gaptime / 60) . '分钟前';
            break;
        case $gaptime < 60 * 60 * 24:
            $restime = floor($gaptime / (60 * 60)) . '小时前';
            break;
        case $gaptime < 60 * 60 * 24 * 3;

            $restime = floor($gaptime / (60 * 60 * 24)) == 1 ? '昨天' . date('H:i', $oldtime) : '前天' . date('H:i', $oldtime);
            break;
        case $gaptime < 60 * 60 * 24 * 30:
            $restime = floor($gaptime / (60 * 60 * 24)) . '天前';
            break;
        case $gaptime < 60 * 60 * 24 * 365:
            $restime = floor($gaptime / (60 * 60 * 24 * 30)) . '月前';
            break;
        case $gaptime < 60 * 60 * 24 * 365 * 3:
            $restime = floor($gaptime / (60 * 60 * 24 * 365)) . '年前';
            break;
        default:
            $restime = date('Y-m-d', $oldtime);
    }
    return $restime;
}

//
function check() {
    return;
    global $_W;

    $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

    $a = $_W['account']['account'];
    $b = $_W['account']['original'];
    $c = $_SERVER['HTTP_HOST'];
    $d = gethostbyname($_SERVER['SERVER_ADDR']);
    $e = 'hulujiaoyouxiangqin@!.';
    $f = date('Y', time());
    $res = sha1(md5(sha1(md5($a)) . sha1(md5($b)) . sha1(md5($c)) . sha1(md5($d)) . sha1(md5($e)) . sha1(md5($f))));
	if($_SESSION['biaoshi']){
		$_W['openid'] = $_SESSION['biaoshi'];
	}
    //todo
    if (0 && $res != $make['make_authcode']) {
        message("未授权或授权期限已过！请联系客服进行授权", '', 'error');
        exit();
    }
}

function gettimessssssss($startdate){
	$enddate = time();
	$date=floor(($enddate-$startdate)/86400); 
	date_default_timezone_set('PRC'); 
	if ($date == 0) {
		$hour=floor(($enddate-$startdate)%86400/3600);  
		$minute=floor(($enddate-$startdate)%86400/60%60);  
		$second=floor(($enddate-$startdate)%86400%60);  
		if ($hour == 0) {
			return $minute."minutes ago";
			
		}
		return $hour." hours ago";
	}

	if($date == 1){	
		return "Before ".date("H:i",$startdate)." yesterday";
	}
	
		$dstr = date(" jS \of F H:i",$startdate);
		
		
	return  $dstr;

} 






function fengmian_menusssss(){
	return	array (
			0 =>  array ( 'name' => 'يېڭى', 'pic' => 'menu1.png', 'link' => './index.php?i=6&c=entry&type=new&do=fengmian&m=hulu_like' ),
			1 =>  array ( 'name' => 'قىزلار', 'pic' => 'menu2.png', 'link' => './index.php?i=6&c=entry&type=girl&do=fengmian&m=hulu_like'),
			2 =>  array ( 'name' => 'يىگىتلەر', 'pic' => 'menu3.png', 'link' => './index.php?i=6&c=entry&type=boy&do=fengmian&m=hulu_like'),
			3 => array ( 'name' => 'ئالتۇن ئەزا', 'pic' => 'menu4.png', 'link' => './index.php?i=6&c=entry&type=vip&do=fengmian&m=hulu_like'),
			4 => array ( 'name' => 'ھەقىقىي نام', 'pic' => 'menu5.png',  'link' => './index.php?i=6&c=entry&type=real&do=fengmian&m=hulu_like'),
			5 =>  array ( 'name' => 'ئىزدەش', 'pic' => 'menu6.png', 'link' => './index.php?i=6&c=entry&sex=0&age=0&marry=0&city=&do=so&m=hulu_like'),
			6 => array ( 'name' => 'پائالىيەت', 'pic' => 'menu7.png', 'link' => './index.php?i=6&c=entry&do=active&m=hulu_like',),
			7 => array ( 'name' => 'ئەزا مەركىزى', 'pic' => 'menu8.png', 'link' => './index.php?i=6&c=entry&do=my&m=hulu_like'),
	);       
}

function my_menu1111111(){
	return  array (
			  0 =>  array ( 'name' => 'ئاساسى ماتىرىيال', 'pic' => 'e1.png', 'link' => 'info' ),
			  1 =>  array ( 'name' => 'لايىقىغا قويىدىغان تەلەپ', 'pic' => 'e2.png', 'link' => 'request' ),
			  2 =>  array ( 'name' => 'رەسىم يوللاش', 'pic' => 'e3.png', 'link' => 'picture' ),
			  3 =>  array ( 'name' => 'ھەقىقى نام', 'pic' => 'e4.png', 'link' => 'real', ),
			  4 =>  array ( 'name' => 'پۇل ئېلىش ماتىرىيالى', 'pic' => 'e5.png', 'link' => 'tixian_info', 'bold' => '1' ),
			  5 =>  array ( 'name' => 'ئالتۇن ئەزا بولۇش', 'pic' => 'e6.png', 'link' => 'vip' ),
			  6 => 
			  array ('name' => 'پۇل قاچىلاش', 'pic' => 'e7.png', 'link' => 'chongzhi' ),
			  7 =>  array ( 'name' => 'تاپشۇرىۋالغان سوۋغات', 'pic' => 'e8.png', 'link' => 'present', 'bold' => '1' ),
			  8 => array ( 'name' => 'مەبلەغ تەپسىلاتى', 'pic' => 'e9.png', 'link' => 'money' ),
			  9 => array ( 'name' => 'زاكاسلىرىم', 'pic' => 'e10.png', 'link' => 'order' ),
			  10 => array ( 'name' => 'تەشۋىقات كودى', 'pic' => 'e11.png', 'link' => 'tuiguang' ),
			  11 => array ( 'name' => 'تەشۋىقات خاتىرىسى', 'pic' => 'e12.png', 'link' => 'share', 'bold' => '1'),
			);       
}


//会员昵称
function getImg($uniacid, $openid) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['user_img'];
}
//
?>