<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ include file="/pages/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="${base }">
    
    <title>�޸Ĳ�Ʒ</title>
    <link href="${base }/css/page.css" rel="stylesheet" type="text/css" />
    <script src="${base }/js/meizzDate.js" ></script>
	<script type="text/javascript" language="javascript">
	 var pcode =[<c:forEach items="${list}" var="item" varStatus="i"><c:if test="${i.index!=0}">,</c:if>{'pid':'${item.pid}','pcode':'${item.pcode}'}</c:forEach>];
     var flag=0;
      function checkForm(){
    	  var form = document.forms[0];
          if(form.pcode.value=="" || form.pcode.value.length<=0){
 			alert("�������Ʒ��ţ�");
 			form.pcode.focus();
 			return false;
 		}
 		checkcode();
 		if(flag==1)
 			{
 				alert("��Ʒ����Ѵ��ڣ�");
 				form.pcode.focus();
 				return false;
 			}
 	     if(form.pname.value=="" || form.pname.value.length<=0){
 			alert("�������Ʒ����");
 			form.pname.focus();
 			return false;
 		}
 	     if(form.pstandard.value=="" || form.pstandard.value.length<=0){
 				alert("�������Ʒ���");
 				form.pstandard.focus();
 				return false;
 			}
 	     if(form.pfactory.value=="" || form.pfactory.value.length<=0){
 				alert("�������������ң�");
 				form.pfactory.focus();
 				return false;
 			}
 	     if(form.pprice.value=="" || form.pprice.value.length<=0){
 				alert("���������ۼ۸�");
 				form.pprice.focus();
 				return false;
 			}
 	     if(form.pcount.value=="" || form.pcount.value.length<=0){
 				alert("��������������");
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
				alert("��Ա����Ѵ��ڣ�");
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
				�޸Ĳ�Ʒ
			</h1>
		</div>
		<div id="user" align="center">
			<form action="${base }/servlet/ProductServlet?method=updateProduct" method="post"
				onsubmit="return checkForm()">
				<table border="1">
					<tr>
						<td>
							��Ʒ��ţ�
						</td>
						<td colspan="3">
							<input type="text" id="pcode" name="pcode" value="${product.pcode }" onblur="checkcode()" >	
							<input type="hidden" value="${product.pid }" name="pid" id="pid">
							<span style="color: red;">*</span>					
						</td>
						
					</tr>
					<tr>
						
						<td>
							��Ʒ����
						</td>
						<td>
							<input type="text" id="pname" name="pname" value="${product.pname }">	
							<span style="color: red;">*</span>					
						</td>
						</tr>
					<tr>
						<td>
							��Ʒ���
						</td>
						<td>
							<input type="text" id="pstandard" name="pstandard" value="${product.pstandard}">	
						</td>
						</tr>
					<tr>
						<td>
							�������ң�
						</td>
						<td>
							<input type="text" id="pfactory" name="pfactory" value="${product.pfactory}">	
						</td>
					</tr>
					<tr>
						
						<td>
							���ۼ۸�
						</td>
						<td colspan="3">
							<input type="text" id="pprice" name="pprice" value="${product.pprice}">	
							<input type="hidden" value="0" name="pdel" id="pdel">
						</td>
					</tr>
					<tr>
						<td>
							���������
						</td>
						<td>
							<input type="text" id="pcount" name="pcount" value="${product.pcount}">	
							<span style="color: red;">*</span>	
						</td>
					</tr>
					<tr>
						<td>
							��ע��
						</td>
						<td>
							<input type="text" id="premarks" name="premarks" value="${product.premarks}">	
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<input type="submit" value="�ύ" />
							
							<input class="box" type="button" value="��  ��"
							onClick="javascript:history.go(-1);" />
						</td>
					</tr>
				</table>
			</form>
		</div>
  </body>
</html>
