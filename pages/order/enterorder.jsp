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
	         
	         if(form.ocode.value=="" || form.ocode.value.length<=0){
					alert("请输入运单编号！");
					form.ocode.focus();
					return false;
				}
		     if(form.osunit.value=="" || form.osunit.value.length<=0){
				alert("请输入发件人单位！");
				form.osunit.focus();
				return false;
			}
		     
		     if(form.orname.value=="" || form.orname.value.length<=0){
					alert("请输入收件人姓名！");
					form.orname.focus();
					return false;
				}
		     if(form.ortel.value=="" || form.ortel.value.length<=0){
					alert("请输入收件人电话！");
					form.ortel.focus();
					return false;
				}
				
			     if(form.oradd.value=="" || form.oradd.value.length<=0){
					alert("请输入收件人地址！");
					form.oradd.focus();
					return false;
				}
			     
			     if(form.ortermini.value=="" || form.ortermini.value.length<=0){
						alert("请输入目的地！");
						form.ortermini.focus();
						return false;
					}
			     if(form.orprice.value=="" || form.orprice.value.length<=0){
						alert("请输入金额！");
						form.orprice.focus();
						return false;
					}
				
			
			return true;
		}
</script>
	</head>

	<body>
		<form action="${base }/servlet/OrderServlet?method=enterOrder"
			method="post" onsubmit="return checkForm()">
			<table width="545" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->
				<tr>
					<td height="25" colspan="2" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE1"> 录入叫件信息</span>
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
						运单编号：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="ocode" name="ocode">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						发件人单位：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="osunit" name="osunit">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						收件人姓名：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="orname" name="orname">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						收件人电话：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="ortel" name="ortel">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						收件人地址：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="oradd" name="oradd">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						目的地：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="ortermini" name="ortermini">
						<span style="color: red;">*</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center" valign="middle" bgcolor="#F9FCFF">
						金额：
					</td>
					<td align="left" valign="middle" bgcolor="#F9FCFF">
						<input type="text" id="orprice" name="orprice">
						<span style="color: red;">*</span>
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
		</form>
	</body>
</html>
