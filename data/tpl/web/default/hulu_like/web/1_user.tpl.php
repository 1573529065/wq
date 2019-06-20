<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<script language="JavaScript" src="<?php echo MODULE_URL;?>template/web/js.js"></script>

<div class="panel panel-primary">
  <div class="panel-heading">搜索会员</div>
  <div class="panel-body">

  <form class="form-horizontal" role="form" action="" method="POST">

  <!--表单开始-->
  <div class="form-group">
    <label class="col-sm-2 control-label">会员昵称</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="" name="nickname" value="<?php  echo $keywords;?>" placeholder="请输入会员昵称">	  
    </div>
  </div>
<!--表单结束-->

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
		  <input class="btn btn-default" type="submit" name="submit" value="搜 索">
                  <button name="output" value="1" class="btn btn-default"><i class="fa fa-file"></i> 导出数据</button>
    </div>
  </div>

  </form>

  </div>
  </div>

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a class="tablink" data-itemv="0" href="#home" role="tab" data-toggle="tab">所有会员</a></li>
    <li role="presentation"><a class="tablink" data-itemv="4" href="#profile" role="tab" data-toggle="tab">VIP会员</a></li>
    <li role="presentation"><a class="tablink" data-itemv="3" href="#messages" role="tab" data-toggle="tab">普通会员</a></li>
    <li role="presentation"><a class="tablink" data-itemv="2" href="#settings" role="tab" data-toggle="tab">待审核会员</a></li>
    <li role="presentation"><a class="tablink" data-itemv="1" href="#one" role="tab" data-toggle="tab">黑名单</a></li>
    
    <li role="presentation"><a class="tablink" data-itemv="11" href="#data_import" role="tab" data-toggle="tab">批量导入</a></li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div role="tabpanel" class="tab-pane" id="data_import">
        <!--列表循环开始-->
        <form action="" method="post" id="uploadForm" enctype="multipart/form-data">   
                    <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />    
             <div class="panel panel-default">
                <div class="panel-heading">批量导入</div>
                <div class="panel-body">
                        <div class="form-group">
                            <label class="col-xs-12 col-sm-4 col-md-3 col-lg-2 control-label">会员数据</label>
                            <div class="col-sm-8 col-xs-12">
                            <input type="file" name="file_cumtomer_fans" />
                            <a href="<?php echo MODULE_URL;?>template/upFile/data_user_tpl.xlsx">【点击下载用户Excel上传格式示例】</a>
                            <input name="submit" type="submit" value="提交" />
                            </div>
                        </div>
               </div> 
            </div>   
        </form>         
    </div>
    
    <div role="tabpanel" class="tab-pane active" id="home">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">所有会员</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/user', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/user', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($user)) { foreach($user as $key => $user) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_list', TEMPLATE_INCLUDEPATH));?>
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
            <div class="panel-heading">VIP会员</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/user', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/user', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($user4)) { foreach($user4 as $key => $user) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_4;?>
            </div>
        </div>
        <!--列表循环结束-->

    </div>
    <div role="tabpanel" class="tab-pane" id="messages">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">普通会员</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/user', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/user', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($user3)) { foreach($user3 as $key => $user) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_3;?>
            </div>
        </div>
        <!--列表循环结束-->

    </div>
    <div role="tabpanel" class="tab-pane" id="settings">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">待审核照片</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/user', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/user', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($user2)) { foreach($user2 as $key => $user) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_list', TEMPLATE_INCLUDEPATH));?>
                        <?php  } } ?>
                    </tbody>
                </table><?php  echo $pagination_2;?>
            </div>
        </div>
        <!--列表循环结束-->
    </div>
    <div role="tabpanel" class="tab-pane" id="one">
        <!--列表循环开始-->
        <div class="panel panel-default">
            <div class="panel-heading">黑名单</div>
            <div class="panel-body">
                <table class="table table-hover">
                    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/user', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/user', TEMPLATE_INCLUDEPATH));?>
                    <tbody>
                        <?php  if(is_array($user1)) { foreach($user1 as $key => $user) { ?>
                        <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_list', TEMPLATE_INCLUDEPATH));?>
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
function chg_sex(sex, id) {
    $.ajax({
        url: "<?php  echo $this->createWebUrl('user', array('op' => 'chgsex'));?>",
        type: 'post',
        dataType: 'text',
        data: {sex:sex, id:id},
        success:function(data){
            $('#sex_' + id).html(data);
        }                
    });    
}
</script>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>