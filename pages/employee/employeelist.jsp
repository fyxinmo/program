<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>ҵ��Ա����</title>
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
				document.location.href="${base }/servlet/EmployeeServlet?method=deleteEmployee&eid="+id;
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
		<form action="${base }/servlet/EmployeeServlet?method=findAllEmployee"
			method="post">
			
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#cccccc" style="font-size: 12px">
				<tr>
					<td height="25" colspan="2" align="center" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE4">ҵ��Ա�б�</span>
					</td>
				</tr>
				<tr>
					<td class="STYLE4" height="25" align="left"
						style="background:url(${base }/img/bg_titlebarr.gif)"
						valign="middle">
						�û�����
						<input name="ename" id="ename" value="${ employee.ename}">


						<input type="submit" value="��  ��" />
					</td>


					<td height="25" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<input type="button"
							onclick="location.href='${base }/servlet/EmployeeServlet?method=addEmployee'"
							value="��  ��" />
						<input class="box" type="button" value="��  ��"
							onClick="javascript:history.go(-1);" />
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
					
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						��ϵ�绰
					</td>
					<td width="180" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						��ͥסַ
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						����֤��
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						����
					</td>

				</tr>
				<c:forEach var="item" varStatus="i" items="${list}">

					<tr>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> ${(pagenum-1)*currentp+i.index+1}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> ${item.ename}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> ${item.etel}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> ${item.eadd}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> ${item.eidcard}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> <a
								href="${base }/servlet/EmployeeServlet?method=updatePage&eid=${item.eid}">�޸�</a>|
								<a href="javascript:del(${item.eid})">ɾ��</a>
							</span>
						</td>

					</tr>
				</c:forEach>
			</table>
			${pagingModel.pageLink }${pagingModel.pageInfo }

		</form>
	</body>
</html>