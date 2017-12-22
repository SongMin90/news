<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-reorder"></span> 全部栏目</strong></div>
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
      <th>名称</th>
      <th>编号</th>
      <th width="310">操作</th>
    </tr>
    <s:iterator value="allColumns" var="columns">
      <tr>
        <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="${columns_id}" />
        	${columns_id}</td>
        <td>${columns_name}</td>
        <td>${columns_number}</td>
        <td><div class="button-group"> <a class="button border-main dialogs" data-url="${pageContext.request.contextPath}/columns_toEdit.html?columns_id=${columns_id}" data-toggle="click" data-target="#edit" data-mask="1" data-width="50%" href="javascript:void(0)"><span class="icon-edit"></span> 编辑</a> <a class="button border-red" href="javascript:void(0)" onclick="return del('${columns_id}')"><span class="icon-trash-o"></span> 删除</a> </div></td>
      </tr>
    </s:iterator>
    <tr>
      <td style="text-align:left; padding:19px 0;padding-left:20px;"><input type="checkbox" id="checkall"/>
        全选 </td>
      <td colspan="10" style="text-align:left;padding-left:20px;"><a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;"> 删除</a>
      </td>
    </tr>
  </table>
</div>

<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script src="js/dialog.js"></script>
<script type="text/javascript">
//单条删除
function del(id) {
	var flag = confirm("确定要删除ID为" + id + "的这条数据吗?");
	
    if (flag) {
        var url = "columns_delete.html";
        var args = {
            "columns_id" : id,
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
</script>