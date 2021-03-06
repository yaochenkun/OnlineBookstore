<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.chicken.util.C"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/mystyle.css" type="text/css" rel="stylesheet">
<title>填写订单</title>

</head>
<body>
	<%
		//令牌标记(防止在支付界面重复刷新，导致重复提交订单)
		session.setAttribute(C.WRITEORDER_TOKEN, true);
	%>
	<!-- 导航条 -->
	<jsp:include page="layouts/navi.jsp" flush="true"/>

	<!-- 头部 -->
	<jsp:include page="layouts/header.jsp" flush="true"/>

	<!-- 主体-->
	<jsp:include page="layouts/writeorder_main.jsp" flush="true"/>

	<!-- 尾部-->
	<jsp:include page="layouts/footer.jsp" flush="true"/>
	
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/writeorder_main.js"></script>	
</body>
</html>