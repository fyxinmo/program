<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="${base }">
    
    <title>�޸Ŀͻ�</title>
    <script src="${base }/js/meizzDate.js" ></script>
	<script type="text/javascript" language="javascript">
	 var cname =[<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>{'cid':'${item.cid}','cname':'${item.cname}'}</c:forEach>];
     var flag=0;
      function checkForm(){
         var form = document.forms[0];
         if(form.cname.value=="" || form.cname.value.length<=0){
			alert("�������¼����");
			form.cname.focus();
			return false;
		}
		checkcode();
		if(flag==1)
			{
				alert("��¼���Ѵ��ڣ�");
				form.cname.focus();
				return false;
			}
		var pageflag = ''+'${flag}';
		if(pageflag!='')
		{
		if(form.cpasswordold.value=="" || form.cpasswordold.value.length<=0){
			alert("��������ʷ���룡");
			form.cpasswordold.focus();
			return false;
		}
		if(form.cpasswordold.value!=form.cpasswordold1.value){
			alert("��ʷ�������벻��ȷ��");
			form.cpasswordold.focus();
			return false;
		}
		
		if(form.cpassword.value=="" || form.cpassword.value.length<=0){
			alert("�����������룡");
			form.cpassword.focus();
			return false;
		}
		if(form.cpasswordagin.value=="" || form.cpasswordagin.value.length<=0){
			alert("������ȷ�����룡");
			form.cpasswordagin.focus();
			return false;
		}
		if(form.cpasswordagin.value!=form.cpassword.value){
			alert("�����������벻һ�£�");
			form.cpasswordagin.focus();
			return false;
		}
		}
		else
		{
			if(form.cpassword.value=="" || form.cpassword.value.length<=0){
				alert("���������룡");
				form.cpassword.focus();
				return false;
			}
		}
	     if(form.crealname.value=="" || form.crealname.value.length<=0){
			alert("������ͻ�������");
			form.crealname.focus();
			return false;
		}
	     
	     if(form.ctel.value=="" || form.ctel.value.length<=0){
				alert("��������ϵ�绰��");
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
				alert("��¼���Ѵ��ڣ�");
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
				�޸Ŀͻ�
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
							<span class="STYLE1">�޸Ŀͻ�</span>
						</td>
					</tr>
					
					<tr>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						 ��¼��
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
						��¼���룺
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
						ԭʼ���룺
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
						�����룺
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="password" id="cpassword" name="cpassword" value="">
						<input type="hidden" value="0" name="cdel" id="cdel">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>

					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�ٴ����������룺
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
						�ͻ�������
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="crealname" name="crealname" value="${custom.crealname}">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						��ϵ�绰��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="ctel" name="ctel" value="${custom.ctel}">
						<span style="color: red;">*</span>
					</td>
				</tr>

					<tr>
						<td height="25" align="center" colspan="2" valign="middle" bgcolor="#F9FCFF">
							<input type="submit" value="�ύ" />
							
							<input class="box" type="button" value="��  ��"
							onClick="javascript:history.go(-1);" />
						</td>
					</tr>
				</table>
			</form>
		</div>
  </body>
</html>
