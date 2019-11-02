<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>修改&nbsp;叫件信息</title>
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
				alert("请选择状态！");
				form.ostatust.focus();
				return false;
			}
		     
		     if(form.radd.value=="" || form.radd.value.length<=0){
					alert("请输入途经地！");
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
						<span class="STYLE1"> 录入途经地</span>
					</td>
				</tr>
					<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						运单编号：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ocode}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						发件人姓名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.osname }
						<input type="hidden" id="oid" name="oid" value="${orders.oid}">
						<input type="hidden" id="cid" name="cid" value="${orders.cid}">
						
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						发件人电话：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ostel }
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						发件人地址：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
					${orders.osadd }
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						提交日期：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.odate}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						业务员：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<select id="eid" name="eid" disabled="disabled">
							<option value="">--请选择--</option>
							<c:forEach var="item" items="${list}">
								<option value="${item.eid}">${item.ename}</option>
							</c:forEach>
						</select>
						<script type="text/javascript">document.getElementById("eid").value='${orders.eid}'</script>
					</td>
				</tr>
				
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						发件人单位：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.osunit}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						收件人姓名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.orname}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						收件人电话：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ortel}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						收件人地址：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.oradd}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						目的地：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						${orders.ortermini}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						金额：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						
						${orders.orprice}
					</td>
				</tr>
				
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						金额：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						
						${orders.orprice}
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						状态：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<select id="ostatus" name="ostatus">
							<option value="2">途中</option>
							<option value="3">签收</option>
							<option value="5">退件</option>
						</select>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						途经地：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text"  id="radd" name="radd">
					</td>
				</tr>
				<tr>
					<td colspan="2" height="25" align="center" valign="middle"
						bgcolor="#F9FCFF">
						<input type="submit" value="提  交" />

						<input class="box" type="button" value="返  回"
							onClick="javascript:history.go(-1);" />
					</td>
				</tr>
			</table>
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<tr>
					<td height="25" colspan="3" align="center" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE1">物流列表</span>
					</td>
				</tr>
				<tr>
					<td width="151" class="STYLE1" align="center" valign="middle"
						bgcolor="#F9FCFF">
						序号
					</td>
					
					<td width="119" class="STYLE1" align="center" valign="middle"
						bgcolor="#F9FCFF">
						途经地
					</td> 
					<td width="119" class="STYLE1" align="center" valign="middle"
						bgcolor="#F9FCFF">
						途经日期
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
