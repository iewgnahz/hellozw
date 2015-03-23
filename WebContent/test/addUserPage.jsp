<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form action="saveNewUser" method="post" theme="simple">
			 姓名：<s:textfield label="用户名" name="userInfo.loginName"></s:textfield>
			  密码：<s:textfield label="密码" name="userInfo.password"></s:textfield>
			  	<s:submit />
	</s:form>
</body>
</html>