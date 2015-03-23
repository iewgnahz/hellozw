<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title><s:text name="index.home" /></title>
</head>
<body>
	<h3>
		<s:text name="index.home" />
	</h3>

	<table width="730" border="0">
		<tr>
			<td><s:url id="addUserUrl" action="addUser">
				</s:url> <s:a href="%{addUserUrl}">
					<s:text name="index.adduser" />
				</s:a></td>
		</tr>

	</table>
</body>
</html>