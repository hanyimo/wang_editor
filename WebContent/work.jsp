<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>练习</title>
<style type="text/css">
	*{
		padding: 0px;
		margin: 0px
	}
	#all{
		width:90%;
		height:600px;
		margin:25px 55px 0px 55px;
		border:1px solid black;	
	}
	#top{
		width:90%;
		height:50px;
		margin:15px 50px 0px 50px;
		padding-left:10px;
	}
	#top li{
		height:50px;
		border:1px solid #ccc;
		float: left;
		list-style: none;
		line-height: 50px;
		padding: 0px 115px;
	}
	#left{
		width:15%;
		height:490px;
		float:left;
		margin:15px 60px 10px 60px;
	}
	#left li{
		width:80px;
		list-style: none;
		border:1px solid #ccc;
		padding:70px 50px;
	}
	#righttop{
		width:66%;
		height:240px;
		float:left;
		margin:15px 0px 15px 15px;
		border:1px solid #ccc;
	}
	#rightdown{
		width:66%;
		float:left;
		height: 185px;
		margin:15px 0px 10px 15px;
	}
	.w-e-text-container{
 	   height: 185px !important;
	}
</style>
</head>
<body>
	<div id="all">
		<div id="top">
			<ul>
				<li>新闻</li>
				<li>教育</li>
				<li>运动</li>
				<li>游戏</li>
			</ul>
		</div>
		<div id="left">
			<ul>
				<li>国际新闻</li>
				<li>国内新闻</li>
				<li>热点新闻</li>
			</ul>
		</div>
		<div id="righttop">
			<p>哈哈哈哈哈哈哈</p>
		</div>
		<div id="rightdown" style="height:300px;">
			<p>欢迎使用<strong>WangEditor</strong>富文本编辑器</p>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script >
		var E = window.wangEditor //将window.wangEditor的值赋给E
		var editor = new E('#rightdown') //将new E('#editor')【id值为editor的div中的值】的值赋给editor
		editor.create()//使用了create方法（在js里）创建了富文本框
	</script>
</body>
</html>