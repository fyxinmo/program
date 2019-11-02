<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>添加客户</title>
		<link href="${base }/css/page.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}

.STYLE4 {
	font-size: 14px
}
-->
</style>
		<script src="${base }/js/meizzDate.js"></script>

		<script type="text/javascript" language="javascript">
	  var cname= [<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>'${item.cname}'</c:forEach>];
     var flag=0;
      function checkForm(){
         var form = document.forms[0];
         if(form.cname.value=="" || form.cname.value.length<=0){
			alert("请输入登录名！");
			form.cname.focus();
			return false;
		}
		checkcode();
		if(flag==1)
			{
				return false;
			}
		if(form.cpassword.value=="" || form.cpassword.value.length<=0){
			alert("请输入密码！");
			form.cpassword.focus();
			return false;
		}
	     if(form.crealname.value=="" || form.crealname.value.length<=0){
			alert("请输入客户姓名！");
			form.crealname.focus();
			return false;
		}
	     
	     if(form.ctel.value=="" || form.ctel.value.length<=0){
				alert("请输入联系电话！");
				form.ctel.focus();
				return false;
			}
	    
		
		return true;
	}
	function checkcode()
	{
		 var form = document.forms[0];
		var i ;
		for(i=0;i<cname.length;i++)
		{
			if(cname[i]==form.cname.value)
			{
				alert("登录名已存在！");
				form.cname.focus();
				flag=1;
				return false;
			}
			else
			{
				flag=0;
			}
		}
	}
</script>
	</head>

	<body>
		<form action="${base }/servlet/CustomServlet?method=regeditSave"
			method="post" onsubmit="return checkForm()">
			<table width="545" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->
				<tr>
					<td height="25" colspan="2" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE1"> 注册客户</span>
					</td>
				</tr>


				<tr>

					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						登录名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="cname" name="cname">
						<span style="color: red;">*</span>
					</td>

				</tr>
				<tr>

					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						登录密码：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="password" id="cpassword" name="cpassword">
						<input type="hidden" value="0" name="cdel" id="cdel">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						客户姓名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="crealname" name="crealname">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						联系电话：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="ctel" name="ctel">
						<span style="color: red;">*</span>
					</td>
				</tr>

				<tr>
					<td colspan="2" height="25" align="center" valign="middle"
						bgcolor="#F9FCFF">
						<input type="submit" value="提  交" />

						<input class="box" type="button" value="返  回"
							onClick="javascript:history.go(-1);" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
