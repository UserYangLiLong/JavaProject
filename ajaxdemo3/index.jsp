<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajax请求</title>
<script type="text/javascript">
	function getAjax(){
		var ajax;
		if(window.XMLHttpRequest){
			ajax=new XMLHttpRequest();
		}
	    ajax.onreadystatechange=function(){
			if(ajax.readyState==4){
				if(ajax.status==200){
					var result=ajax.responseText;
					alert(result);
					var showdiv=document.getElementById("showdiv");
					showdiv.innerHTML=result;
				}
			}
		}
		ajax.open("get","message");
		ajax.send(null);
	}
</script>
<style type="text/css">
		#showdiv{
			border: solid 2px;
			width:  200px;
			height: 100px
		}
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"1074",secure:"1083"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/ajaxdemo3/WebContent/index.jsp">
<h3 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/ajaxdemo3/WebContent/index.jsp">欢迎来到相思湖学院</h3>
<input type="submit" name="button" value="测试" onclick="getAjax()"/>
<div id="showdiv"></div>
</body>
</html>