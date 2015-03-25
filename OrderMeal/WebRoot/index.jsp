<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>管理中心</title>
</head>
  <body>
  <jsp:include page="admin_top.jsp" flush="true"/>
	<table>
		<tr><jsp:include page="left.html" flush="true"/></tr>
	</table>
  </body>
</html>