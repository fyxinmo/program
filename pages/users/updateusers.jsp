<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�޸��û�</title>
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
	<script type="text/javascript" language="javascript">
	  var uname =[<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>{'uid':'${item.uid}','uname':'${item.uname}'}</c:forEach>];
       function checkForm(){
         var form = document.forms[0];
	     if(form.uname.value=="" || form.uname.value.length<=0){
			alert("�������û�����");
			form.uname.focus();
			return false;
		}
		checkname();
		if(flag==1)
			{
				
				return false;
			}
		if(form.urealname.value=="" || form.urealname.value.length<=0){
			alert("�������û�����");
			form.urealname.focus();
			return false;
		}
		if(form.upassword.value=="" || form.upassword.value.length<=0){
			alert("���������룡");
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
			if(uname[i].uname==form.uname.value&&form.uid.value!=uname[i].uid)
			{
				alert("�û����Ѵ��ڣ�");
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

	<body >
		
			<form action="${base }/servlet/UsersServlet?method=updateUsers" method="post"
				onsubmit="return checkForm()">
				<table width="545" border="0" align="center" cellpadding="0"
				cellspacing="1" bordercolor="1" bgcolor="#9EC3F2"
				style="font-size: 12px">
				<!--DWLayoutTable-->
				<tr>
					<td height="25" colspan="2" align="left" valign="middle" background="${base }/img/bg_titlebarr.gif">
						<span class="STYLE1">�޸Ĺ���Ա</span>
					</td>
				</tr>
				<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							�û�����
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="uname" name="uname" value="${users.uname }" onblur="checkname()">	
							<input id="uid" name="uid" value="${users.uid }" type="hidden">
							<span style="color: red;">*</span>					
						</td>
					</tr>
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							������
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="urealname" name="urealname" value="${users.urealname }">
							<span style="color: red;">*</span>						
						</td>
					</tr>
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							���룺
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="password" id="upassword" name="upassword" value="${users.upassword }">	
							<span style="color: red;">*</span>	
						</td>
					</tr>
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							��ϵ�绰��
						</td>
						<td align="left" valign="middle" bgcolor="#F9FCFF">
							<input type="text" id="utel" name="utel" value="${users.utel }">
							<span style="color: red;">*</span>						
						</td>
					</tr>
					</table>
					<table width="551" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<!--DWLayoutTable-->
				<tr>
					<td width="551" height="30" align="center" valign="middle">
							<input type="submit" value="��  ��" />
							
							<input class="box" type="button" value="��  ��"
							onClick="javascript:history.go(-1);" />
						</td>
					</tr>
				</table>
			</form>
  </body>
</html>
