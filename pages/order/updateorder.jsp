<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>�޸�&nbsp;�м���Ϣ</title>
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
	 
      function checkForm(){
         var form = document.forms[0];
         if(form.osname.value=="" || form.osname.value.length<=0){
			alert("������м���������");
			form.osname.focus();
			return false;
		}
		
	     if(form.ostel.value=="" || form.ostel.value.length<=0){
			alert("�����뷢���˵绰��");
			form.ostel.focus();
			return false;
		}
	     
	     if(form.osadd.value=="" || form.osadd.value.length<=0){
				alert("�����뷢���˵�ַ��");
				form.osadd.focus();
				return false;
			}
	    
		
		return true;
	}
</script>
	</head>

	<body>
		<form action="${base }/servlet/OrderServlet?method=updateOrder"
			method="post" onsubmit="return checkForm()">
			<table width="545" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->
				<tr>
					<td height="25" colspan="2" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE1"> �޸�&nbsp;�м���Ϣ</span>
					</td>
				</tr>

				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						������������
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="osname" name="osname" value="${orders.osname }">
						<input type="hidden" id="oid" name="oid" value="${orders.oid}">
						<input type="hidden" id="cid" name="cid" value="${orders.cid}">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�����˵绰��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="ostel" name="ostel" value="${orders.ostel }">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�����˵�ַ��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="osadd" name="osadd" value="${orders.osadd }"> 
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�ύ���ڣ�
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="odate" name="odate" value="${orders.odate}" readonly="readonly"> 
						<span style="color: red;">*</span>
					</td>
				</tr>
				
				<tr>
					<td colspan="2" height="25" align="center" valign="middle"
						bgcolor="#F9FCFF">
						<input type="submit" value="��  ��" />

						<input class="box" type="button" value="��  ��"
							onClick="javascript:history.go(-1);" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
