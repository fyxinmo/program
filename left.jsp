<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ include file="/pages/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title></title>
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px
}

.STYLE2 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
		<script language="javascript">
	function changeColor() {
		document.getElementById("no1").style.background = "#F9FCFF";
		document.getElementById("no2").style.background = "#F9FCFF";
		document.getElementById("no3").style.background = "#F9FCFF";
	}
	function changeFrame(filename) {
		alert();
		parent.mainFrame.location.href = filename;
	}
</script>
	</head>

	<body leftmargin="0" topmargin="0" bgcolor="#F7F7F7">
		<table width="200" border="0" cellpadding="0" cellspacing="0"
			style="border-right: 1px solid #9EC3F2">
			<!--DWLayoutTable-->
			<tr>
				<td height="13" colspan="3" valign="top">
					<!--DWLayoutEmptyCell-->
					&nbsp;
				</td>
			</tr>
			<tr>
				<td width="11" height="104">
					&nbsp;
				</td>
				<td width="175" valign="top">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						bgcolor="#9EC3F2" style="font-size: 12px">
						<!--DWLayoutTable-->
<c:set var="type" value="<%=session.getAttribute("type") %>"></c:set>
<c:if test="${type==2}">
						<tr>
							<td width="173" height="25" align="center" valign="middle"
								style="background:url(${base }/img/bg_titlebarr.gif)"
								bgcolor="#F9FCFF" class="STYLE1" id="no3" style="cursor: hand;"
								onmousedown="javascript: changeColor(); this.style.background = '#FFFFFF'";>
								<span class="STYLE2"><img src="img/info.gif" width="16"
										height="16" /> </span><strong>������ݹ���ϵͳ</strong>
							</td>
						</tr>
						<tr>
							<td id="no1" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>

								<a href='${base }/servlet/UsersServlet?method=findAllUsers'
									target='mainFrame' style="text-decoration: none;" title="����Ա����">�����̹���</a>
							</td>
						</tr>
						<tr>
							<td id="no2" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>

								<a href='${base }/servlet/EmployeeServlet?method=findAllEmployee'
									target='mainFrame' style="text-decoration: none;" title="ҵ��Ա����">ҵ��Ա����</a>
							</td>
						</tr>
						
						<tr>
							<td id="no3" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>

								<a href='${base }/servlet/CustomServlet?method=findAllCustom'
									target='mainFrame' style="text-decoration: none;" title="�ͻ�����">�ͻ�����</a>
							</td>
						</tr>
						
						
						
						<tr>
							<td id="no8" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/OrderServlet?method=findVerifyOrder'
									target='mainFrame' style="text-decoration: none;" title="�м�����">�м�����</a>
							</td>
						</tr>
						<tr>
							<td id="no6" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/OrderServlet?method=findEnterOrder'
									target='mainFrame' style="text-decoration: none;" title="�м���Ϣ¼��">�м���Ϣ¼��</a>
							</td>
						</tr>
						<tr>
							<td id="no6" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/OrderServlet?method=findUnreachOrder'
									target='mainFrame' style="text-decoration: none;" title=";����Ϣά��">;����Ϣά��</a>
							</td>
						</tr>
						<tr>
							<td id="no7" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/OrderServlet?method=findAssessOrder'
									target='mainFrame' style="text-decoration: none;" title="��Ϣ��������">��Ϣ��������</a>
							</td>
						</tr>
						<tr>
							<td id="no7" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/OrderServlet?method=findAllOrder'
									target='mainFrame' style="text-decoration: none;" title="��ѯ����">��ѯ����</a>
							</td>
						</tr>
						
						</c:if>
						<c:if test="${type==1}">
						<tr>
							<td id="no4" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/OrderServlet?method=findMyOrder'
									target='mainFrame' style="text-decoration: none;" title="�ҵĿ�ݹ���">�ҵĿ�ݹ���</a>
							</td>
						</tr>
						<tr>
							<td id="no5" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/OrderServlet?method=addOrder'
									target='mainFrame' style="text-decoration: none;" title="�м�">�м�</a>
							</td>
						</tr>
						<tr>
							<td id="no5" height="25" align="center" valign="middle"
								bgcolor="#F9FCFF" class="STYLE1"
								onmousedown="javascript: changeColor();this.style.background = '#FFFFFF';"
								style='cursor: hand;'>
								<a href='${base }/servlet/CustomServlet?method=updatePage&cid=<%=session.getAttribute("userid") %>&flag=1'
									target='mainFrame' style="text-decoration: none;" title="�м�">������Ϣ�޸�</a>	
							</td>
						</tr>
						</c:if>
					</table>
				</td>
				<td width="13">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="483">
					&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>
