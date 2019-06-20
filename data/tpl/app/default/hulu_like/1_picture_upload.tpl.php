<?php defined('IN_IA') or exit('Access Denied');?><style>
#picture_upload{float:left;width:100%;height:auto;margin:10px auto;}
.picture_upload_add{float:left;width:25%;height:120px;}
.picture_upload_add_pic{width:60px;height:80px;margin:10px auto;background-image:url("<?php echo MODULE_URL;?>public/images/upload.png");background-size:100% 100%;}
.picture_upload_add_p{width:100%;height:20px;margin:0px auto;text-align:center;line-height:20px;font-size:12px;color:#999;overflow:hidden;}
.picture_upload_yulan{float:left;width:25%;height:120px;}
.picture_upload_yulan_pic{width:60px;height:80px;margin:10px auto;position:relative;}
.picture_upload_yulan_pic img{width:100%;height:100%;}
.picture_upload_yulan_remove{width:20px;height:20px;background-color:#EEE;background-image:url("<?php echo MODULE_URL;?>public/images/remove.png");background-size:100% 100%;position:absolute;top:-10px;right:-10px;z-index:100;}
.picture_upload_yulan_p{width:100%;height:20px;margin:0px auto;text-align:center;line-height:20px;font-size:12px;overflow:hidden;}
</style>

<div id="picture_upload">
    <div class="picture_upload_add" id="img" <?php  if($picture_type=='userid') { ?>style="display:<?php echo count($picture)==2?'none':'';?>"<?php  } ?>>
        <div class="picture_upload_add_pic"></div>
        <div class="picture_upload_add_p"><?php echo $add_info ? $add_info : '添加照片';?></div>
    </div>
    <?php  if(is_array($picture)) { foreach($picture as $key => $picture) { ?>
    <div class="picture_upload_yulan">
        <div class="picture_upload_yulan_pic">
            <img src="<?php  echo $_W['attachurl'];?><?php  echo $picture['picture_url'];?>"/>
            <div class="picture_upload_yulan_remove"><input type="hidden" name="picture_id" value="<?php  echo $picture['picture_id'];?>"/></div>
        </div>
        <?php  if($picture['picture_pid']=="2") { ?>
        <div class="picture_upload_yulan_p" style="color:red;">审核中</div>
        <?php  } else if($picture['picture_pid']=="3") { ?>
        <div class="picture_upload_yulan_p" style="color:#09BB07;">已通过</div>
        <?php  } ?>
    </div>
    <?php  } } ?>
</div>

<script>
//删除照片开始
    $(document).ready(function () {
        $(".picture_upload_yulan_remove").click(function () {
            var picture_id = $(this).children().val();
            $.post("<?php  echo $this->createMobileUrl('download',array('type'=>'del'));?>",
                    {
                        picture_id: picture_id,ptype:'<?php echo $picture_type ? $picture_type : 'show';?>'
                    },
                    function (data, status) {
                        if (data == 1) {
                            window.location.reload();
                        }
                    });
        });
    });
//删除照片结束

    wx.ready(function () {
        $(document).ready(function () {
            $("#img").click(function () {
                chooseImage();
            });
			
//选择照片开始
            function chooseImage() {
                wx.chooseImage({
                    count: 1, // 默认9
                    sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
                    sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
                    success: function (res) {
                        var localIds = res.localIds; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
                        uploadImage(localIds);
                    }
                });
            }
//选择照片结束
//上传照片开始
            function uploadImage(arr) {
                for (var i = 0; i < arr.length; i++) {
                    wx.uploadImage({
                        localId: arr[i], // 需要上传的图片的本地ID，由chooseImage接口获得
                        isShowProgressTips: 1, // 默认为1，显示进度提示
                        success: function (res) {
                            var serverId = res.serverId; // 返回图片的服务器端ID
                            downloadImage(serverId);
                        }
                    });
                }
            }
//上传照片结束
//下载图片开始
            function downloadImage(e) {
                $.post("<?php  echo $this->createMobileUrl('download',array('type'=>'add'));?>",
                        {
                            picture_type: "<?php echo $picture_type ? $picture_type : 'show';?>",
                            media_id: e,
                        },
                        function (data, status) {
                            window.location.reload();
                        });
            }
//下载图片结束

        });
    });
</script>
