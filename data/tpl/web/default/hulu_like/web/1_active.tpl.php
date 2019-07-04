<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<div>
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a class="tablink" data-itemv="0" href="#home" aria-controls="home"
                                                  role="tab" data-toggle="tab">所有活动</a></li>
        <li role="presentation"><a class="tablink" data-itemv="5" href="#profile" aria-controls="profile" role="tab"
                                   data-toggle="tab">已结束</a></li>
        <li role="presentation"><a class="tablink" data-itemv="4" href="#messages" aria-controls="messages" role="tab"
                                   data-toggle="tab">进行中</a></li>
        <li role="presentation"><a class="tablink" data-itemv="3" href="#settings" aria-controls="settings" role="tab"
                                   data-toggle="tab">报名中</a></li>
        <li role="presentation"><a class="tablink" data-itemv="2" href="#one" aria-controls="one" role="tab"
                                   data-toggle="tab">待审核</a></li>
        <li role="presentation"><a class="tablink" data-itemv="1" href="#two" aria-controls="two" role="tab"
                                   data-toggle="tab">已屏蔽</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">所有活动</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/active', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/active', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($active)) { foreach($active as $key => $active) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/active_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/active_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_0;?>
                </div>
            </div>
            <!--列表循环结束-->
        </div>
        <div role="tabpanel" class="tab-pane" id="profile">
            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">已结束</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/active', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/active', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($active5)) { foreach($active5 as $key => $active) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/active_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/active_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_5;?>
                </div>
            </div>
            <!--列表循环结束-->
        </div>
        <div role="tabpanel" class="tab-pane" id="messages">

            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">进行中</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/active', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/active', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($active4)) { foreach($active4 as $key => $active) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/active_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/active_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_4;?>
                </div>
            </div>
            <!--列表循环结束-->
        </div>
        <div role="tabpanel" class="tab-pane" id="settings">
            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">报名中</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/active', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/active', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($active3)) { foreach($active3 as $key => $active) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/active_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/active_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_3;?>
                </div>
            </div>
            <!--列表循环结束-->
        </div>
        <div role="tabpanel" class="tab-pane" id="one">
            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">待审核</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/active', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/active', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($active2)) { foreach($active2 as $key => $active) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/active_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/active_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_2;?>
                </div>
            </div>
            <!--列表循环结束-->
        </div>
        <div role="tabpanel" class="tab-pane" id="two">
            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">已屏蔽</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/active', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/active', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($active1)) { foreach($active1 as $key => $active) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/active_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/active_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_1;?>
                </div>
            </div>
            <!--列表循环结束-->
        </div>
    </div>
</div>
<script type="text/javascript">
    var flag = 0;
    $('.tablink').click(function () {
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
                data: {set_page_param: post_v},
                success: function (data) {
                    flag = 0;
                }
            });
        }
    });
    $("a[data-itemv$='<?php  echo $hit_tab;?>']").click();
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
