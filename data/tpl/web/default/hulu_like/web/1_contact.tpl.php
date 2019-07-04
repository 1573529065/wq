<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">所有查看联系方式</a></li>

    <!--
     <li role="presentation"><a href="#profile" role="tab" data-toggle="tab">已支付订单</a></li>
     <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">未支付订单</a></li>

     <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">Settings</a></li>
     -->
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">

        <!--列表循环开始-->

        <div class="panel panel-default">
            <div class="panel-heading">所有查看联系方式</div>
            <div class="panel-body">


                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/contact', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/contact', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                    <?php  if(is_array($contact)) { foreach($contact as $key => $contact) { ?>
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/contact_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/contact_list', TEMPLATE_INCLUDEPATH));?>
                    <?php  } } ?>
                    </tbody>
                </table>
                <?php  echo $pagination;?>
            </div>
        </div>
        <!--列表循环结束-->

    </div>


    <!--
    <div role="tabpanel" class="tab-pane" id="profile">


    </div>
    <div role="tabpanel" class="tab-pane" id="messages">


    </div>

    <div role="tabpanel" class="tab-pane" id="settings">...</div>
    -->
</div>


<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>