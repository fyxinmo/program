<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>�ͻ�����</title>
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
}

.STYLE4 {
	font-size: 14px;
	font-weight: bold;
	background: url(${base }/img/bg_titlebarr.gif);
}
-->
</style>
		<script language="javascript">
	function del(id){
		if(confirm("�����Ҫɾ��ѡ��ļ�¼��")){
				document.location.href="${base }/servlet/OrderServlet?method=deleteOrder&flag=1&oid="+id;
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
		<form action="${base }/servlet/OrderServlet?method=findAllOrder"
			method="post">
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#cccccc" style="font-size: 12px">
				<tr>
					<td height="25" colspan="2" align="center" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE4">����б�</span>
					</td>
				</tr>
				<tr>
					<td class="STYLE4" height="25" align="left"
						style="background:url(${base }/img/bg_titlebarr.gif)"
						valign="middle">
						�˵��ţ�
						<input name="ocode" id="ocode" value="${ orders.ocode}">
						������������
						<input name="osname" id="osname" value="${ orders.osname}">
						<input type="submit" value="��  ��" />
					</td>


					<td height="25" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						
						<input class="box" type="button" value="��  ��"
							onClick="javascript:history.go(-1);" />
					</td>

				</tr>
			</table>

			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->

				<tr>
					<td width="50" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						���
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						�˵���
					</td>
					
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						����������
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						�����˵绰
					</td>
					
					
				
					
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						�ռ�������
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						�ռ��˵绰
					</td>
					<td width="180" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						�ռ��˵�ַ
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						Ŀ�ĵ�
					</td>
					<td width="80" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						���
					</td>
				
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						״̬
					</td>
				
				      
					<td width="140" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">

						����
					</td>
				</tr>
				<c:forEach var="item" varStatus="i" items="${list}">

					<tr>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> ${(pagenum-1)*currentp+i.index+1}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.ocode}</span>
						</td>
						
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.osname}</span>
						</td>
						
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.ostel}</span>
						</td>
						
				
					
						
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.orname}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.ortel}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.oradd}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.ortermini}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.orprice}</span>
						</td>
						
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">
							<c:if test="${item.ostatus==0}">�ȴ�����</c:if>
							<c:if test="${item.ostatus==1}">�˶�</c:if>
							<c:if test="${item.ostatus==2}">;��</c:if>
							<c:if test="${item.ostatus==3}">ǩ��</c:if>
							<c:if test="${item.ostatus==4}">������</c:if>
							<c:if test="${item.ostatus==5}">�˼�</c:if>
							</span>
						</td>
						
						   
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							
							<span class="STYLE1">
							
							 <a
								href="${base }/servlet/OrderServlet?method=showPage&oid=${item.oid}">�鿴</a>
							<c:if test="${item.ostatus==0}">
							<a
								href="${base }/servlet/OrderServlet?method=updatePage&oid=${item.oid}">�޸�</a>
								
								</c:if>
								<a
								href="javascript:del(${item.oid})">ɾ��</a>
							<c:if test="${item.ostatus==3}">
							<a
								href="${base }/servlet/OrderServlet?method=assessPage&oid=${item.oid}">����</a>
								
								</c:if>
							</span>
						</td>
					</tr>
				</c:forEach>
			</table>
			${pagingModel.pageLink }${pagingModel.pageInfo }
		</form>
	</body>
</html>
