<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>����ҳ��</title>
<script language=JavaScript>
function logout(){
	if (confirm("��ȷ��Ҫ�˳���")){
		top.location = "<%=basePath%>LogoutSvl";
	}else{
		top.location = "#";
	}
	return false;
}
</script>
<script language=JavaScript>
function back(){
	top.location = "<%=basePath%>main/b_index.jsp";
	return false;
}
</script>
<script language=JavaScript>
function register(){
	top.location = "<%=basePath%>main/register.jsp";
	return false;
}
</script>
<script language=JavaScript>
function login(){
	top.location = "<%=basePath%>main/login.jsp";
	return false;
}
</script>
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
<meta http-equiv="refresh" content="60">
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<base target="main">
<link href="images/skin.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><img src="images/logo1.png" width="262" height="64"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
		<td align="center">
      	     <c:if test="${user != null}">
      	        &nbsp;<font size="3" color="white">Hi,</font><span style="color: green;">${user.name} &nbsp;<a href=""><font size="3" color="white">�ҵĶ���</font></a>
      	        &nbsp;<a href=""><font size="3" color="white">������Ϣ</font></a>
      	        &nbsp;<a href=""><font size="3" color="white">���ﳵ</font></a></span>
      	        <a href="#" onClick="logout();"><font size="3" color="red">�˳�</font></a>      	        
      	        <c:if test="${user.role == 'a'}">
      	    		<a href="#" onclick="back();"><font size="3" color="red">��̨</font></a>    
      	        </c:if>
      	     </c:if>
      	     
      	     <c:if test="${user == null}">
      	     	<font size="3" color="white">�ο����ã�</font>
      	        &nbsp;<a href="#" onClick="login();"><font size="3" color="red">��¼</font></a>
      	        &nbsp;<font size="3" color="white">��û�˺ţ�</font>
      	        &nbsp;<a href="#" onClick="register()"><font size="3" color="red">ע��</font></a>
      	     </c:if>	          	  	
      		      	
      	</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
