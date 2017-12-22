/*
 * 随机生成验证码
 */
function createCode(){   
	 var code = "";  //在全局定义验证码
     var codeLength = 4;//验证码的长度  
     var random = new Array(0,1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r',  
     's','t','u','v','w','x','y','z');//随机数  
     for(var i = 0; i < codeLength; i++) {//循环操作  
        var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35）  
        code += random[index];//根据索引取得随机数加到code上  
     }
     document.getElementById("code_ok").innerText = code;//把code值赋给验证码
     document.getElementById("input_code").value = code;//把code值赋给input
}
