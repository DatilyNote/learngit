<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>管理中心</title>
</head>
<frameset rows="64,*" cols="*" frameborder="No" border="0"  
        framespacing="1">  
        <frame  
            src="<%=basePath%>admin_top.jsp"  
            name="topFrame" scrolling="No" noresize="noresize" id="topFrame"  
            title="topFrame" />  
          
        <frameset cols="200,*" frameborder="No" border="0" framespacing="1">  
            <frame  
                src="<%=basePath%>left.html"  
                  
                name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame"  
                title="leftFrame" />  
            <frame  
                src="<%=basePath%>index.html"  
                name="main" noresize="noresize" id="main" title="mainFrame" />  
<!--注意id="mainFrame"和 menu.jsp中的target="mainFrame"..看这就明白了。意思就是menu.jsp中的target="mainFrame"中的网页显示在id="mainFrame"的部分中来-->    
        </frameset>  
    </frameset>  
  <noframes>  
        <body>  
        </body>  
    </noframes>  
</html>