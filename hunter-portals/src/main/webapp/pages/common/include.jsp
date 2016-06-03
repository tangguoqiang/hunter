<%@page import="com.gt.hunter.portals.domain.Account"%>
<%
	String baseUrl = request.getContextPath();
	String userName = null,type = null; 
	Account acc = (Account)request.getSession().getAttribute("account");
	if(acc != null){
		userName = acc.getName();
		type = acc.getType();
	}
%>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
 	<link href="<%=baseUrl%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <%-- <link href="<%=baseUrl%>/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/> --%>
    <%-- <link href="<%=baseUrl%>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/> --%>
    <link href="<%=baseUrl%>/css/base.css" rel="stylesheet" type="text/css"/>
    
<script type="text/javascript">
	var baseUrl = '<%=baseUrl%>';
	var userName = '<%=userName%>';
	var pageSize = 10;//每页的条数
</script>