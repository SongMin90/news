$(function() {
	$.ajax({
	    type: "GET",
	    url: "news_getWebTitle.html",
	    success: function(data){
    		if(data == "1") {
    			parent.location.reload();//刷新父页面
    		} else if(data == "0") {
    			
    		} else {
    			//alert("无法获取网站标题，请稍后再试！");
    		}
	    }
	});
});
