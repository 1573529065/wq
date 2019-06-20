<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a class="tablink" data-itemv="0" href="#home" role="tab" data-toggle="tab">管理模拟会员</a></li>
    <li role="presentation"><a class="tablink" data-itemv="1" href="#profile" role="tab" data-toggle="tab">管理昵称/交友宣言</a></li>
    <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">添加昵称/交友宣言</a></li>
    <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">生成模拟会员</a></li>
    <!--
     <li role="presentation"><a href="#one" role="tab" data-toggle="tab"></a></li>
    -->
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">

        <a class="btn btn-default" href="<?php  echo $this->createWebUrl('moni_alldel');?>" role="button"><span class="glyphicon glyphicon-trash"></span>  删除所有虚拟会员
        </a>
        <br/><br/>
        <!--列表循环开始-->

        <div class="panel panel-default">
            <div class="panel-heading">模拟会员管理</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/user_moni', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/user_moni', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($user)) { foreach($user as $key => $user) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_list_moni', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_list_moni', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_0;?>
            </div>
        </div>
        <!--列表循环结束-->

    </div>
    <div role="tabpanel" class="tab-pane" id="profile">

        <!--列表循环开始-->

        <div class="panel panel-default">
            <div class="panel-heading">管理昵称/交友宣言</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/moni_sham', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/moni_sham', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($moni_sham)) { foreach($moni_sham as $key => $moni_sham) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/moni_sham_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/moni_sham_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_1;?>
            </div>
        </div>
        <!--列表循环结束-->

    </div>


    <div role="tabpanel" class="tab-pane" id="messages"><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/moni_sham_add', TEMPLATE_INCLUDEPATH)) : (include template('web/page/moni_sham_add', TEMPLATE_INCLUDEPATH));?></div>
    <div role="tabpanel" class="tab-pane" id="settings">
        <div class="alert alert-danger" role="alert">
            注意事项：<br/>
            ①：生成虚拟会员之前务必添加模拟会员昵称与模拟交友宣言，否则生成的模拟会员其昵称与交友宣言为空。<br/>
            ②：生成的模拟会员的头像，请放置在addons/hulu_like/public/avatar/，文件以1.jpg，2.jpg，3.jpg的命名方式。<br/>
        </div>
        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/moni_add', TEMPLATE_INCLUDEPATH)) : (include template('web/page/moni_add', TEMPLATE_INCLUDEPATH));?>
    </div>
    <!--
    <div role="tabpanel" class="tab-pane" id="one">...</div>
    -->

</div>
<script type="text/javascript">
    var flag = 0;
    $('.tablink').click(function() {
        if (flag == 1) {
            return;
        }
        flag = 1;
        if (flag == 1) {
            var post_v = $(this).attr('data-itemv');
            $.ajax({
                url: '<?php  echo $this->createWebUrl('setpageparam');?>',
                type: 'post',
                dataType: 'text',
                data: {set_page_param:post_v},
                success:function(data){
                    flag = 0;
                }                
            });            
        }
    });
    $("a[data-itemv$='<?php  echo $hit_tab;?>']").click();
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>