<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>点击获取内容</title>
</head>
<body>
	<div id="editor" >
		<p>欢迎使用<strong>WangEditor</strong>富文本编辑器</p>
		<img src="${pageContext.request.contextPath}/static/image/wang.jpg" width="1300px"/>
	</div>
	<button id="btn1">获取html</button>
	<button id="btn2">获取text</button>
	<button id="btn3">获取JSON</button>
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script >
		var E = window.wangEditor //将window.wangEditor的值赋给E
		var editor = new E('#editor') //将new E('#editor')【id值为editor的div中的值】的值赋给editor
		editor.customConfig.menus = [
			'head',			//标题
			'bold',			//粗体
			'fontSize',		//字号
			'fontName',		//字体
			'italic',		//斜体
			'underline',    //下划线
			'strikeThrough',//删除线
			'foreColor',	//文字颜色
			'backColor'	//背景颜色
		//	'link',		//插入链接
		//	'list',		//列表
		//	'justify',	//对齐方式
		//	'quote',	//引用
		//	'emoticon',	//表情
		//	'image',	//插入图片
		//	'table',	//表格
		//	'video',	//插入视频
		//	'code',		//插入代码
		//	'undo', 	//撤销
		//	'redo' 		//重复
		];
		editor.create()//使用了create方法（在js里）创建了富文本框
		//点击点击btn1的时候(addEventListener?JS方法，用于给元素添加事件，第一个参数就是事件，第二个是事件触发后执行的方法)
		document.getElementById('btn1').addEventListener('click',function(){
			var x = editor.txt.html();//读取html(获取所有内容，包含标签)
			alert(x);
		});
		//点击点击btn2的时候
		document.getElementById('btn2').addEventListener('click',function(){
			var y = editor.txt.text();//读取text（只能获取文本内容）
			alert(y);
		});
		//点击点击btn3的时候
		document.getElementById('btn3').addEventListener('click',function(){
			var json = editor.txt.getJSON();//获取JSON的内容
			var jsonStr = JSON.stringify(json);//把JSON对象转换为字符串
			alert(jsonStr);//弹出字符串内容
		});
	</script>
</body>
</html>