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
	         
			return true;
		}
</script>
	</head>

	<body>
		<form action="${base }/servlet/OrderServlet?method=assessOrder"
			method="post" onsubmit="return checkForm()">
			<table width="545" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->
				<tr>
					<td height="25" colspan="2" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE1"> ����</span>
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
				<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<tr>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						����̬��
					</td>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						<input type="radio" value="1" id="attitude" name="attitude">1��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="2" id="attitude" name="attitude">2��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="3" id="attitude" name="attitude">3��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="4" id="attitude" name="attitude">4��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="5" id="attitude" name="attitude" checked="checked">5��&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						��������
					</td>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						<input type="radio" value="1" id="quality" name="quality">1��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="2" id="quality" name="quality">2��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="3" id="quality" name="quality">3��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="4" id="quality" name="quality">4��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="5" id="quality" name="quality" checked="checked">5��&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						�ٶ�
					</td>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						<input type="radio" value="1" id="speed" name="speed">1��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="2" id="speed" name="speed">2��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="3" id="speed" name="speed">3��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="4" id="speed" name="speed">4��&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" value="5" id="speed" name="speed" checked="checked">5��&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						����
					</td>
					<td  height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						<textarea rows="4" cols="50" id="message" name="message"></textarea>
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
