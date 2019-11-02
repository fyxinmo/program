<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="${base }">
    
    <title>查看产品</title>
    <link href="${base }/css/page.css" rel="stylesheet" type="text/css" />
    <script src="${base }/js/meizzDate.js" ></script>
	<script type="text/javascript" language="javascript">
	 var pcode =[<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>{'pid':'${item.pid}','pcode':'${item.pcode}'}</c:forEach>];
     var flag=0;
      function checkForm(){
    	  var form = document.forms[0];
          if(form.pcode.value=="" || form.pcode.value.length<=0){
 			alert("请输入产品编号！");
 			form.pcode.focus();
 			return false;
 		}
 		checkcode();
 		if(flag==1)
 			{
 				alert("产品编号已存在！");
 				form.pcode.focus();
 				return false;
 			}
 	     if(form.pname.value=="" || form.pname.value.length<=0){
 			alert("请输入产品名！");
 			form.pname.focus();
 			return false;
 		}
 	     if(form.pstandard.value=="" || form.pstandard.value.length<=0){
 				alert("请输入产品规格！");
 				form.pstandard.focus();
 				return false;
 			}
 	     if(form.pfactory.value=="" || form.pfactory.value.length<=0){
 				alert("请输入生产厂家！");
 				form.pfactory.focus();
 				return false;
 			}
 	     if(form.pprice.value=="" || form.pprice.value.length<=0){
 				alert("请输入销售价格！");
 				form.pprice.focus();
 				return false;
 			}
 	     if(form.pcount.value=="" || form.pcount.value.length<=0){
 				alert("请输入库存数量！");
 				form.pcount.focus();
 				return false;
 			}
		return true;
	}
	function checkcode()
	{
		 var form = document.forms[0];
		var i ;
		for(i=0;i<ccode.length;i++)
		{
			if(ccode[i].ccode==form.ccode.value&&form.cid.value!=ccode[i].cid)
			{
				alert("人员编号已存在！");
				form.ccode.focus();
				flag=1;
				return false;
			}
			else
			{
				flag=0;
			}
		}
	}
</script>
	</head>

	<body >
		<div align="center">
			<h1>
				查看产品
			</h1>
		</div>
		<div id="user" align="center">
			<form action="${base }/servlet/ProductServlet?method=updateProduct" method="post"
				onsubmit="return checkForm()">
				<table border="1">
					<tr>
						<td>
							产品编号：
						</td>
						<td colspan="3">
							${product.pcode }		
						</td>
						
					</tr>
					<tr>
						
						<td>
							产品名：
						</td>
						<td>
							${product.pname }					
						</td>
						</tr>
					<tr>
						<td>
							产品规格：
						</td>
						<td>
							${product.pstandard}
						</td>
						</tr>
					<tr>
						<td>
							生产厂家：
						</td>
						<td>
							${product.pfactory}
						</td>
					</tr>
					<tr>
						
						<td>
							销售价格：
						</td>
						<td colspan="3">
							${product.pprice}
						</td>
					</tr>
					<tr>
						<td>
							库存数量：
						</td>
						<td>
							${product.pcount}
						</td>
					</tr>
					<tr>
						<td>
							备注：
						</td>
						<td>
							${product.premarks}
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<input type="submit" value="提交" />
							
							<input class="box" type="button" value="返  回"
							onClick="javascript:history.go(-1);" />
						</td>
					</tr>
				</table>
			</form>
		</div>
  </body>
</html>
