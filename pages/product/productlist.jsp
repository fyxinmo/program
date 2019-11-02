<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="${base }">

		<title>产品管理</title>
		<link href="${base }/css/list.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<form action="${base }/servlet/ProductServlet?method=findAllProduct"
			method="post">
			<div align="center">
				<h1>
					产品列表
				</h1>


			</div>

			<div align="center">
				<table border="1">
					<tr>
						<th align="left">
							产品名称/编号：
							<input name="pname" id="pname" value="${ product.pname}">


							<input type="submit" value="搜  索" />
						</th>

						<th>
						<c:if test="${flag==2}">
							<input type="button"
								onclick="location.href='${base }/servlet/ProductServlet?method=addProduct'"
								value="添  加" /></c:if>
							<input class="box" type="button" value="返  回"
								onClick="javascript:history.go(-1);" />
						</th>

					</tr>
				</table>
			</div>

			<div align="center" id="studentlist">
				<table border="1">
					<tr>
						<th align="center">
							序号
						</th>
						<th>
							产品编号
						</th>

						<th>
							产品名
						</th>


						<th>
							产品规格
						</th>
						<th>
							生产厂家
						</th>
						<th>
							销售价格
						</th>
						<th>
							库存数量
						</th>
						

						<th>

							操作
						</th>

					</tr>
					<c:forEach var="item" varStatus="i" items="${list}">

						<tr>
							<td>
								${(pagenum-1)*currentp+i.index+1}
							</td>
							<td>
								${item.pcode}
							</td>
							<td>
								${item.pname}
							</td>

							<td>
								${item.pstandard}
							</td>
							<td>
								${item.pfactory}
							</td>
							<td>
								${item.pprice}
							</td>
							<td>
								${item.pcount}
							</td>
							

							<td align="center"><a
									href="${base }/servlet/ProductServlet?method=showPage&pid=${item.pid}">查看</a><c:if test="${flag==2}">|
								<a
									href="${base }/servlet/ProductServlet?method=updatePage&pid=${item.pid}">修改</a>|
								<a
									href="${base }/servlet/ProductServlet?method=deleteProduct&pid=${item.pid}">删除</a></c:if>
							</td>

						</tr>
					</c:forEach>
				</table>
				${pagingModel.pageLink }${pagingModel.pageInfo }
			</div>
		</form>
	</body>
</html>
