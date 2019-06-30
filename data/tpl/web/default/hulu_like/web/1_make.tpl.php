<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<form class="form-horizontal" role="form" action="" method="POST">
    <div class="panel panel-default">
        <div class="panel-heading">比例设置</div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-2 control-label">上级获得礼物佣金比例</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_sj_bl" value="<?php  echo round($make['make_sj_bl']*100,4);?>"
                               class="form-control" id="" placeholder="上级获得礼物佣金比例">
                        <div class="input-group-addon">%</div>
                    </div>

                    <span class="help-block">上级获得礼物佣金比例</span>

                </div>
            </div>
            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">分销商抽成比例</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_tuiguang_bili"
                               value="<?php  echo round($make['make_tuiguang_bili']*100,4);?>" class="form-control" id=""
                               placeholder="分销商抽成比例">
                        <div class="input-group-addon">%</div>
                    </div>

                    <span class="help-block">分销商抽成比例</span>

                </div>
            </div>
            <!--表单结束-->

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">会员收到礼物所获佣金比例</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_bili_gift"
                               value="<?php  echo round($make['make_bili_gift']*100,4);?>" class="form-control" id=""
                               placeholder="会员收到礼物所获佣金比例">
                        <div class="input-group-addon">%</div>
                    </div>

                    <span class="help-block">会员收到礼物所获佣金比例</span>

                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">会员收到打赏所获佣金比例</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_bili_dashang"
                               value="<?php  echo round($make['make_bili_dashang']*100,4);?>" class="form-control" id=""
                               placeholder="会员收到打赏所获佣金比例">
                        <div class="input-group-addon">%</div>
                    </div>

                    <span class="help-block">会员收到打赏所获佣金比例</span>

                </div>
            </div>
            <!--表单结束-->

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">会员收到消息所获佣金比例</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_bili_liaotian"
                               value="<?php  echo round($make['make_bili_liaotian']*100,4);?>" class="form-control" id=""
                               placeholder="会员收到消息所获佣金比例">
                        <div class="input-group-addon">%</div>
                    </div>

                    <span class="help-block">会员收到消息所获佣金比例</span>

                </div>
            </div>
            <!--表单结束-->

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">会员说说赞赏所获佣金比例</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_bili_zanshang"
                               value="<?php  echo round($make['make_bili_zanshang']*100,4);?>" class="form-control" id=""
                               placeholder="会员说说赞赏所获佣金比例">
                        <div class="input-group-addon">%</div>
                    </div>

                    <span class="help-block">会员说说赞赏所获佣金比例</span>

                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">活动定金支付比例</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_active_proportion"
                               value="<?php  echo round($make['make_active_proportion']*100,4);?>" class="form-control"
                               id="" placeholder="活动定金支付比例">
                        <div class="input-group-addon">%</div>
                    </div>

                    <span class="help-block">活动定金支付比例</span>

                </div>
            </div>
            <!--表单结束-->


        </div>
    </div>


    <div class="panel panel-default">
        <div class="panel-heading">提现设置</div>
        <div class="panel-body">

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">提现最低金额</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_tixian_money" value="<?php  echo $make['make_tixian_money'];?>"
                               class="form-control" id="" placeholder="提现最低金额">
                        <div class="input-group-addon">元</div>
                    </div>

                    <span class="help-block">提现最低金额</span>

                </div>
            </div>
            <!--表单结束-->

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">提现最短时间</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_tixian_time" value="<?php  echo $make['make_tixian_time'];?>"
                               class="form-control" id="" placeholder="提现最短时间">
                        <div class="input-group-addon">天</div>
                    </div>

                    <span class="help-block">提现最短时间</span>

                </div>
            </div>
            <!--表单结束-->

        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">分享设置</div>
        <div class="panel-body">

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">分享标题</label>
                <div class="col-sm-8">

                    <input type="text" name="make_share_title" value="<?php  echo $make['make_share_title'];?>" class="form-control"
                           id="" placeholder="分享标题">

                    <span class="help-block">分享标题</span>

                </div>
            </div>
            <!--表单结束-->

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">分享内容</label>
                <div class="col-sm-8">

                    <input type="text" name="make_share_content" value="<?php  echo $make['make_share_content'];?>"
                           class="form-control" id="" placeholder="分享内容">

                    <span class="help-block">分享内容</span>

                </div>
            </div>
            <!--表单结束-->

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">分享图片</label>
                <div class="col-sm-8">
                    <?php  echo tpl_form_field_image('make_share_picture',$make['make_share_picture']);?>


                    <span class="help-block">分享图片</span>

                </div>
            </div>
            <!--表单结束-->

        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">聊天设置</div>
        <div class="panel-body">


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">货币名称</label>
                <div class="col-sm-8">

                    <input type="text" name="make_jinbi_name" value="<?php  echo $make['make_jinbi_name'];?>" class="form-control"
                           id="" placeholder="货币名称">

                    <span class="help-block">货币名称</span>

                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">1元人民币等于金币数量</label>
                <div class="col-sm-8">

                    <input type="text" name="make_jinbi_bili" value="<?php  echo $make['make_jinbi_bili'];?>" class="form-control"
                           id="" placeholder="货币比例">

                    <span class="help-block">货币比例</span>

                </div>
            </div>
            <!--表单结束-->

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">免费聊天数量</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_liaotian_free" value="<?php  echo $make['make_liaotian_free'];?>"
                               class="form-control" id="" placeholder="免费聊天数量">
                        <div class="input-group-addon">条</div>
                    </div>

                    <span class="help-block">能免费发多少条聊天信息</span>

                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">开通聊天功能支付撩豆数量</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_liaotian_jinbi" value="<?php  echo $make['make_liaotian_jinbi'];?>"
                               class="form-control" id="" placeholder="免费聊天数量">
                        <div class="input-group-addon">个</div>
                    </div>

                    <span class="help-block">日后扩展用</span>

                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">开通聊天功能同时聊天人数数量</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_liaotian_person" value="<?php  echo $make['make_liaotian_person'];?>"
                               class="form-control" id="" placeholder="免费聊天数量">
                        <div class="input-group-addon">人</div>
                    </div>

                    <span class="help-block">日后扩展用</span>

                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">开通聊天功能时长</label>
                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_liaotian_time" value="<?php  echo $make['make_liaotian_time'];?>"
                               class="form-control" id="" placeholder="免费聊天数量">
                        <div class="input-group-addon">天</div>
                    </div>
                    <span class="help-block">日后扩展用</span>
                </div>
            </div>
            <!--表单结束-->
            <div class="form-group">
                <label class="col-sm-2 control-label">聊天、说说中的数字替换</label>
                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="chat_num_replace" value="<?php  echo $make['chat_num_replace'];?>"
                               class="form-control" id="chat_num_replace">
                        <div class="input-group-addon">限制一个字符</div>
                    </div>
                    <span class="help-block">聊天信息、说说信息中的数字（电话等联系方式）是否替换成其它字符（如：*），不填写将不屏蔽数字信息</span>
                </div>
            </div>

        </div>
    </div>


    <div class="panel panel-default">
        <div class="panel-heading">网站设置</div>
        <div class="panel-body">

            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">网站标题</label>
                <div class="col-sm-8">

                    <input type="text" name="make_web_title" value="<?php  echo $make['make_web_title'];?>" class="form-control"
                           id="" placeholder="网站标题">

                    <span class="help-block">网站标题</span>

                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">会员注册默认等级</label>
                <div class="col-sm-8">


                    <label class="radio-inline">
                        <input type="radio" name="make_user_pid" id="inlineRadio2" value="3" <?php  if($make['make_user_pid']=='3') { ?>checked="checked"<?php  } else { ?><?php  } ?>>已审核</label>
                    <label class="radio-inline">
                        <input type="radio" name="make_user_pid" id="inlineRadio2" value="2" <?php  if($make['make_user_pid']=='2') { ?>checked="checked"<?php  } else { ?><?php  } ?>>待审核</label>
                    <label class="radio-inline">
                        <input type="radio" name="make_user_pid" id="inlineRadio2" value="1" <?php  if($make['make_user_pid']=='1') { ?>checked="checked"<?php  } else { ?><?php  } ?>>回收站</label>

                    <span class="help-block">会员注册默认等级</span>
                </div>
            </div>
            <!--表单结束-->


            <!--表单开始-->


            <div class="form-group">
                <label class="col-sm-2 control-label">年VIP价格</label>

                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_vip_year" value="<?php  echo $make['make_vip_year'];?>" class="form-control"
                               id="" placeholder="年VIP价格">
                        <div class="input-group-addon">元</div>
                    </div>

                    <span class="help-block">开通年VIP费用</span>

                </div>
            </div>

            <!--表单结束-->


            <div class="form-group">
                <label class="col-sm-2 control-label">季度VIP价格</label>
                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_vip_quarter" value="<?php  echo $make['make_vip_quarter'];?>"
                               class="form-control" id="" placeholder="季度VIP价格">
                        <div class="input-group-addon">元</div>
                    </div>
                    <span class="help-block">开通季度VIP费用</span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">月VIP价格</label>
                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="text" name="make_vip_month" value="<?php  echo $make['make_vip_month'];?>" class="form-control"
                               id="" placeholder="月VIP价格">
                        <div class="input-group-addon">元</div>
                    </div>
                    <span class="help-block">开通月VIP费用</span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">VIP每天可查看联系方式数量</label>
                <div class="col-sm-8">
                    <div class="input-group">
                        <input type="number" name="make_vip_contact" value="<?php  echo $make['make_vip_contact'];?>"
                               class="form-control" id="" placeholder="VIP每天可查看联系方式数量">
                        <div class="input-group-addon">个</div>
                    </div>
                    <span class="help-block">VIP每天可查看联系方式数量</span>

                </div>
            </div>


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">VIP是否可以免费畅聊</label>
                <div class="col-sm-8">

                    <label class="radio-inline">
                        <input type="radio" name="make_vip_freechat" id="inlineRadio2" value="2" <?php  if($make['make_vip_freechat']=='2') { ?>checked="checked"<?php  } else { ?><?php  } ?>>免费</label>
                    <label class="radio-inline">
                        <input type="radio" name="make_vip_freechat" id="inlineRadio2" value="1" <?php  if($make['make_vip_freechat']=='1') { ?>checked="checked"<?php  } else { ?><?php  } ?>>付费</label>

                    <span class="help-block">VIP是否可以免费畅聊</span>
                </div>
            </div>
            <!--表单结束-->
            <div class="form-group">
                <label class="col-sm-2 control-label">查看会员联系方式</label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <input type="radio" name="look_user_tel_type" value="0" <?php  if($make['look_user_tel_type']!='1') { ?>checked="checked"<?php  } else { ?><?php  } ?>>默认</label>
                    <label class="radio-inline">
                        <input type="radio" name="look_user_tel_type" value="1" <?php  if($make['look_user_tel_type']=='1') { ?>checked="checked"<?php  } else { ?><?php  } ?>>身份证实名</label>
                    <span class="help-block">身份证实名：必须上传身份证照片认证通过后才能查看会员联系方式</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">腾讯云短信APPID</label>
                <div class="col-sm-8">

                    <input type="text" name="make_key" value="<?php  echo $make['make_key'];?>" class="form-control" id=""
                           placeholder="腾讯云短信APPID">

                    <span class="help-block">腾讯云短信APPID，申请地址：https://console.cloud.tencent.com/sms/（错误码：https://cloud.tencent.com/document/product/382/3771）
      </span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">腾讯云短信APPKEY</label>
                <div class="col-sm-8">

                    <input type="text" name="make_secret" value="<?php  echo $make['make_secret'];?>" class="form-control" id=""
                           placeholder="腾讯云短信APPKEY">

                    <span class="help-block">腾讯云短信APPKEY</span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">腾讯云短信签名</label>
                <div class="col-sm-8">

                    <input type="text" name="make_sign" value="<?php  echo $make['make_sign'];?>" class="form-control" id=""
                           placeholder="腾讯云短信签名">

                    <span class="help-block">腾讯云短信签名（例举：此处填写“交友平台”，则申请的模板格式必须为：您的{1}验证码是{2}，请于4分钟内填写。如非本人操作，请忽略本短信。）</span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">腾讯云短信模板ID</label>
                <div class="col-sm-8">

                    <input type="text" name="make_msgtemplate" value="<?php  echo $make['make_msgtemplate'];?>" class="form-control"
                           id="" placeholder="腾讯云短信模板ID">

                    <span class="help-block">腾讯云短信模板ID</span>

                </div>
            </div>


            <!--表单开始-->

            <div class="form-group">
                <label class="col-sm-2 control-label">百度地图KEY</label>
                <div class="col-sm-8">

                    <input type="text" name="make_key_baidu" value="<?php  echo $make['make_key_baidu'];?>" class="form-control"
                           id="" placeholder="请输入百度地图KEY">

                    <span class="help-block">百度地图KEY（服务端）http://developer.baidu.com/user/info</span>

                </div>
            </div>

            <!--表单结束-->


            <!--表单开始-->

            <div class="form-group">
                <label class="col-sm-2 control-label">腾讯地图KEY</label>
                <div class="col-sm-8">

                    <input type="text" name="make_key_qq" value="<?php  echo $make['make_key_qq'];?>" class="form-control" id=""
                           placeholder="请输入腾讯地图KEY">

                    <span class="help-block">腾讯地图KEY（服务端）</span>

                </div>
            </div>

            <!--表单结束-->


            <!--表单开始-->
            <div class="form-group">
                <label class="col-sm-2 control-label">客服微信二维码</label>
                <div class="col-sm-8">
                    <?php  echo tpl_form_field_image('make_kefu_qrcode',$make['make_kefu_qrcode']);?>


                    <span class="help-block">客服微信二维码</span>

                </div>
            </div>
            <!--表单结束-->


            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">

                    <input class="btn btn-default" type="submit" name="submit" value="提 交">

                </div>
            </div>


            <!--表单结束-->


        </div>
    </div>


    <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>