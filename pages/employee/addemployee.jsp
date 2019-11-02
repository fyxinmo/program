<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>添加业务员</title>
		<script src="${base }/js/meizzDate.js"></script>

		<script type="text/javascript" language="javascript">
	  var ename = [<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>'${item.ename}'</c:forEach>];
     var flag=0;
      function checkForm(){
         var form = document.forms[0];
         if(form.ename.value=="" || form.ename.value.length<=0){
			alert("请输入业务员姓名！");
			form.ename.focus();
			return false;
		}
		checkcode();
		if(flag==1)
			{
				return false;
			}
	    
		if(form.eadd.value=="" || form.eadd.value.length<=0){
			alert("请输入家庭住址！");
			form.eadd.focus();
			return false;
		}
		 
		if(form.etel.value=="" || form.etel.value.length<=0){
			alert("请输入联系电话！");
			form.etel.focus();
			return false;
		}
		 if(form.eidcard.value=="" || form.eidcard.value.length<=0){
				alert("请输入身份证号！");
				form.eidcard.focus();
				return false;
			}
		return true;
	}
	function checkcode()
	{
		 var form = document.forms[0];
		var i ;
		for(i=0;i<ename.length;i++)
		{
			if(ename[i]==form.ename.value)
			{
				alert("业务员姓名已存在！");
				form.ename.focus();
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

	<body>
		
		<div id="user" align="center">
			<form action="${base }/servlet/EmployeeServlet?method=saveEmployee"
				method="post" onsubmit="return checkForm()">
				<table width="545" border="0" align="center" cellpadding="0"
					cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
					<!--DWLayoutTable-->
					<tr>
						<td height="25" colspan="2" align="left" valign="middle"
							style="background:url(${base }/img/bg_titlebarr.gif)">
							<span class="STYLE1">添加业务员</span>
						</td>
					</tr>

					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							姓名：
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="ename" name="ename" onblur="checkcode()" />
							<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							家庭住址：
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="eadd" name="eadd">
							<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							联系电话：
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="etel" name="etel">
							<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							身份证号：
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="eidcard" name="eidcard">
							<span style="color: red;">*</span>
						</td>
					</tr>
					<tr>
						<td colspan="2"  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							<input type="submit"  value="提  交" />

							<input class="box" type="button" value="返  回"
								onClick="javascript:history.go(-1);" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
