<?php defined('IN_IA') or exit('Access Denied');?><!--列表循环开始-->

<div class="panel panel-default">
    <div class="panel-heading">添加广告</div>
    <div class="panel-body">
        <!--表单开始-->

        <form class="form-horizontal" role="form" action="" method="POST">

            <div class="form-group">
                <label class="col-sm-2 control-label">广告名称</label>
                <div class="col-sm-8">

                    <input type="text" name="ads_title" value="" class="form-control" id="" placeholder="广告名称">

                    <span class="help-block">广告名称</span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">广告状态</label>
                <div class="col-sm-8">

                    <!---->
                    <label class="radio-inline">
                        <input type="radio" name="ads_pid" id="" value="1" checked="checked">显示</label>
                    <label class="radio-inline">
                        <input type="radio" name="ads_pid" id="" value="2">隐藏</label>
                    <!---->

                    <span class="help-block">广告状态</span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">广告排序</label>
                <div class="col-sm-8">
                    <input type="number" name="ads_did" value="" class="form-control" id="" placeholder="广告排序">

                    <span class="help-block">广告排序</span>

                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-2 control-label">广告链接</label>
                <div class="col-sm-8">

                    <?php  echo tpl_form_field_link('ads_link');?>

                    <span class="help-block">广告链接</span>

                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">广告图片</label>
                <div class="col-sm-8">

                    <?php  echo tpl_form_field_image('ads_pic');?>
                    <span class="help-block">广告图片</span>

                </div>
            </div>


            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input class="btn btn-default" type="submit" name="submit" value="提 交">

                </div>
            </div>

            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </form>


        <!--表单结束-->

    </div>
</div>
<!--列表循环结束-->