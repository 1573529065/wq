<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<div class="panel panel-info">
    <div class="panel-heading">筛选</div>
    <div class="panel-body">
        <form action="./index.php" method="get" class="form-horizontal" role="form">
            <input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="hulu_like" />
            <input type="hidden" name="do" value="money" />
            <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">资金类型</label>
                    <div class="col-sm-9 col-md-8 col-lg-8 col-xs-12">
                            <select class="form-control" name="type">
                                    <option value="">所有类型</option>
                                    <option value="1"<?php  if($_GPC['type'] == '1') { ?> selected="selected"<?php  } ?>>支出</option>
                                    <option value="3"<?php  if($_GPC['type'] == '3') { ?> selected="selected"<?php  } ?>>收入</option>
                                    <option value="4"<?php  if($_GPC['type'] == '4') { ?> selected="selected"<?php  } ?>>提成</option>
                            </select>
                    </div>
            </div>            

            <div class="form-group">
                    <div class="pull-right col-xs-12 col-sm-3 col-md-2 col-lg-4">
                            <button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
                    </div>
            </div>                
                
        </form>
    </div>
  </div>

<!--列表循环开始-->

<div class="panel panel-default">
    <div class="panel-heading">资金明细</div>
    <div class="panel-body">
        <table class="table table-hover">
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/money', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/money', TEMPLATE_INCLUDEPATH));?>
            <tbody>
                <?php  if(is_array($money)) { foreach($money as $key => $money) { ?>
                <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/money_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/money_list', TEMPLATE_INCLUDEPATH));?>
                <?php  } } ?>
            </tbody>
        </table>
    </div>
</div>
<!--列表循环结束-->

<?php  echo $pagination;?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>