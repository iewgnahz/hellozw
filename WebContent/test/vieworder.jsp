<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<title>View Order</title>
</head>

<body>
	<table width="730" border="0">
		<tr>
			<td>
				<table width="100%" border="0">
					<tr>
						<td width="10%">Order ID:</td>
						<td width="90%"><s:property value="order.id" /></td>
					</tr>
					<tr>
						<td><s:text name="neworder.placedby" /></td>
						<td><s:property value="order.userName" /></td>
					</tr>
				</table> <br>
				<table width="100%" border="0">
					<tr bgcolor="ccccff">
						<td>&nbsp;</td>
						<td><b><s:text name="neworder.itemdesc" /></b></td>
						<td><b><s:text name="neworder.price" /></b></td>
					</tr>
					<s:iterator value="order.orderLineItems" status="status">
						<tr bgcolor="eeeeee">
							<td><s:property value="#status.count" /></td>
							<td><s:property value="description" /></td>
							<td><s:property value="lineItemPrice" /></td>
						</tr>
					</s:iterator>
					<tr bgcolor="ffffff">
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><b><s:property value="order.total" /></b></td>
					</tr>
				</table>
			</td>
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
</body>
</html>