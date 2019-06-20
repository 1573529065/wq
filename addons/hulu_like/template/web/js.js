
function delcfm(){
	if(!confirm("确定要删除吗？删除了就不能恢复了！")){
		window.event.returnValue=false;
	}
}
