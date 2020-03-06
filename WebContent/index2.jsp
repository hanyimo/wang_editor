<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎</title>
</head>
<body>
	<div id="div1" style="border:1px solid #ccc;"></div>
	<div style="padding:5px 0px;color:#ccc;">
		<p>这是菜单与编辑器分离的隔离带</p>
	</div>
	<div id="div2" style="border:1px solid #ccc;height:1000px;">
		<p>这是富文本编辑器</p>
		<img src="${pageContext.request.contextPath}/static/image/wang.jpg" width="1300px"/>
	</div>
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script >
		var E = window.wangEditor //将window.wangEditor的值赋给E
		var editor = new E('#div1','#div2') //将new E('#editor')【id值为editor的div中的值】的值赋给editor
		editor.create()//使用了create方法（在js里）创建了富文本框
	//	editor.$textElem.attr('contenteditable',false) //禁用编辑功能	
	//	editor.$textElem.attr('contenteditable',true) //开启编辑功能	
		//设置内容(会清除原来的内容)
		var str = '';
		str += '<p>俊凯呀</p>';
		str += '<img src="${pageContext.request.contextPath}/static/image/karry.jpg" width="1300px" />'
		editor.txt.html(str)//设置富文本框的所有内容
		editor.txt.append('<p>哟哟哟俊凯呀</p>');//追加的内容
	//	editor.txt.clear();//清空内容
	</script>
</body>
</html>