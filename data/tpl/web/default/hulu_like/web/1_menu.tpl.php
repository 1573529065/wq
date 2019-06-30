<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<div class="panel panel-default">
    <div class="panel-heading">菜单设置</div>
    <div class="panel-body">


        <table class="table table-hover">
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/menu', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/menu', TEMPLATE_INCLUDEPATH));?>


            <tbody>
            <?php  if(is_array($caidan)) { foreach($caidan as $key => $caidan) { ?>
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/menu_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/menu_list', TEMPLATE_INCLUDEPATH));?>


            <?php  } } ?>
            </tbody>

        </table>
    </div>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>