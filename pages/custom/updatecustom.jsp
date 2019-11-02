<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="${base }">
    
    <title>修改客户</title>
    <script src="${base }/js/meizzDate.js" ></script>
	<script type="text/javascript" language="javascript">
	 var cname =[<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>{'cid':'${item.cid}','cname':'${item.cname}'}</c:forEach>];
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
				alert("登录名已存在！");
				form.cname.focus();
				return false;
			}
		var pageflag = ''+'${flag}';
		if(pageflag!='')
		{
		if(form.cpasswordold.value=="" || form.cpasswordold.value.length<=0){
			alert("请输入历史密码！");
			form.cpasswordold.focus();
			return false;
		}
		if(form.cpasswordold.value!=form.cpasswordold1.value){
			alert("历史密码输入不正确！");
			form.cpasswordold.focus();
			return false;
		}
		
		if(form.cpassword.value=="" || form.cpassword.value.length<=0){
			alert("请输入新密码！");
			form.cpassword.focus();
			return false;
		}
		if(form.cpasswordagin.value=="" || form.cpasswordagin.value.length<=0){
			alert("请输入确认密码！");
			form.cpasswordagin.focus();
			return false;
		}
		if(form.cpasswordagin.value!=form.cpassword.value){
			alert("两次输入密码不一致！");
			form.cpasswordagin.focus();
			return false;
		}
		}
		else
		{
			if(form.cpassword.value=="" || form.cpassword.value.length<=0){
				alert("请输入密码！");
				form.cpassword.focus();
				return false;
			}
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
			if(cname[i].cname==form.cname.value&&form.cid.value!=cname[i].cid)
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
	</head>

	<body >
		<div align="center">
			<h1>
				修改客户
			</h1>
		</div>
		<div id="user" align="center">
			<form action="${base }/servlet/CustomServlet?method=updateCustom&flag=${flag}" method="post"
				onsubmit="return checkForm()">
				<table width="545" border="0" align="center" cellpadding="0"
					cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
					<!--DWLayoutTable-->
					<tr>
						<td height="25" colspan="2" align="left" valign="middle"
							style="background:url(${base }/img/bg_titlebarr.gif)">
							<span class="STYLE1">修改客户</span>
						</td>
					</tr>
					
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						 登录名
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="cname" name="cname" value="${custom.cname }" onblur="checkcode()" >	
							<input type="hidden" value="${custom.cid }" name="cid" id= "cid">
							<span style="color: red;">*</span>					
						</td>
						
					</tr>
					<c:if test="${flag!=1}">
					<tr>

					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						登录密码：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="password" id="cpassword" name="cpassword" value="${custom.cpassword }">
						<input type="hidden" value="0" name="cdel" id="cdel">
						<span style="color: red;">*</span>
					</td>
				</tr>
				</c:if>
				<c:if test="${flag==1}">
					<tr>

					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						原始密码：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="password" id="cpasswordold" name="cpasswordold" value="">
						<input type="hidden" id="cpasswordold1" name="cpasswordold1" value="${custom.cpassword }">
						<input type="hidden" value="0" name="cdel" id="cdel">
						<span style="color: red;">*</span>
					</td>
				</tr>
					<tr>

					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						新密码：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="password" id="cpassword" name="cpassword" value="">
						<input type="hidden" value="0" name="cdel" id="cdel">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>

					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						再次输入新密码：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="password" id="cpasswordagin" name="cpasswordagin" value="">
						<input type="hidden" value="0" name="cdel" id="cdel">
						<span style="color: red;">*</span>
					</td>
				</tr>
				</c:if>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						客户姓名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="crealname" name="crealname" value="${custom.crealname}">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						联系电话：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="ctel" name="ctel" value="${custom.ctel}">
						<span style="color: red;">*</span>
					</td>
				</tr>

					<tr>
						<td height="25" align="center" colspan="2" valign="middle" bgcolor="#F9FCFF">
							<input type="submit" value="提交" />
							
							<input class="box" type="button" value="返  回"
							onClick="javascript:history.go(-1);" />
						</td>
					</tr>
				</table>
			</form>
		</div>
  </body>
</html>
