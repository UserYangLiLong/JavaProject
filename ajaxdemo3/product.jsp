<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajax请求</title>
<script type="text/javascript">
	function getAjax(){
		var name=document.getElementById("name").value;
		var ajax;
		if(window.XMLHttpRequest){
			ajax=new XMLHttpRequest();
		}
	    ajax.onreadystatechange=function(){
			if(ajax.readyState==4){
				if(ajax.status==200){
					var result=ajax.responseText;
					eval("var p="+result);
					alert(result);
					var table=document.getElementById("table");
					var tr=table.insertRow(1);
					var cell0=tr.insertCell(0);
					cell0.innerHTML=p.name;
					var cell1=tr.insertCell(1);
					cell1.innerHTML=p.description;
					var cell2=tr.insertCell(2);
					cell2.innerHTML=p.price;
					var cell3=tr.insertCell(3);
					cell3.innerHTML=p.discountprice;
					/* var showdiv=document.getElementById("showdiv");
					showdiv.innerHTML=result; */
				}
			}
		}
		ajax.open("get","ps?name="+name);
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
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/ajaxdemo3/WebContent/product.jsp">
<h3 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/ajaxdemo3/WebContent/product.jsp">欢迎来到本商店</h3>
<input type="text" name="name" id="name" />
<input type="submit" name="button" value="搜索" onclick="getAjax()"/>
<div id="showdiv"></div>
<table border="2px" id="table">
		<tr>
			<td>商品名</td>
			<td>商品描述</td>
			<td>商品价格</td>
			<td>打折价</td>
		</tr>
</table>
</body>
</html>