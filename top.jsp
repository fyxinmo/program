<%@ page contentType="text/html; charset=gb2312" language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ include file="/pages/taglibs.jsp"%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>logo</title>
		<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px
}
-->
</style>
		<script language="javascript">
	function exit() {
		if (confirm("您真的要退出本系统吗？")) {
			parent.document.location.href = "servlet/LoginServlet?method=loginout";
		}
	}
	function modipass() {
		parent.mainFrame.document.location.href = "${base }/servlet/UsersServlet?method=updatePasswordPage";
	}
</script>
	</head>

	<body  bgcolor="#F7F7F7">

		<table width="1200" border="0" cellpadding="0" cellspacing="0"
			height="65">
			<!--DWLayoutTable-->
			<tr>
				<td height="60" colspan="3" valign="top"
					style="background: url(${base }/img/222.jpg) ;background-repeat:no-repeat;">
					<!--DWLayoutEmptyCell-->
					&nbsp;
				</td>
			</tr>
			<tr >
				<td width="20%" height="10" align="left" valign="bottom"
					style="background: url(img/bg_titlebarr.gif);" class="STYLE1"
					style="border-bottom: 1px solid #9EC3F2">
					&nbsp;
					<img src="${base }/img/topicon.gif" width="7" height="7" />
					尊敬的 [<%=session.getAttribute("username")%>] 您好!
				</td>
				<td width="40%" align="left" valign="bottom" style="background: url(${base }/img/bg_titlebarr.gif);"
					style="border-bottom: 1px solid #9EC3F2">
					<span class="STYLE1">今天是： <script language="JavaScript"
							src="inc/date.js" type="text/javascript"></script> </span>
				</td>
				<td width="40%" align="right" valign="bottom" style="background: url(${base }/img/bg_titlebarr.gif);" class="STYLE1"
					style="border-bottom: 1px solid #9EC3F2" style="cursor:hand;"><%--
					<span style="cursor: hand;" onclick="javasciprt: modipass();">[密码修改]</span>
					--%><span style="cursor: hand;" onclick="javasciprt:exit();">[退出系统]</span>
				</td>
			</tr>
		</table>
	</body>
</html>
