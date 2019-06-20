<?php
global $_W, $_GPC;
$type = $_GPC['type'];
$vid = $_GPC['vid'];
if ($type == 'quan') {
    $quan = pdo_fetch("SELECT * FROM" . tablename('hulu_info_info') . "WHERE uniacid=:uniacid AND quan_id=:quan_id", array(':uniacid' => $_W['uniacid'], ':quan_id' => $vid));
//说说
} elseif ($type == 'talk') {
    $talk = pdo_fetch("SELECT * FROM" . tablename('hulu_like_talk') . "WHERE uniacid=:uniacid AND talk_id=:talk_id", array(':uniacid' => $_W['uniacid'], ':talk_id' => $vid));
    if ($talk['talk_weizhi'] == '1') {
        $name = $talk['talk_content'];
        $jingwei = (explode(',', $talk['talk_jingwei']));
        $lat = $jingwei[0];
        $lng = $jingwei[1];
        $address = $talk['talk_address'];
        $link = $this->createMobileUrl('talk_view', array('vid' => $talk['talk_id']));
        if ($_GPC['getofajax']) {
            $info = array('lat' => (float)$lat, 'lng' => (float)$lng, 'name' => $name, 'address' => $address, 'link' => $link);
            echo json_encode(array('info' => $info));
            exit;
        }                
        include $this->template('weizhi');
    } elseif ($talk['talk_weizhi'] == '2') {
        msg('抱歉，该信息已经拒绝显示位置！', $this->createMobileUrl('talk'), 'error');
    }
}
?>