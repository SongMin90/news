<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-reorder"></span> 全部用户</strong></div>
  <div class="padding border-bottom">
    <ul class="search" style="padding-left:10px;">
      <li>
        <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
        <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
    </ul>
  </div>
  <table class="table table-hover text-center">
    <tr>
      <th width="100" style="text-align:left; padding-left:20px;">ID</th>
      <th>头像</th>
      <th>昵称</th>
      <th>密码</th>
      <th>性别</th>
      <th>电话</th>
      <th>邮箱</th>
      <th>注册时间</th>
      <th>最后一次登录时间</th>
      <th>状态</th>
      <th width="310">操作</th>
    </tr>
    <s:iterator value="#pageBean.list">
      <tr>
        <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="${user_id}" />
        	${user_id}</td>
        <td><img src="${images.images_name}" alt="无" width="50" height="50" /></td>
        <td>${user_name}</td>
        <td>${user_password}</td>
        <td>${user_sex}</td>
        <td>${user_phone}</td>
        <td>${user_email}</td>
        <td>${first_login}</td>
        <td>${last_login}</td>
        <s:if test="user_state == 0"><td>管理员</td></s:if>
        <s:elseif test="user_state == 1"><td>普通用户</td></s:elseif>
        <s:elseif test="user_state == 2"><td>禁言</td></s:elseif>
        <s:elseif test="user_state == 3"><td>禁言禁发布</td></s:elseif>
        <td><div class="button-group"> 
	        <a class="button border-sub" href="javascript:void(0)" onclick="return open()"><span class="icon-search-plus"></span> 查看</a> 
	        <a class="button border-main dialogs" data-url="${pageContext.request.contextPath}/user_toEdit.html?user_id=${user_id}" data-toggle="click" data-target="#edit" data-mask="1" data-width="50%" href="javascript:void(0)" ><span class="icon-edit"></span> 编辑</a> 
	        <a class="button border-red" href="javascript:void(0)" onclick="return del('${user_id}')"><span class="icon-trash-o"></span> 删除</a> </div></td>
      </tr>
    </s:iterator>
    <tr>
      <td style="text-align:left; padding:19px 0;padding-left:20px;"><input type="checkbox" id="checkall"/>
        全选 </td>
      <td colspan="10" style="text-align:left;padding-left:20px;"><a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;"> 删除</a>
      </td>
    </tr>
    <tr>
      <td colspan="11"><div class="pagelist"> 
      	<s:if test="#pageBean.current_page != 1"><a href="${pageContext.request.contextPath}/user_findAll.html?current_page=1">首页</a></s:if>
      	<s:if test="#pageBean.current_page > 1"><a href="${pageContext.request.contextPath}/user_findAll.html?current_page=${pageBean.current_page-1}">上一页</a></s:if> 
      	${pageBean.current_page}/${pageBean.total_page} 
      	<s:if test="#pageBean.current_page < #pageBean.total_page"><a href="${pageContext.request.contextPath}/user_findAll.html?current_page=${pageBean.current_page+1}">下一页</a></s:if>
      	<s:if test="#pageBean.current_page != #pageBean.total_page"><a href="${pageContext.request.contextPath}/user_findAll.html?current_page=${pageBean.total_page}">尾页</a></s:if>
      </div></td>
    </tr>
  </table>
</div>

<!-- 修改操作对话框 -->
<div id="edit">
	<div class="dialog"></div>
</div>

<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/dialog.js"></script>
<script type="text/javascript">
//单条删除
function del(id) {
	var flag = confirm("确定要删除ID为" + id + "的这条数据吗?");
	
    if (flag) {
        var url = "user_delete.html";
        var args = {
            "user_id" : id,
            "time" : new Date()
        };
        $.post(url, args, function(data) {
            //表示可用
            if (data == "1") {
            	alert("删除成功!");
            	location.reload();
            } else if(data == "0") {
            	alert("删除失败!");
            	location.reload();
            }
            //服务器错误
            else {
            	alert("出错!");
            }
        });
    }
}
//打开用户详情页面
function open() {
	
}
</script>