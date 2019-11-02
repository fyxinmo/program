<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>客户管理</title>
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
		if(confirm("您真的要删除选择的记录吗？")){
				document.location.href="${base }/servlet/CustomServlet?method=deleteCustom&cid="+id;
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
		<form action="${base }/servlet/CustomServlet?method=findAllCustom"
			method="post">
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#cccccc" style="font-size: 12px">
				<tr>
					<td height="25" colspan="2" align="center" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE4">客户列表</span>
					</td>
				</tr>
				<tr>
					<td class="STYLE4" height="25" align="left"
						style="background:url(${base }/img/bg_titlebarr.gif)"
						valign="middle">
						客户名：
						<input name="cname" id="cname" value="${ custom.cname}">


						<input type="submit" value="搜  索" />
					</td>


					<td height="25" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<input type="button"
							onclick="location.href='${base }/servlet/CustomServlet?method=addCustom'"
							value="添  加" />
						<input class="box" type="button" value="返  回"
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
						序号
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						客户名
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						客户姓名
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						联系电话
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						密码
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">

						操作
					</td>
				</tr>
				<c:forEach var="item" varStatus="i" items="${list}">

					<tr>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> ${(pagenum-1)*currentp+i.index+1}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.cname}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.crealname}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.ctel}</span>
						</td>
						
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.cpassword}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1"> <a
								href="${base }/servlet/CustomServlet?method=updatePage&cid=${item.cid}">修改</a>|
								<a
								href="javascript:del(${item.cid})">删除</a>
							</span>
						</td>
					</tr>
				</c:forEach>
			</table>
			${pagingModel.pageLink }${pagingModel.pageInfo }
		</form>
	</body>
</html>
