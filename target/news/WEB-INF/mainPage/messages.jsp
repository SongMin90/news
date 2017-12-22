<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<s:if test="messages[0] != null">
	<script type="text/javascript">
	alert('<s:property value="messages[0]"/>');
	</script>
</s:if>
<s:if test="messages[1] != null">
	<script type="text/javascript">
		window.location.href='<s:property value="messages[1]"/>';
	</script>
</s:if>
</body>
</html>