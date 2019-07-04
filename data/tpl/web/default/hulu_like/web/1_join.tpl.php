<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>


<div>

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a class="tablink" data-itemv="0" href="#home" aria-controls="home"
                                                  role="tab" data-toggle="tab">所有报名</a></li>
        <li role="presentation"><a class="tablink" data-itemv="3" href="#profile" aria-controls="profile" role="tab"
                                   data-toggle="tab">已成功</a></li>
        <li role="presentation"><a class="tablink" data-itemv="2" href="#messages" aria-controls="messages" role="tab"
                                   data-toggle="tab">未支付</a></li>
        <li role="presentation"><a class="tablink" data-itemv="1" href="#settings" aria-controls="settings" role="tab"
                                   data-toggle="tab">已失败</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">

            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">所有报名</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/join', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/join', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($join)) { foreach($join as $key => $join) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/join_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/join_list', TEMPLATE_INCLUDEPATH));?>
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
                <div class="panel-heading">已成功</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/join', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/join', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($join3)) { foreach($join3 as $key => $join) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/join_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/join_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_3;?>
                </div>
            </div>
            <!--列表循环结束-->

        </div>
        <div role="tabpanel" class="tab-pane" id="messages">

            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">未支付</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/join', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/join', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($join2)) { foreach($join2 as $key => $join) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/join_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/join_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                        </tbody>
                    </table>
                    <?php  echo $pagination_2;?>
                </div>
            </div>
            <!--列表循环结束-->

        </div>
        <div role="tabpanel" class="tab-pane" id="settings">

            <!--列表循环开始-->
            <div class="panel panel-default">
                <div class="panel-heading">已失败</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/join', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/join', TEMPLATE_INCLUDEPATH));?>
                        <tbody>
                        <?php  if(is_array($join1)) { foreach($join1 as $key => $join) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/join_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/join_list', TEMPLATE_INCLUDEPATH));?>
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