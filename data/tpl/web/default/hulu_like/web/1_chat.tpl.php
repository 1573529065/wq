<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<div>
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">管理消息</a></li>
        <!--
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
        -->
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <!--列表循环开始-->	
            <div class="panel panel-default">
                <div class="panel-heading">管理消息</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/chat', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/chat', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                            <?php  if(is_array($chat)) { foreach($chat as $key => $chat) { ?>
                            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/chat_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/chat_list', TEMPLATE_INCLUDEPATH));?>
                            <?php  } } ?>
                        </tbody>
                    </table><?php  echo $pagination;?>
                </div>
            </div>
            <!--列表循环结束-->

        </div>
        <!--
    <div role="tabpanel" class="tab-pane" id="profile">...</div>
    <div role="tabpanel" class="tab-pane" id="messages">...</div>
    <div role="tabpanel" class="tab-pane" id="settings">...</div>
        -->
    </div>

</div>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>