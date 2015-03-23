$(function() {
	getNavList();
});

var getNavList = function() {
	$("#navList").empty();
	var html = '<a href="#" class="list-group-item active"><b>全部</b><span class="glyphicon glyphicon-chevron-right zw-glyphicon" /></a>';

	$.getJSON('json/GetNavListJson.action', function(data) {
		for (index in data) {
			html += '<a href="#" class="list-group-item">' + data[index].name + '<span class="glyphicon glyphicon-chevron-right zw-glyphicon" /></a>';
		}
		$("#navList").append(html);
		// 出现这种问题的原因是因为没有理解ajax同步、异步的方式
		$(".list-group-item").click(function() {
			$(".list-group-item").removeClass("active");
			$(this).addClass("active");
		});
	});
};

var addNav = function() {
	var name = $("#navname").val();

	$.ajax({
		type : 'POST',
		url : 'json/addNavJson.action',
		data : {
			"personalNav.name" : name
		},
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
		success : function(data) {
			getNavList();
			$("#navname").val("");
		}
	});
};