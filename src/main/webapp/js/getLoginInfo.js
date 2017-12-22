$(function() {
	$.ajax({
	    type: "GET",
	    url: "user_getLoginInfo.html",
	    success: function(data){
    		if(data == "1") {
    			parent.location.reload();//刷新父页面
    		} else if(data == "0") {
    			
    		}
	    }
	});
});
