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
	         
		     if(form.ostatust.value=="" || form.ostatust.value.length<=0){
				alert("��ѡ��״̬��");
				form.ostatust.focus();
				return false;
			}
		     
		     if(form.radd.value=="" || form.radd.value.length<=0){
					alert("������;���أ�");
					form.radd.focus();
					return false;
				}
		    
			return true;
		}
</script>
	</head>

	<body>
		<form action="${base }/servlet/OrderServlet?method=updateReach"
			method="post" onsubmit="return checkForm()">
			<table width="545" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->
				<tr>
					<td height="25" colspan="2" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE1"> ¼��;����</span>
					</td>
				</tr>
					<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�˵���ţ�
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ocode}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						������������
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.osname }
						<input type="hidden" id="oid" name="oid" value="${orders.oid}">
						<input type="hidden" id="cid" name="cid" value="${orders.cid}">
						
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�����˵绰��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ostel }
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�����˵�ַ��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
					${orders.osadd }
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�ύ���ڣ�
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.odate}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						ҵ��Ա��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<select id="eid" name="eid" disabled="disabled">
							<option value="">--��ѡ��--</option>
							<c:forEach var="item" items="${list}">
								<option value="${item.eid}">${item.ename}</option>
							</c:forEach>
						</select>
						<script type="text/javascript">document.getElementById("eid").value='${orders.eid}'</script>
					</td>
				</tr>
				
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�����˵�λ��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.osunit}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�ռ���������
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.orname}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�ռ��˵绰��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ortel}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�ռ��˵�ַ��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.oradd}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						Ŀ�ĵأ�
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ortermini}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						
						${orders.orprice}
					</td>
				</tr>
				
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						
						${orders.orprice}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						״̬��
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<select id="ostatus" name="ostatus">
							<option value="2">;��</option>
							<option value="3">ǩ��</option>
							<option value="5">�˼�</option>
						</select>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						;���أ�
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text"  id="radd" name="radd">
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
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<tr>
					<td height="25" colspan="3" align="center" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE1">�����б�</span>
					</td>
				</tr>
				<tr>
					<td width="151" class="STYLE1" align="center" valign="middle"
						bgcolor="#F9FCFF">
						���
					</td>
					
					<td width="119" class="STYLE1" align="center" valign="middle"
						bgcolor="#F9FCFF">
						;����
					</td> 
					<td width="119" class="STYLE1" align="center" valign="middle"
						bgcolor="#F9FCFF">
						;������
					</td>        
					
				</tr>
				<c:forEach var="item" varStatus="i" items="${reachlist}">

					<tr>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE4">${i.index+1}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE4">${item.radd}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE4">${item.rdate}</span>
						</td>    
						
					</tr>
				</c:forEach>
				</table>
		</form>
	</body>
</html>
