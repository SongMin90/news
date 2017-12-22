<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-layout bg-white">
	<div class="border-top padding-top">
		<div class="text-center">
			<ul class="nav nav-inline">
				<%!int x;%>
		        <%
		        	if(x==0) {
		        		x = 1;
		        	}
		        	x++;
					if(!session.isNew()) {
						x--;		
					}
					session.setAttribute("online", x);
				%>
				<li class="active">访问总数 <%=session.getAttribute("online")%> 次 | </li>
				<li id="days"><script>
					var s1 = '2017-04-27';
					s1 = new Date(s1.replace(/-/g, "/"));
					s2 = new Date();
					var days = s2.getTime() - s1.getTime();
					var number_of_days = parseInt(days / (1000 * 60 * 60 * 24));
					document.getElementById('days').innerHTML = '本站已运行 '+number_of_days+' 天';
				</script></li>
			</ul>
		</div>
		<div class="text-center height-big">
			版权所有 © SongM All Rights Reserved，Theme by <a
				href="http://www.pintuer.com">拼图</a>
		</div>
		<br>
	</div>
</div>
<script src="js/pintuer.js"></script>
<script src="js/layer/layer.js">
	layer.config({
		extend : [ 'skin/pintuer/style.css' ], //加载新皮肤
		skin : 'layer-ext-pintuer' //采用pintuer皮肤。
	});
</script>
<script type="text/javascript">
	$(function() {	
		$(window).scroll(function() {
			$(window).scroll(function() {
				if ($(window).scrollTop() > 60) {
					$(".logo").addClass("hideout").hide();
					$(".text3D").hide();
				} else {
					$(".logo").removeClass("hideout").show();
					$(".text3D").show();
				}
			});
		});
	});
	//标记选中的栏目
	function doColumns(columns_news_id) {
		$("#" + columns_news_id).addClass("active");
	}
	//查看用户
	function seeUser(user_name) {
		layer.open({
			type : 2,
			title : user_name + '的信息',
			shadeClose : true,
			shade : false,
			maxmin : true, //开启最大化最小化按钮
			area : [ '300px', '420px' ],
			content : 'user_toUserInfo.html?user_name=' + user_name
		});
	}
</script>