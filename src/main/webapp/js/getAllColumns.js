$(function() {
	$.ajax({
	    type: "GET",
	    url: "columns_getAllColumns.html",
	    success: function(data){
    		if(data == "1") {
    			parent.location.reload();//刷新父页面
    		} else if(data == "0") {
    			
    		} else {
    			//alert("无法获取栏目，请稍后再试！");
    		}
	    },
	    error: function(XMLHttpRequest, textStatus, errorThrown){
            //alert(XMLHttpRequest.status);
            //alert(XMLHttpRequest.readyState);
            //alert(textStatus);
  		}
	});
});
