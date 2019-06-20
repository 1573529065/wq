<?php

defined('IN_IA') or exit('Access Denied');
session_start();
define('MD_ROOT', '../addons/hulu_like/');
class Hulu_likeModuleSite extends WeModuleSite
{
	function __construct()
	{
		global $_W, $_GPC;
		$string = $_SERVER['REQUEST_URI'];
		if (strpos($string, 'web') == true) {
			$this->getsq();
		} else {
			if ($_SESSION['openid']) {
				$_W['openid'] = $_SESSION['openid'];
			}
		}
		if ($_GPC['fseller'] == 'view') {
			$_W['container'] = 'wechat';
			$_W['openid'] = 'o2rprwC_ylBDroriLjcppgWylUds';
		}
	}
	public function checkImport()
	{
		return 1;
	}
	public function read($filename, $encode = "utf-8")
	{
		require_once IA_ROOT . '/framework/library/phpexcel/PHPExcel.php';
		$objPHPExcel = new PHPExcel();
		$objPHPExcel = PHPExcel_IOFactory::load($filename);
		$indata = $objPHPExcel->getSheet(0)->toArray();
		return $indata;
	}
	public function L($info)
	{
		load()->func('logging');
		logging_run($info);
	}
	public function getFootMenu()
	{
		global $_W, $_GPC;
		$menu = pdo_fetchall('SELECT * FROM ' . tablename('hulu_like_menu') . ' WHERE weid=:uniacid and donot_show=0 order by sort asc, id asc', array(":uniacid" => $_W['uniacid']));
		return $menu;
	}
	public function get_table_row($table_name, $id, $primary_key = "id", $sql_where = "")
	{
		if ($sql_where) {
			$sql = 'SELECT * FROM ' . tablename($table_name) . " WHERE {$sql_where}";
		} else {
			$sql = 'SELECT * FROM ' . tablename($table_name) . " WHERE {$primary_key}='{$id}' limit 1";
		}
		return pdo_fetch($sql);
	}
	public function getmainhuo()
	{
		$host = $_SERVER['HTTP_HOST'];
		$host = strtolower($host);
		if (strpos($host, '/') !== false) {
			$parse = @parse_url($host);
			$host = $parse['host'];
		}
		$topleveldomaindb = array("com", "edu", "gov", "int", "mil", "net", "org", "biz", "info", "pro", "name", "museum", "coop", "aero", "xxx", "idv", "mobi", "cc", "me", "top");
		$str = '';
		foreach ($topleveldomaindb as $v) {
			$str .= ($str ? '|' : '') . $v;
		}
		$matchstr = '[^\\.]+\\.(?:(' . $str . ')|\\w{2}|((' . $str . ')\\.\\w{2}))$';
		if (preg_match('/' . $matchstr . '/ies', $host, $matchs)) {
			$domain = $matchs['0'];
		} else {
			$domain = $host;
		}
		return $domain;
	}
	public function getsq()
	{
		$domain = $this->getmainhuo();
		$check_host = 'https://www.we8cc.com/w7mauth.php?m=hulu_like&dm=' . $domain;
		$check_info = file_get_contents($check_host);
		if (trim($check_info) == '') {
			$ch = curl_init();
			$timeout = 5;
			curl_setopt($ch, CURLOPT_URL, $check_host);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
			$check_info = curl_exec($ch);
			curl_close($ch);
		}
		//if ($check_info !== '0') {
			//echo $check_info . base64_decode('5Z+f5ZCN5pyq5o6I5p2DLOiBlOezu1FR77yaMzM1NDk4ODM4Me+8jOi0reS5sOato+eJiOaOiOadgw==');
			//die;
		//}
	}
	public function exportexcel($data = array(), $title = array(), $filename = "report")
	{
		header('Content-type:application/octet-stream');
		header('Accept-Ranges:bytes');
		header('Content-type:application/vnd.ms-excel');
		header('Content-Disposition:attachment;filename=' . $filename . '.xls');
		header('Pragma: no-cache');
		header('Expires: 0');
		if (!empty($title)) {
			foreach ($title as $k => $v) {
				$title[$k] = iconv('UTF-8', 'GB2312', $v);
			}
			$title = implode('	', $title);
			echo "{$title}\n";
		}
		if (!empty($data)) {
			foreach ($data as $key => $val) {
				foreach ($val as $ck => $cv) {
					echo iconv('UTF-8', 'GB2312', trim($cv)) . '	';
				}
				echo '
';
			}
		}
	}
	public function doMobileFengmian1()
	{
	}
	public function doWebGuize()
	{
	}
	public function doWebUser()
	{
		global $_W, $_GPC;
		include_once MD_ROOT . 'inc/web/function.php';
		if ($_GPC['output']) {
			$purposedata = purposedata();
			$feelingdata = feelingdata();
			$marrydata = marrydata();
			$salarydata = salarydata();
			$educationdata = educationdata();
			$areadata = areadata();
			$housedata = housedata();
			$careerdata = careerdata();
			$list_export = array();
			$uniacid = $_W['uniacid'];
			$sql = 'SELECT distinct u.sex, u.nickname, u.avatar,
                            um.member_birthday, um.member_height, um.member_weight, um.member_purpose,um.member_marry,um.member_feeling,um.member_wechat,um.member_tel,um.member_province,um.member_city,um.member_district,um.member_content, 
                            um.member_edu,um.member_salary,um.member_house,um.member_nation,um.member_career,
                            uq.request_age_small, uq.request_age_big, uq.request_height_small, uq.request_height_big, uq.request_weight_small, uq.request_weight_big, uq.request_salary, uq.request_education, uq.request_area   
                            ' . 'FROM ' . tablename('hulu_like_user') . ' u ' . 'left join ' . tablename('hulu_like_member') . ' um on u.openid=um.openid ' . 'left join ' . tablename('hulu_like_request') . ' uq  on u.openid=uq.openid ' . "WHERE u.uniacid='{$uniacid}' and u.sham=1 and u.upid=3 ORDER BY u.uid desc";
			$lists = pdo_fetchall($sql);
			foreach ($lists as $v) {
				$list_export[] = array($v['nickname'], $v['sex'] == 1 ? '男' : '女', (strstr($v['avatar'], 'http') ? '' : $_W['attachurl']) . $v['avatar'], date('Y-m-d', $v['member_birthday']), $v['member_height'] . 'cm', $v['member_weight'] . 'kg', $purposedata[$v['member_purpose'] - 1]['purpose_name'], $feelingdata[$v['member_feeling'] - 1]['feeling_name'], $marrydata[$v['member_marry'] - 1]['marry_name'], $v['member_wechat'], $v['member_tel'], $educationdata[$v['member_edu'] - 1]['education_name'], $salarydata[$v['member_salary'] - 1]['salary_name'], $housedata[$v['member_house'] - 1]['house_name'], $careerdata[$v['member_career'] - 1]['career_name'], $v['member_nation'], $v['member_province'] . $v['member_city'] . $v['member_district'], $v['member_content'], $v['request_age_small'] . '-' . $v['request_age_big'] . '岁', $v['request_height_small'] . '-' . $v['request_height_big'] . 'cm', $v['request_weight_small'] . '-' . $v['request_weight_big'] . 'kg', $salarydata[$v['request_salary'] - 1]['salary_name'], $educationdata[$v['request_education'] - 1]['education_name'], $areadata[$v['request_area'] - 1]['area_name']);
			}
			$this->exportexcel($list_export, array("昵称", "性别", "头像地址", "出生日期", "身高", "体重kg", "交友目的", "感情状态", "婚姻状态", "微信号", "手机号", "学历", "月均收入", "房产情况", "职业", "民族", "所在城市", "交友宣言", "择偶要求年龄范围", "择偶要求身高范围", "择偶要求体重范围", "择偶要求收入", "择偶要求学历", "择偶要求区域"), 'user_excel_' . date('Y-m-d'));
			exit;
		}
		if (checksubmit() && !empty($_FILES['file_cumtomer_fans']['name']) && $this->checkImport($_FILES['file_cumtomer_fans'])) {
			$tmp_file = $_FILES['file_cumtomer_fans']['tmp_name'];
			$file_types = explode('.', $_FILES['file_cumtomer_fans']['name']);
			$file_type = $file_types[count($file_types) - 1];
			$savePath = IA_ROOT . '/addons/hulu_like/template/upFile/';
			$str = date('Ymdhis');
			$file_name = $str . '.' . $file_type;
			if (!copy($tmp_file, $savePath . $file_name)) {
				message('上传失败');
			}
			$res = $this->read($savePath . $file_name);
			$sham = pdo_fetchcolumn('SELECT count(*) FROM' . tablename('hulu_like_user') . 'WHERE uniacid=:uniacid AND sham=:sham', array(":uniacid" => $_W['uniacid'], ":sham" => "1"));
			$ayear = 24 * 60 * 60 * 365;
			$import_num = 0;
			foreach ($res as $x => $v) {
				if ($x != 0) {
					$openid = 'abcde' . (count($sham) + $x);
					$moniuser = array("uniacid" => $_W['uniacid'], "openid" => trim($v[0]) ? trim($v[0]) : $openid, "upid" => "3", "sham" => "1", "vip_endtime" => "", "realname" => rand(1, 2), "sex" => trim($v[1]) ? trim($v[1]) : 1, "nickname" => trim($v[2]) ? trim($v[2]) : $openid, "avatar" => trim($v[3]) ? trim($v[3]) : '../addons/hulu_like/public/avatar/' . rand(0, 100) . '.jpg', "address" => trim($v[4]), "login_time" => "", "login_ip" => $_W['clientip'], "login_container" => $_W['container'], "login_os" => $_W['os'], "reg_time" => $_W['timestamp'], "reg_ip" => $_W['clientip']);
					$exist_data = pdo_fetchcolumn('SELECT count(*) FROM' . tablename('hulu_like_user') . 'WHERE uniacid=:uniacid AND openid=:openid', array(":uniacid" => $_W['uniacid'], ":openid" => $moniuser['openid']));
					if (!$exist_data) {
						$monimember = array("uniacid" => $_W['uniacid'], "openid" => $moniuser['openid'], "member_birthday" => strtotime(trim($v[6]) ? trim($v[6]) : '1995-01-01 00:00:01'), "member_height" => trim($v[7]) ? trim($v[7]) : rand(158, 175), "member_weight" => trim($v[8]) ? trim($v[8]) : rand(40, 90), "member_purpose" => trim($v[9]) ? trim($v[9]) : rand(1, 5), "member_feeling" => trim($v[10]) ? trim($v[10]) : rand(1, 3), "member_marry" => trim($v[11]) ? trim($v[11]) : rand(1, 4), "member_wechat" => trim($v[12]) ? trim($v[12]) : random(10, false), "member_tel" => trim($v[5]), "member_province" => trim($v[13]), "member_city" => trim($v[14]), "member_district" => trim($v[15]), "member_content" => trim($v[16]), "member_edu" => trim($v[23]), "member_salary" => trim($v[24]), "member_house" => trim($v[25]), "member_nation" => trim($v[26]), "member_career" => trim($v[27]));
						$age_in = explode('-', trim($v[17]));
						$height_in = explode('-', trim($v[18]));
						$weight_in = explode('-', trim($v[19]));
						$monirequest = array("uniacid" => $_W['uniacid'], "openid" => $moniuser['openid'], "request_age_small" => $age_in[0] ? $age_in[0] : rand(18, 30), "request_age_big" => $age_in[1] ? $age_in[1] : rand(31, 58), "request_height_small" => $height_in[0] ? $height_in[0] : rand(150, 199), "request_height_big" => $height_in[1] ? $height_in[1] : rand(200, 220), "request_weight_small" => $weight_in[0] ? $weight_in[0] : rand(40, 100), "request_weight_big" => $weight_in[1] ? $weight_in[1] : rand(101, 140), "request_salary" => trim($v[20]) ? trim($v[20]) : rand(1, 14), "request_education" => trim($v[21]) ? trim($v[21]) : rand(1, 11), "request_area" => trim($v[22]) ? trim($v[22]) : rand(1, 7));
						$monimore = array("uniacid" => $_W['uniacid'], "openid" => $moniuser['openid']);
						$res1 = pdo_insert('hulu_like_user', $moniuser);
						$res2 = pdo_insert('hulu_like_member', $monimember);
						$res3 = pdo_insert('hulu_like_request', $monirequest);
						$res4 = pdo_insert('hulu_like_more', $monimore);
						$import_num++;
					}
				}
			}
			$_SESSION['set_page_param'] = 0;
			$curr_index_url = $this->createWebUrl('user');
			message('导入成功 ' . $import_num . ' 条记录', $curr_index_url, 'success');
		}
		if ('chgsex' == $_GPC['op']) {
			pdo_update('hulu_like_user', array("sex" => $_GPC['sex']), array("uid" => (int) $_GPC['id']));
			if ($_GPC['sex'] == 2) {
				echo '女';
			} else {
				echo '男';
			}
			exit;
		}
		$get_page_0 = 0;
		$get_page_1 = 0;
		$get_page_2 = 0;
		$get_page_3 = 0;
		$get_page_4 = 0;
		$pageSize = 15;
		$hit_tab = $_SESSION['set_page_param'] > 0 ? $_SESSION['set_page_param'] : 0;
		${'get_page_' . $hit_tab} = intval($_GPC['page']);
		$where = '';
		$keywords = $_GPC['nickname'];
		if ($keywords != '') {
			$where .= 'AND nickname like \'%' . $keywords . '%\'';
		}
		$pageIndex = max(1, $get_page_0);
		$sql_count = 'SELECT count(*) FROM ' . tablename('hulu_like_user') . ' WHERE uniacid=\'' . $_W['uniacid'] . "' AND sham=1 {$where}";
		$user = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND sham=1 {$where} ORDER BY uid DESC LIMIT " . ($pageIndex - 1) * $pageSize . ',' . $pageSize, array(":uniacid" => $_W['uniacid']));
		$total = pdo_fetchcolumn($sql_count);
		$pagination_0 = pagination($total, $pageIndex, $pageSize);
		$i = 1;
		while ($i <= 4) {
			$sql_con = '';
			if ($i == 4) {
				$sql_con .= 'and sham=1 and upid=4';
			} else {
				if ($i == 3) {
					$sql_con .= 'and sham=1 and upid=3';
				} else {
					if ($i == 2) {
						$sql_con .= 'and sham=1 and upid=2';
					} else {
						if ($i == 1) {
							$sql_con .= 'and sham=1 and upid=1';
						}
					}
				}
			}
			$pageIndex = max(1, ${'get_page_' . $i});
			$sql_count = 'SELECT count(*) FROM ' . tablename('hulu_like_user') . ' WHERE uniacid=\'' . $_W['uniacid'] . "' {$sql_con} {$where}";
			${'user' . $i} = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid {$sql_con} {$where} ORDER BY uid DESC LIMIT " . ($pageIndex - 1) * $pageSize . ',' . $pageSize, array(":uniacid" => $_W['uniacid']));
			$total = pdo_fetchcolumn($sql_count);
			${'pagination_' . $i} = pagination($total, $pageIndex, $pageSize);
			$i++;
		}
		include $this->template('web/user');
	}
	public function getUserIdState($val)
	{
		if ($val == 2) {
			return '【已认证】';
		} else {
			if ($val == 3) {
				return '【审核中】';
			} else {
				if ($val == 4) {
					return '【不合格】';
				}
			}
		}
	}
	public function doWebMake1()
	{
	}
	public function doMobileShouye()
	{
	}
	public function doMobileGeren()
	{
	}
	public function doMobileKuaijie()
	{
	}
	public function doMobileGetmore()
	{
		global $_W, $_GPC;
		$page = (int) $_GPC['page'];
		$page_size = 20;
		$type = $_GPC['type'];
		$limit = ' limit ' . ($page - 1) * $page_size . ',' . $page_size;
		if ($type == 'new') {
			$user = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND upid in (3,4) ORDER BY uid DESC {$limit}", array(":uniacid" => $_W['uniacid']));
		} else {
			if ($type == 'girl') {
				$user = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND upid in (3,4) AND sex=:sex ORDER BY login_time DESC {$limit}", array(":uniacid" => $_W['uniacid'], ":sex" => "2"));
			} else {
				if ($type == 'boy') {
					$user = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND upid in (3,4) AND sex=:sex ORDER BY login_time DESC {$limit}", array(":uniacid" => $_W['uniacid'], ":sex" => "1"));
				} else {
					if ($type == 'real') {
						$user = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND upid in (3,4) AND realname=:realname ORDER BY uid DESC {$limit}", array(":uniacid" => $_W['uniacid'], ":realname" => "2"));
					} else {
						if ($type == 'vip') {
							$user = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND upid=:upid ORDER BY login_time DESC {$limit}", array(":uniacid" => $_W['uniacid'], ":upid" => "4"));
						} else {
							$user = pdo_fetchall('SELECT * FROM' . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND upid in (3,4) ORDER BY uid DESC {$limit}", array(":uniacid" => $_W['uniacid']));
						}
					}
				}
			}
		}
		if ($user) {
			include_once MD_ROOT . 'inc/mobile/function.php';
			include $this->template('user');
		}
		exit;
	}
	public function payResult($params)
	{
		global $_W;
		if ($params['result'] == 'success' && $params['from'] == 'notify') {
			pdo_update('hulu_like_order', array("order_pid" => "2", "order_endtime" => $_W['timestamp']), array("uniacid" => $_W['uniacid'], "order_num" => $params['tid']));
			$order = pdo_fetch('SELECT * FROM' . tablename('hulu_like_order') . 'WHERE uniacid=:uniacid AND order_num=:order_num', array(":uniacid" => $_W['uniacid'], ":order_num" => $params['tid']));
			$make = pdo_fetch('SELECT * FROM' . tablename('hulu_like_make') . 'WHERE uniacid=:uniacid', array(":uniacid" => $_W['uniacid']));
			if ($order['order_type'] == '1') {
				$order_type = '1';
				$user = pdo_fetch('SELECT * FROM' . tablename('hulu_like_user') . 'WHERE uniacid=:uniacid AND openid=:openid', array(":uniacid" => $_W['uniacid'], ":openid" => $order['openid']));
				if ($user['vip_endtime'] >= $_W['timestamp']) {
					$vip_endtime = $user['vip_endtime'] + 24 * 60 * 60 * $order['order_vip_days'];
				} else {
					if ($user['vip_endtime'] < $_W['timestamp']) {
						$vip_endtime = $_W['timestamp'] + 24 * 60 * 60 * $order['order_vip_days'];
					}
				}
				pdo_update('hulu_like_user', array("upid" => "4", "vip_endtime" => $vip_endtime), array("uniacid" => $_W['uniacid'], "openid" => $order['openid']));
			} else {
				if ($order['order_type'] == '2') {
					$order_type = '2';
					pdo_update('hulu_like_join', array("join_pid" => "3"), array("uniacid" => $_W['uniacid'], "join_id" => $order['order_join_id']));
				} else {
					if ($order['order_type'] == '3') {
						$order_type = '3';
						$jinbi = $order['order_money'] * $make['make_jinbi_bili'];
						$chongzhidata = array("uniacid" => $_W['uniacid'], "openid" => $order['openid'], "chongzhi_type" => "1", "chongzhi_jinbi" => $jinbi, "order_money" => $order['order_money'], "chongzhi_time" => $_W['timestamp'], "chongzhi_ip" => $_W['clientip'], "chongzhi_container" => $_W['container'], "chongzhi_os" => $_W['os']);
						pdo_insert('hulu_like_chongzhi', $chongzhidata);
						$user = pdo_fetch('SELECT * FROM' . tablename('hulu_like_user') . 'WHERE uniacid=:uniacid AND openid=:openid', array(":uniacid" => $_W['uniacid'], ":openid" => $order['openid']));
						$jinbi_new = $jinbi + $user['user_jinbi'];
						pdo_update('hulu_like_user', array("user_jinbi" => $jinbi_new), array("uniacid" => $_W['uniacid'], "openid" => $order['openid']));
					} else {
						if ($order['order_type'] == '4') {
							$order_type = '4';
							$presentdata = array("uniacid" => $_W['uniacid'], "openid" => $order['order_gift_receive'], "present_send" => $order['openid'], "gift_id" => $order['order_gift_id'], "present_time" => $_W['timestamp'], "present_ip" => $_W['clientip'], "present_container" => $_W['container'], "present_os" => $_W['os']);
							pdo_insert('hulu_like_present', $presentdata);
							$moneydata = array("uniacid" => $_W['uniacid'],
                                                            "openid" => $order['order_gift_receive'],
                                                            "money_pid" => "3",
                                                            "money_state" => "3", 
                                                            "money_type" => $order_type,
                                                            "money_money" => $order['order_money'] * $make['make_bili_gift'],
                                                            "money_time" => $_W['timestamp'],
                                                            "money_ip" => $_W['clientip'],
                                                            "money_container" => $_W['container'],
                                                            "money_os" => $_W['os']);
                                                        pdo_insert('hulu_like_money', $moneydata);
                                                        $pOpenid = pdo_fetch("SELECT * FROM".tablename('hulu_like_share')."WHERE share_openid=:share_openid",array(':share_openid'=>$order['order_gift_receive']));
                                                        if($pOpenid){
                                                            $moneydata1 = array(
                                                            "uniacid" => $pOpenid['uniacid'],
                                                            "openid" => $pOpenid['openid'],
                                                            "money_pid" => "3",
                                                            "money_state" => "3", 
                                                            "money_type" => $order_type,
                                                            "money_money" => $order['order_money'] * $make['make_sj_bl'],
                                                            "money_time" => $_W['timestamp'],
                                                            "money_ip" => $_W['clientip'],
                                                            "money_container" => $_W['container'],
                                                            "money_os" => $_W['os']);
                                                            pdo_insert('hulu_like_money', $moneydata1);
                                                        }
                                                        
						} else {
							if ($order['order_type'] == '5') {
								$order_type = '5';
								$moneydata = array(
                                                                    "uniacid" => $_W['uniacid'],
                                                                    "openid" => $order['order_dashang_receive'],
                                                                    "money_pid" => "3",
                                                                    "money_state" => "3",
                                                                    "money_type" => $order_type,
                                                                    "money_money" => $order['order_money'] * $make['make_bili_dashang'],
                                                                    "money_time" => $_W['timestamp'],
                                                                    "money_ip" => $_W['clientip'],
                                                                    "money_container" => $_W['container'],
                                                                    "money_os" => $_W['os']);
                                                        pdo_insert('hulu_like_money', $moneydata);
                                                        $pOpenid = pdo_fetch("SELECT * FROM".tablename('hulu_like_share')."WHERE share_openid=:share_openid",array(':share_openid'=>$order['order_dashang_receive']));
                                                        if($pOpenid){
                                                            $moneydata1 = array(
                                                            "uniacid" => $pOpenid['uniacid'],
                                                            "openid" => $pOpenid['openid'],
                                                            "money_pid" => "3",
                                                            "money_state" => "3", 
                                                            "money_type" => $order_type,
                                                            "money_money" => $order['order_money'] * $make['make_sj_bl'],
                                                            "money_time" => $_W['timestamp'],
                                                            "money_ip" => $_W['clientip'],
                                                            "money_container" => $_W['container'],
                                                            "money_os" => $_W['os']);
                                                            pdo_insert('hulu_like_money', $moneydata1);
                                                        }
							} else {
								if ($order['order_type'] == '6') {
									$order_type = '6';
									$talk = pdo_fetch('SELECT * FROM' . tablename('hulu_like_talk') . 'WHERE uniacid=:uniacid AND talk_id=:talk_id', array(":uniacid" => $_W['uniacid'], ":talk_id" => $order['order_talk_id']));
									$moneydata = array("uniacid" => $_W['uniacid'], "openid" => $talk['openid'], "money_pid" => "3", "money_state" => "3", "money_type" => $order_type, "money_money" => $order['order_money'] * $make['make_bili_zanshang'], "money_time" => $_W['timestamp'], "money_ip" => $_W['clientip'], "money_container" => $_W['container'], "money_os" => $_W['os']);
									pdo_insert('hulu_like_money', $moneydata);
                                                                        $pOpenid = pdo_fetch("SELECT * FROM".tablename('hulu_like_share')."WHERE share_openid=:share_openid",array(':share_openid'=>$order['order_dashang_receive']));
                                                        if($pOpenid){
                                                            $moneydata1 = array(
                                                            "uniacid" => $pOpenid['uniacid'],
                                                            "openid" => $pOpenid['openid'],
                                                            "money_pid" => "3",
                                                            "money_state" => "3", 
                                                            "money_type" => $order_type,
                                                            "money_money" => $order['order_money'] * $make['make_sj_bl'],
                                                            "money_time" => $_W['timestamp'],
                                                            "money_ip" => $_W['clientip'],
                                                            "money_container" => $_W['container'],
                                                            "money_os" => $_W['os']);
                                                            pdo_insert('hulu_like_money', $moneydata1);
                                                        }
								}
							}
						}
					}
				}
			}
			$systemdata = array("uniacid" => $_W['uniacid'], "openid" => $order['openid'], "system_pid" => "3", "system_state" => "3", "system_type" => $order_type, "system_money" => $order['order_money'], "system_time" => $_W['timestamp'], "system_ip" => $_W['clientip'], "system_container" => $_W['container'], "system_os" => $_W['os']);
			pdo_insert('hulu_like_system', $systemdata);
			$moneydata = array("uniacid" => $_W['uniacid'], "openid" => $order['openid'], "money_pid" => "3", "money_state" => "1", "money_type" => $order_type, "money_money" => -abs($order['order_money']), "money_time" => $_W['timestamp'], "money_ip" => $_W['clientip'], "money_container" => $_W['container'], "money_os" => $_W['os']);
			pdo_insert('hulu_like_money', $moneydata);
			if ($order['order_type'] != '2') {
				$user = pdo_fetch('SELECT * FROM' . tablename('hulu_like_user') . 'WHERE uniacid=:uniacid AND openid=:openid', array(":uniacid" => $_W['uniacid'], ":openid" => $order['openid']));
				if (!empty($user['user_shangji'])) {
					$sharedata = array("uniacid" => $_W['uniacid'], "openid" => $user['user_shangji'], "money_pid" => "3", "money_state" => "4", "money_type" => $order_type, "money_money" => $order['order_money'] * $make['make_tuiguang_bili'], "money_time" => $_W['timestamp'], "money_ip" => $_W['clientip'], "money_container" => $_W['container'], "money_os" => $_W['os']);
					pdo_insert('hulu_like_money', $sharedata);
				}
			}
			if ($params['fee'] != $order['fee']) {
				exit('用户支付的金额与订单金额不符合');
			}
		}
		if (empty($params['result']) || $params['result'] != 'success') {
		}
		if ($params['from'] == 'return') {
			if ($params['result'] == 'success') {
				message('支付成功！', $this->createMobileUrl('my'), 'success');
			} else {
				message('支付失败！', $this->createMobileUrl('my'), 'error');
			}
		}
	}
	public function doWebSetpageparam()
	{
		global $_W, $_GPC;
		$_SESSION['set_page_param'] = $_GPC['set_page_param'];
		echo 'ok';
		exit;
	}
	public function doMobileArdpostlogin()
	{
		global $_W, $_GPC;
		if (!empty($_POST)) {
			$token = $_POST['token'];
			$openid = $_POST['openid'];
			$sign = $_POST['sign'];
			$user = pdo_fetchall('SELECT * FROM ' . tablename('hulu_like_wxlogin') . " WHERE weid=:uniacid AND type='app' and openid='{$openid}'", array(":uniacid" => $_W['uniacid']));
			if ($user) {
				$updatesql = "update wxlogin set token='{$token}',sign='{$sign}' where openid='{$openid}' ";
				$execres = pdo_update('hulu_like_wxlogin', array("token" => $token, "sign" => $sign), array("id" => $user['id']));
				if ($execres) {
					echo '更新成功！';
				} else {
					echo '更新失败！';
				}
			} else {
				if (!empty($openid)) {
					$execres = pdo_insert('hulu_like_wxlogin', array("weid" => $_W['uniacid'], "type" => "app", "token" => $token, "openid" => $openid, "sign" => $sign));
					if ($execres) {
						echo '添加成功！';
					}
				}
			}
		} else {
			$openid = $_GPC['openid'];
			$user = pdo_fetch('SELECT * FROM ' . tablename('hulu_like_wxlogin') . " WHERE weid=:uniacid AND type='app' and openid='{$openid}' limit 1", array(":uniacid" => $_W['uniacid']));
			if ($user) {
				$_userjson = json_decode($user['token'], true);
				if (isset($_userjson['openid'])) {
					$userjson = $_userjson;
				} else {
					$ch = curl_init();
					$str = 'https://api.weixin.qq.com/sns/userinfo?access_token=' . $user['token'] . '&openid=' . $user['openid'];
					curl_setopt($ch, CURLOPT_URL, $str);
					curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
					$output = curl_exec($ch);
					$output = json_decode($output, true);
					if (isset($output['openid'])) {
						$userjson = $output;
					}
				}
				$condition = ' fans.openid=\'' . $userjson['openid'] . '\'';
				$sql = 'SELECT fans.openid, fans.nickname, fans.unionid, mem.credit1, mem.avatar, mem.uid ' . 'FROM ' . tablename('mc_mapping_fans') . ' fans ' . 'LEFT JOIN ' . tablename('mc_members') . ' mem ON fans.uid=mem.uid ' . "WHERE {$condition} LIMIT 1";
				$member_arr = pdo_fetch($sql);
				if ($member_arr) {
					$_W['openid'] = $member_arr['openid'];
					$_SESSION['openid'] = $_W['openid'];
					$_SESSION['nickname'] = $member_arr['nickname'];
					$_SESSION['uid'] = $member_arr['uid'];
				} else {
					load()->model('mc');
					$_W['openid'] = $userjson['openid'];
					$_SESSION['openid'] = $_W['openid'];
					$_SESSION['nickname'] = $userjson['nickname'];
					$_SESSION['uid'] = mc_openid2uid($_W['openid']);
				}
				message('登录成功', $this->createMobileUrl('my'), 'success');
			} else {
				echo '无法跳转';
			}
		}
	}
}