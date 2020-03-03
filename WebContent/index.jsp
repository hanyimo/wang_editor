<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎</title>
</head>
<body>
	<div id="editor">
		<p>欢迎使用<strong>WangEditor</strong>富文本编辑器</p>
	</div>
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script >
		var E = window.wangEditor //将window.wangEditor的值赋给E
		var editor = new E('#editor') //将new E('#editor')【id值为editor的div中的值】的值赋给editor
		editor.create()//使用了create方法（在js里）创建了富文本框
	</script>
</body>
</html>