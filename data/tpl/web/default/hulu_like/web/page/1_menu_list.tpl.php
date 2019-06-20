<?php defined('IN_IA') or exit('Access Denied');?><tr>
<td><span class="label label-default"><?php  echo $caidan['id'];?></span></td>
<td><span class="label label-default"><?php  echo $caidan['sort'];?></span></td>
<td><span class="label label-info"><?php  echo $caidan['name'];?></span></td>
<td class="">
					<?php  if($caidan['donot_show'] == 1) { ?>
                    	<label data="0" class="label label-default" onclick="setProperty(this, <?php  echo $caidan['id'];?>, 'status')">禁用中</label>
					<?php  } else { ?>
                    	<label data="1" class="label label-default label-info" onclick="setProperty(this, <?php  echo $caidan['id'];?>, 'status')">启用中</label>
					<?php  } ?> 
</td>
<td><img style="width:80px;height:80px;" src="<?php  echo $_W['attachurl'];?><?php  echo $caidan['pic'];?>"/>
</td>

<td><a href="<?php  echo $caidan['link'];?>" target="blank"><?php  echo $caidan['link'];?></a></td>

<td>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('menu_edit',array('id'=>$caidan['id']));?>" role="button"><span class="glyphicon glyphicon-pencil"></span></a>

</td>
<tr>
<script type="text/javascript">
function setProperty(obj, id, type){
    $(obj).html($(obj).html() + "...");
    $.post('../web/index.php?c=site&a=entry&op=change&do=menu&m=hulu_like'
        ,{id:id, status: obj.getAttribute("data")}
        ,function(d){
            $(obj).html($(obj).html().replace("...",""));
            if(type=='status'){
                    $(obj).html( d.data=='1'?'禁用中':'启用中');
            }
            $(obj).attr("data",1-d.data);
            if(d.result==1){
                $(obj).toggleClass("label-info");
            }
        }
        ,"json"
    );
}
</script>