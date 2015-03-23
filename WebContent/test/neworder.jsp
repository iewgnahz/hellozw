<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
	<title><s:text name="index.placeorder"/></title>
</head>
<body>
	<s:form action="saveUser" method="post" theme="simple">			

	<h3><s:text name="index.placeorder"/></h3>

		<table width="730" border="0">
			<tr>
				<td>
					<table width="100%" border="1" bgcolor="#ffffcc">
						<tr>
							<td>
								<font size="-1">
									<s:text name="neworder.prompt" />
								</font>
							</td>
						</tr>
					</table>

					<table width="100%" border="0">
						<tr>
							<td colspan="2" style="color:red;">
								<s:actionerror />
								<s:property value="%{exception.message}"/>
							</td>
						</tr>
						<tr>
							<td>
								<s:text name="neworder.placedby"/>
							</td>
							<td>
								<s:textfield name="order.userName"/>
							</td>
						</tr>
					</table>
					<br>
					<table width="100%" border="0">
						<tr bgcolor="ccccff">
							<td>
								&nbsp;
							</td>								
							<td>
								<b><s:text name="neworder.itemdesc"/></b>
							</td>
							<td>
								<b><s:text name="neworder.price"/></b>
							</td>
						</tr>
						<tr bgcolor="eeeeee">
							<td>
								1.
							</td>
							<td>
								<s:textfield name="items[0].description"/>
							</td>
							<td>
								<s:textfield name="items[0].lineItemPrice"/>
							</td>
						</tr>
						<tr bgcolor="eeeeee">
							<td>
								2.
							</td>
							<td>
								<s:textfield name="items[1].description"/>
							</td>
							<td>
								<s:textfield name="items[1].lineItemPrice"/>
							</td>
						</tr>
						<tr bgcolor="eeeeee">
							<td>
								3.
							</td>
							<td>
								<s:textfield name="items[2].description"/>
							</td>
							<td>
								<s:textfield name="items[2].lineItemPrice"/>
							</td>
						</tr>
					</table>
					<table width="100%">
						<tr>
							<td align="center">
								<br>
								<s:submit />
							</td>
						</tr>
					</table>
					<table width="100%">
						<tr>
							<td align="center">
								<br><br>
								<s:a href="index.jsp" ><s:text name="index.home" /></s:a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
	</s:form>
</body>
</html>