<?php

defined('IN_IA') or exit('Access Denied');
class Hulu_likeModule extends WeModule
{
	public function fieldsFormDisplay($rid = 0)
	{
	}
	public function fieldsFormValidate($rid = 0)
	{
		return '';
	}
	public function fieldsFormSubmit($rid)
	{
	}
	public function ruleDeleted($rid)
	{
	}
	public function settingsDisplay($settings)
	{
		global $_W, $_GPC;
		if (checksubmit()) {
			$this->saveSettings($dat);
		}
		header('Location: ' . $this->createWebUrl('make'));
	}
}