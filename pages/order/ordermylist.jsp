<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>我的快递管理</title>
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
				document.location.href="${base }/servlet/OrderServlet?method=deleteOrder&oid="+id;
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
		<form action="${base }/servlet/OrderServlet?method=findMyOrder"
			method="post">
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#cccccc" style="font-size: 12px">
				<tr>
					<td height="25" colspan="2" align="center" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						<span class="STYLE4">我的快递管理</span>
					</td>
				</tr>
				<tr>
					<td class="STYLE4" height="25" align="left"
						style="background:url(${base }/img/bg_titlebarr.gif)"
						valign="middle">
						运单号：
						<input name="ocode" id="ocode" value="${ orders.ocode}">
						发件人姓名：
						<input name="osname" id="osname" value="${ orders.osname}">

						<input type="submit" value="搜  索" />
					</td>


					<td height="25" align="left" valign="middle"
						style="background:url(${base }/img/bg_titlebarr.gif)">
						
						<input class="box" type="button" value="返  回"
							onClick="javascript:history.go(-1);" />
					</td>

				</tr>
			</table>

			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="1" bgcolor="#9EC3F2" style="font-size: 12px">
				<!--DWLayoutTable-->

				<tr>
					<td width="100" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						序号
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						运单号
					</td>
					<td width="200" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						提交日期
					</td>
					
				
				
				
					<td width="100" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						业务员
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						业务员电话
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						收件人姓名
					</td>
					
				
				
					<td width="80" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						金额
					</td>
					
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						状态
					</td>
					<td width="119" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						途经地
					</td> 
					<td width="200" class="STYLE4" align="center" valign="middle"
						bgcolor="#F9FCFF">
						途经日期
					</td>        
					<td width="180" class="STYLE4" align="center" valign="middle"
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
							<span class="STYLE1">${item.ocode}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.odate}</span>
						</td>
						
						
						
					
					
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.ename}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.etel}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.orname}</span>
						</td>
						
					
						
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.orprice}</span>
						</td>
						
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">
							<c:if test="${item.ostatus==0}">等待处理</c:if>
							<c:if test="${item.ostatus==1}">核对</c:if>
							<c:if test="${item.ostatus==2}">途中</c:if>
							<c:if test="${item.ostatus==3}">签收</c:if>
							<c:if test="${item.ostatus==4}">已评价</c:if>
							<c:if test="${item.ostatus==5}">退件</c:if>
							</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.pass}</span>
						</td>
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							<span class="STYLE1">${item.passdate}</span>
						</td>    
						<td align="center" valign="middle" bgcolor="#F9FCFF">
							
							<span class="STYLE1">
							
							 <a
								href="${base }/servlet/OrderServlet?method=showPage&oid=${item.oid}">查看</a>
							<c:if test="${item.ostatus==0}">
							<a
								href="${base }/servlet/OrderServlet?method=updatePage&oid=${item.oid}">修改</a>
								<a
								href="javascript:del(${item.oid})">删除</a>
								</c:if>
							<c:if test="${item.ostatus==3}">
							<a
								href="${base }/servlet/OrderServlet?method=assessPage&oid=${item.oid}">评价</a>
								
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
