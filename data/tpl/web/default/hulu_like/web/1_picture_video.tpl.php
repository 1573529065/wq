<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/web/public.css">

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a class="tablink" data-itemv="0" href="#home" role="tab" data-toggle="tab">所有视频</a></li>
    <li role="presentation"><a class="tablink" data-itemv="3" href="#profile" role="tab" data-toggle="tab">已显示视频</a></li>
    <li role="presentation"><a class="tablink" data-itemv="2" href="#messages" role="tab" data-toggle="tab">待审核视频</a></li>
    <li role="presentation"><a class="tablink" data-itemv="1" href="#settings" role="tab" data-toggle="tab">已屏蔽视频</a></li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">所有视频</div>
            <div class="panel-body">
                <?php  if(is_array($picture0)) { foreach($picture0 as $key => $picture) { ?>
                <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH)) : (include template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH));?>
                <?php  } } ?>
            </div><?php  echo $pagination_0;?>
        </div>
        <!--列表循环结束-->
    </div>


    <div role="tabpanel" class="tab-pane" id="profile">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">已显示视频</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/picture', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/picture', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($picture3)) { foreach($picture3 as $key => $picture) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH)) : (include template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_3;?>
            </div>
        </div>
        <!--列表循环结束-->
    </div>
    
    <div role="tabpanel" class="tab-pane" id="messages">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">待审核视频</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/picture', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/picture', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($picture2)) { foreach($picture2 as $key => $picture) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH)) : (include template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_2;?>
            </div>
        </div>
        <!--列表循环结束-->
    </div>


    <div role="tabpanel" class="tab-pane" id="settings">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">已屏蔽视频</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/picture', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/picture', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($picture1)) { foreach($picture1 as $key => $picture) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH)) : (include template('web/page/picture_list_video', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_1;?>
            </div>
        </div>
        <!--列表循环结束-->
    </div>
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