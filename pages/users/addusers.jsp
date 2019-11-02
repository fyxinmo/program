<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>增加</title>
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
		<script language="javascript">
var uname = [<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>'${item.uname}'</c:forEach>];
var flag=0;
 function checkForm(){
    var form = document.forms[0];
    if(form.uname.value=="" || form.uname.value.length<=0){
		alert("请输入用户名！");
		form.uname.focus();
		return false;
	}
	checkname();
	if(flag==1)
		{
			return false;
		}
	if(form.urealname.value=="" || form.urealname.value.length<=0){
		alert("请输入用户名！");
		form.urealname.focus();
		return false;
	}
	if(form.upassword.value=="" || form.upassword.value.length<=0){
		alert("请输入密码！");
		form.upassword.focus();
		return false;
	}
	
	return true;
}
function checkname()
{
	 var form = document.forms[0];
	var i ;
	for(i=0;i<uname.length;i++)
	{
		if(uname[i]==form.uname.value)
		{
			alert("用户名已存在！");
			form.uname.focus();
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
		<form name="opform" method="post"
			action="${base }/servlet/UsersServlet?method=saveUsers"
			onsubmit="return checkForm()">
			<table width="545" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2"
				style="font-size: 12px">
				<!--DWLayoutTable-->
				<tr>
					<td height="25" colspan="2" align="left" valign="middle" style="background:url(${base }/img/bg_titlebarr.gif)"
						>
						<span class="STYLE1">添加管理员</span>
					</td>
				</tr>

				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						用户名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="uname" name="uname" onblur="checkname()"/>
						<span style="color: red;">*</span>
					</td>
				</tr>

				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						姓名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="urealname" name="urealname"/>
							<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						密码：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="password" id="upassword" name="upassword"/>
							<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						联系电话：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input name="utel" type="text" id="utel" />
						<span style="color: red;">*</span>
					</td>
				</tr>

			</table>



			<table width="551" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<!--DWLayoutTable-->
				<tr>
					<td width="551" height="30" align="center" valign="middle">
						<input type="submit" value="提  交" />
							
							<input class="box" type="button" value="返  回"
							onClick="javascript:history.go(-1);" />
					</td>
				</tr>
			</table>
			
		</form>
	</body>
</html>
