<?php
function qcode($biaoshi){
	     require_once IA_ROOT . '/addons/hulu_like/public/phpqrcode/qrlib.php';
        //生成二维码
//        QRcode::png('https://www.baidu.com');
        $url = "http://www.luoyeah.cn/app/index.php?i=1&c=entry&do=my&m=hulu_like&biaoshi=".$biaoshi;
        $value = $url;
        $errorCorrectionLevel = "L";
        $matrixPointSize = "4.3";
        $margin = "1";
		$filename = $biaoshi.'.png';
        QRcode::png($value, $filename, $errorCorrectionLevel, $matrixPointSize, $margin);
		 $QR = $filename;        //已经生成的原始二维码图片文件
		 $QR = imagecreatefromstring(file_get_contents($QR));
		  //输出图片
		  imagepng($QR, $filename);
		  imagedestroy($QR);
		  return '<img src="'.$filename.'">';
}
//说说标题
function gettalkcontent($uniacid, $talkid) {
    $talk = pdo_fetch("SELECT * FROM" . tablename('hulu_like_talk') . "WHERE uniacid=:uniacid AND talk_id=:talk_id", array(':uniacid' => $uniacid, ':talk_id' => $talkid));
    return $talk['talk_content'];
}

//获得图片
function getpicture($uniacid, $vid, $picture_type) {
    $picture = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_picture') . "WHERE uniacid=:uniacid AND picture_vid=:picture_vid AND picture_type=:picture_type AND picture_pid=:picture_pid", array(':uniacid' => $uniacid, ':picture_vid' => $vid, ':picture_type' => $picture_type, ':picture_pid' => '1'));
    foreach ($picture as $key => $v) {
        $pic[] = $v['picture_url'];
    }
    return $pic;
}

//****礼物****//
//礼物名称
function getgiftname($uniacid, $giftid) {
    $gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $uniacid, ':gift_id' => $giftid));
    return $gift['gift_name'];
}

//礼物名称
function getgiftpicture($uniacid, $giftid) {
    $gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $uniacid, ':gift_id' => $giftid));
    return $gift['gift_picture'];
}

//礼物名称
function getgiftmoney($uniacid, $giftid) {
    $gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $uniacid, ':gift_id' => $giftid));
    return $gift['gift_money'];
}

//****活动****//
//活动状态
function getactivepid($activepid) {
    if ($activepid == '1') {
        return"<span class='label label-success'>已屏蔽</span>";
    } elseif ($activepid == '2') {
        return"<span class='label label-warning'>待审核</span>";
    } elseif ($activepid == '3') {
        return"<span class='label label-danger'>报名中</span>";
    } elseif ($activepid == '4') {
        return"<span class='label label-success'>进行中</span>";
    } elseif ($activepid == '5') {
        return"<span class='label label-info'>已结束</span>";
    }
}

//活动类型
function getactivetype($activetype) {
    if ($activetype == '1') {
        return"<span class='label label-primary'>个人发起</span>";
    } elseif ($activetype == '2') {
        return"<span class='label label-primary'>商户发起</span>";
    } elseif ($activetype == '3') {
        return"<span class='label label-primary'>官方发起</span>";
    }
}

//活动人数

function getactivejoin($uniacid, $activeid) {
    $active = pdo_fetch("SELECT * FROM" . tablename('hulu_like_active') . "WHERE uniacid=:uniacid AND active_id=:active_id", array(':uniacid' => $uniacid, ':active_id' => $activeid));

    $join_boy = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_join') . "WHERE uniacid=:uniacid AND active_id=:active_id AND join_sex=:join_sex AND join_pid=:join_pid", array(':uniacid' => $uniacid, ':active_id' => $activeid, ':join_sex' => '1', ':join_pid' => '3'));

    $join_girl = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_join') . "WHERE uniacid=:uniacid AND active_id=:active_id AND join_sex=:join_sex AND join_pid=:join_pid", array(':uniacid' => $uniacid, ':active_id' => $activeid, ':join_sex' => '2', ':join_pid' => '3'));

    return"男生：" . count($join_boy) . "/" . $active['active_boy'] . "<br/>女生：" . count($join_gril) . "/" . $active['active_girl'];
}

//昵称
function getnickname($uniacid, $openid) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['nickname'];
}

//头像
function getavatara($uniacid, $openid) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $uniacid, ':openid' => $openid));
    return $user['avatar'];
}
function get_fans_pic($url) {
    $hdrs = @get_headers($url);
    $pic_valid = is_array($hdrs) ? preg_match('/^HTTP\\/\\d+\\.\\d+\\s+2\\d\\d\\s+.*$/', $hdrs[0]) : false;
    return $pic_valid ? $url : false;
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
//订单类型
function getmoneytype($moneytype) {
    if ($moneytype == '1') {
        return"开通VIP";
    } elseif ($moneytype == '2') {
        return"参与活动";
    } elseif ($moneytype == '3') {
        return"充值金币";
    } elseif ($moneytype == '4') {
        return"送礼物";
    } elseif ($moneytype == '5') {
        return"打赏";
    } elseif ($moneytype == '6') {
        return"赞赏说说";
    }
}

//收支状态
function getmoneypid($moneypid) {
    if ($moneypid == '1') {
        return"<span class='label label-danger'>失败</span>";
    } elseif ($moneypid == '2') {
        return"<span class='label label-warning'>审核中</span>";
    } elseif ($moneypid == '3') {
        return"<span class='label label-success'>成功</span>";
    }
}

//收支状态
function getmoneystate($moneystate) {
    if ($moneystate == '1') {
        return"<span class='label label-danger'>支出</span>";
    } elseif ($moneystate == '2') {
        return"<span class='label label-danger'>提现</span>";
    } elseif ($moneystate == '3') {
        return"<span class='label label-success'>收益</span>";
    } elseif ($moneystate == '4') {
        return"<span class='label label-success'>提成</span>";
    }
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

?>