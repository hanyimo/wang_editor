<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>点击获取内容</title>
</head>
<body>
	<div id="editor" ></div>
	
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script >
		var E = window.wangEditor //将window.wangEditor的值赋给E
		var editor = new E('#editor') //将new E('#editor')【id值为editor的div中的值】的值赋给editor
		//关闭(false)粘贴样式的过滤（true是打开过滤）
		editor.customConfig.pasterFilterStyle = false;
		//忽略粘贴样式中的图片（true:忽略，false:不忽略）
		editor.customConfig.pasteIgnoreImg = false;
		//自定义处理粘贴的文本内容（content就是用户粘贴的内容）
		editor.customConfig.pasteTextHandle = function(content){
			//content 粘贴过来的内容（html 或 纯文本）
			//返回的就是最后粘贴到输入框中的内容
			return content + '<p>sweet专属粘贴</p>'
		}
		editor.create()//使用了create方法（在js里）创建了富文本框
	</script>
</body>
</html>