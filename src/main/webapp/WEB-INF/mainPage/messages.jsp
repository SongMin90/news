<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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