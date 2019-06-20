<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a class="tablink" data-itemv="0" href="#home" role="tab" data-toggle="tab">所有订单</a></li>
    <li role="presentation"><a class="tablink" data-itemv="2" href="#profile" role="tab" data-toggle="tab">已支付订单</a></li>
    <li role="presentation"><a class="tablink" data-itemv="1" href="#messages" role="tab" data-toggle="tab">未支付订单</a></li>
    <!--
  <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">Settings</a></li>
    -->
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">

        <!--列表循环开始-->

        <div class="panel panel-default">
            <div class="panel-heading">所有订单</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/order', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/order', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($order)) { foreach($order as $key => $order) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/order_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/order_list', TEMPLATE_INCLUDEPATH));?>
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
            <div class="panel-heading">已支付订单</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/order', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/order', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($order2)) { foreach($order2 as $key => $order) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/order_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/order_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_2;?>
            </div>
        </div>
        <!--列表循环结束-->

    </div>
    <div role="tabpanel" class="tab-pane" id="messages">

        <!--列表循环开始-->

        <div class="panel panel-default">
            <div class="panel-heading">未支付订单</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/order', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/order', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($order1)) { foreach($order1 as $key => $order) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/order_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/order_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_1;?>
            </div>
        </div>
        <!--列表循环结束-->
    </div>

    <!--
    <div role="tabpanel" class="tab-pane" id="settings">...</div>
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