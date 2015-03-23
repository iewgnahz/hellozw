<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个性导航</title>
<script type="text/javascript" src="${path}/views/main/main.js"></script>
<style>
#container-main {
	min-height: 600px;
}

.zw-border {
	border: 1px solid #fff;
	border-radius: 5px;
}

.zw-glyphicon {
	float: right;
}
#input-group-main-1 {
	margin: 20px 0;
}

</style>
</head>
<body>
	<div class="container" id="container-main">
		<div class="row">
			<div class="col-lg-3 zw-border">
				<div id="input-group-main-1" class="input-group">
					<input id="navname" type="text" class="form-control"> <span class="input-group-btn">
						<button class="btn btn-success" type="button" onclick="addNav()">添加</button>
					</span>
				</div>
				<!-- /input-group -->
				<div id="navList" class="list-group"></div>
			</div>
			<div class="col-lg-9 zw-border">.col-md-3 .col-md-pull-9</div>
		</div>
	</div>
</body>
</html>