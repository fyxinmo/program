<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>信息</title>
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
		if(confirm("您真的要删除选择的记录吗？")){
				document.location.href="${base }/servlet/UsersServlet?method=deleteUsers&uid="+id;
		}	
	}
	function check(){
		if(document.zgform.svalue.value==""){
			alert("请输入查询内容");
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
						<span class="STYLE4">管理员列表</span>
					</td>
				</tr>
				<tr>
					<td class="STYLE4" height="25"  align="left"
						style="background:url(${base }/img/bg_titlebarr.gif)"
						valign="middle">
						管理员名：
						<input name="uname" id="uname" value="${ stu.uname}" />
						<input type="submit" value="搜  索" />

					</td>

					<td height="25" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<input type="button"
							onclick="location.href='${base }/servlet/UsersServlet?method=addUsers'"
							value="添  加" />
						<input class="box" type="button" value="返  回"
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
						编号
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						用户名
					</td>
					<td width="161" class="STYLE4" height="25" align="center"
						valign="middle" bgcolor="#F9FCFF">
						姓名
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						密码
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						联系电话
					</td>
					<td width="105" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF" >
						操作
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
								href="${base }/servlet/UsersServlet?method=updatePage&uid=${item.uid}">修改</a>|
							<a href="javascript:del(${item.uid})">删除</a>
						</td>

					</tr>
				</c:forEach>
			</table>
		</form>
	</body>
</html>
