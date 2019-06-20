<?php
global $_W, $_GPC;
include 'function.php';
checklogin();
if ($_W['ispost']) {
    if ($_W['isajax']) {
        if (!empty($_GPC['real_tel'])) {
//            $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
//
//            $appid = $make['make_key'];
//            if (!$appid) {
//                echo'未配置短信功能';exit;
//            }
            /*
    ***聚合数据（JUHE.CN）短信API服务接口PHP请求示例源码
    ***DATE:2015-05-25
*/
    header('content-type:text/html;charset=utf-8');

    $sendUrl = 'http://v.juhe.cn/sms/send'; //短信接口的URL

  
 

 

//            $appkey = $make['make_secret'];
//            $sign = $make['make_sign'] ? $make['make_sign'] : '验证码';
//            $tpl_id = $make['make_msgtemplate'];
            $random = rand(100000, 999999);
//            $time = $_W['timestamp'];
//            $mobile = $_GPC['real_tel'];
//            $authcode = $_GPC['real_code'];
//            $sig = hash("sha256", "appkey=" . $appkey . "&random=" . $random . "&time=" . $time . "&mobile=" . $mobile, FALSE);
              $smsConf = array(
                    'key'   => '7daf87106dde6233e9be319c01bbe218', //您申请的APPKEY
                    'mobile'    => $_GPC['real_tel'], //接受短信的用户手机号码
                    'tpl_id'    => '90379', //您申请的短信模板ID，根据实际情况修改
                    'tpl_value' =>'#code#='.$random, //您设置的模板变量，根据实际情况修改
                );
//            $arr = array(
//                "tel" => array(
//                    "nationcode" => "86",
//                    "mobile" => $mobile,
//                ),
//                "sign" => $sign,
//                "tpl_id" => $tpl_id,
//                "params" => array(
//                    $sign,$authcode //您的{1}是{2}，请于{3}分钟内填写。如非本人操作，请忽略本短信。
//                ),
//                "sig" => $sig,
//                "time" => $time,
//                "extend" => "",
//                "ext" => "",
//            );

            load()->func('communication');
//            $url = "https://yun.tim.qq.com/v5/tlssmssvr/sendsms?sdkappid=" . $appid . "&random=" . $random;
//            $sms_res = ihttp_request($url, json_encode($arr));
                $content = juhecurl($sendUrl,$smsConf,1); //请求发送短信

     
            if (!$content) {
                echo'发送失败';
            } else {
                $result = json_decode($content,true);
                $error_code = $result['error_code'];
                if($error_code != 0){
                    //状态非0，说明失败
                    echo "短信发送失败";
                    exit();
                }
                $realdata = array(
                    'more_real_tel' => $_GPC['real_tel'],
                    'more_real_code' => $random,
                );
                $res = pdo_update('hulu_like_more', $realdata, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));

                if (!empty($res)) {
                    echo'验证码发送成功';
                } else {
                    echo'验证码发送失败';
                }                
            }
//***
        } else {
            echo"手机号码不能为空";
        }
    }
}


/**
 * 请求接口返回内容
 * @param  string $url [请求的URL地址]
 * @param  string $params [请求的参数]
 * @param  int $ipost [是否采用POST形式]
 * @return  string
 */
function juhecurl($url,$params=false,$ispost=0){
    $httpInfo = array();
    $ch = curl_init();
    curl_setopt( $ch, CURLOPT_HTTP_VERSION , CURL_HTTP_VERSION_1_1 );
    curl_setopt( $ch, CURLOPT_USERAGENT , 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22' );
    curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT , 30 );
    curl_setopt( $ch, CURLOPT_TIMEOUT , 30);
    curl_setopt( $ch, CURLOPT_RETURNTRANSFER , true );
    if( $ispost )
    {
        curl_setopt( $ch , CURLOPT_POST , true );
        curl_setopt( $ch , CURLOPT_POSTFIELDS , $params );
        curl_setopt( $ch , CURLOPT_URL , $url );
    }
    else
    {
        if($params){
            curl_setopt( $ch , CURLOPT_URL , $url.'?'.$params );
        }else{
            curl_setopt( $ch , CURLOPT_URL , $url);
        }
    }
    $response = curl_exec( $ch );
    if ($response === FALSE) {
        //echo "cURL Error: " . curl_error($ch);
        return false;
    }
    $httpCode = curl_getinfo( $ch , CURLINFO_HTTP_CODE );
    $httpInfo = array_merge( $httpInfo , curl_getinfo( $ch ) );
    curl_close( $ch );
    return $response;
}
?>