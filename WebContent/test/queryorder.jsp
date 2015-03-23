<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title><s:text name="queryorder.title" /></title>
</head>
<body>
	<s:form action="findOrderID" method="post" theme="simple">

		<h3>
			<s:text name="queryorder.title" />
		</h3>

		<table width="730" border="0">
			<tr>
				<td>
					<table width="100%" border="1" bgcolor="#ffffcc">
						<tr>
							<td><font size="-1"> <s:text name="queryorder.prompt" />
							</font></td>
						</tr>
					</table>
					<table width="100%" border="0">
						<tr>
							<td colspan="2" style="color:red;"><s:actionerror /> <s:property
									value="%{exception.message}" /></td>
						</tr>
						<tr>
							<td><s:text name="neworder.orderid" /></td>
							<td><s:textfield name="order.id" /></td>
						</tr>
					</table> <br>
					<table width="100%">
						<tr>
							<td align="center"><br> <s:submit /></td>
						</tr>
					</table>
					<table width="100%">
						<tr>
							<td align="center"><br>
							<br> <s:a href="index.jsp">
									<s:text name="index.home" />
								</s:a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
