<?php
global $_W, $_GPC;
if ($_GPC['op'] == 'change') {
    if(pdo_query("UPDATE ".tablename('hulu_like_menu')." SET donot_show='".$_GPC['status']."' WHERE id=:id", array(':id' => $_GPC['id']))){
        echo json_encode(array('data' => $_GPC['status'], 'result' => 1));exit;
    }	
}
$menu = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_menu') . "WHERE weid=:uniacid", array(':uniacid' => $_W['uniacid']));
$urldata = array(
    array('name'=>'首页','pic'=>'bottom_menu_1.png','link'=>'fengmian',),
    array('name'=>'聊天','pic'=>'bottom_menu_2.png','link'=>'chat',),
    array('name'=>'活动','pic'=>'bottom_menu_3.png','link'=>'active',),
    array('name'=>'说说','pic'=>'bottom_menu_4.png','link'=>'talk',),
    array('name'=>'我的','pic'=>'bottom_menu_5.png','link'=>'my',),    
);

$menu_num = count($menu);
if ($menu_num < 5) {
    foreach ($urldata as $key => $url) {
        $menudata = array(
            'weid' => $_W['uniacid'],
            'menu_index' => $url['link'],
            'sort' => $key + 1,
            'name' => $url['name'],
            'pic' => '../addons/hulu_like/public/images/bottom_menu_' . ($key + 1) . '.png',
            'link' => $this->createMobileUrl($url['link']),
        );
        pdo_insert('hulu_like_menu', $menudata);
    }
} else {
    
}
$caidan = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_menu') . "WHERE weid=:uniacid ORDER BY sort ASC, id asc", array(':uniacid' => $_W['uniacid']));
include $this->template('web/menu');
?>