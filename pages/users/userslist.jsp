<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>��Ϣ</title>
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
}

.STYLE4 {
	font-size: 14px;
	font-weight: bold;
	background:url(${base }/img/bg_titlebarr.gif);
}
-->
</style>
		<script language="javascript">
	function del(id){
		if(confirm("�����Ҫɾ��ѡ��ļ�¼��")){
				document.location.href="${base }/servlet/UsersServlet?method=deleteUsers&uid="+id;
		}	
	}
	function check(){
		if(document.zgform.svalue.value==""){
			alert("�������ѯ����");
			return false;
		}
	}
	
</script>
	</head>

	<body>
		<form name="zgform"
			action="${base }/servlet/UsersServlet?method=findAllUsers"
			method="post" onsubmit="javascript:return check();">
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#cccccc" style="font-size: 12px">
				<tr>
					<td height="25" colspan="2" align="center" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE4">����Ա�б�</span>
					</td>
				</tr>
				<tr>
					<td class="STYLE4" height="25"  align="left"
						style="background:url(${base }/img/bg_titlebarr.gif)"
						valign="middle">
						����Ա����
						<input name="uname" id="uname" value="${ stu.uname}" />
						<input type="submit" value="��  ��" />

					</td>

					<td height="25" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<input type="button"
							onclick="location.href='${base }/servlet/UsersServlet?method=addUsers'"
							value="��  ��" />
						<input class="box" type="button" value="��  ��"
							onclick="javascript:history.go(-1);" />
					</td>

				</tr>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->
				
				<tr>
					<td width="151" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						���
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						�û���
					</td>
					<td width="161" class="STYLE4" height="25" align="center"
						valign="middle" bgcolor="#F9FCFF">
						����
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						����
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						��ϵ�绰
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						����
					</td>
				</tr>
				<c:forEach var="item" varStatus="i" items="${list}">
					<tr>

						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${(pagenum-1)*currentp+i.index+1}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.uname}</span>
						</td>
						<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.urealname}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF" >
							<span class="STYLE1">${item.upassword}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF" >
							<span class="STYLE1">${item.utel}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF"
							class="STYLE1">
							<a
								href="${base }/servlet/UsersServlet?method=updatePage&uid=${item.uid}">�޸�</a>|
							<a href="javascript:del(${item.uid})">ɾ��</a>
						</td>

					</tr>
				</c:forEach>
			</table>
		</form>
	</body>
</html>
