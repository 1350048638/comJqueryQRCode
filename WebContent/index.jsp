<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <head>
    <title>生成二维码</title>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.min.js"></script> <!-- //两个js文件的顺序不能乱, jquery版本要注意-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.qrcode.min.js"></script> <!-- //这个是基于jquery开发的 -->
  </head>
  <body>
  生成的二维码如下<br>
  <div id="qrcode" style="height:300px;width:300px"></div>
  <div id="code"> </div>
  
  <script type="text/javascript">
   
  jQuery(function(){
	    jQuery('#qrcode').qrcode("www.baidu.com"); //打开的是文本，如果需要打开网址，加上 http:// 即可
	
	    $("#code").qrcode({
	    	render: "table", //table方式
	    	width: 200, //宽度
	    	height:200, //高度
	    	text: "www.qq.com" //任意内容
	    });
  
  
  })
  
	
  </script>
  </body>
</html>