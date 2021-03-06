<%@page import="org.apache.commons.lang.exception.ExceptionUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.istarindia.apps.dao.*"%>
<%@page import="com.istarindia.apps.dao.IstarUser"%>
<% 
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";

String user_type = ((IstarUser)request.getSession().getAttribute("user")).getUserType().toLowerCase() ;

String userUrl= baseURL + user_type ; 
%>
<%
try {
	Throwable throwable = (Throwable) request.getAttribute("javax.servlet.error.exception");
	Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
	String servletName = (String) request.getAttribute("javax.servlet.error.servlet_name");
	
	System.err.println("JSP Exception Page --> "+(new ExceptionUtils()).getFullStackTrace(throwable));
} catch (Exception e) {
	
}
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>Content Admin Dashboard | iStar CMS</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" href="<%=baseURL%>assets/img/talentify_logo_fav_48x48.png" />

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet" href="<%=baseURL %>assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="<%=baseURL %>assets/css/500.css">
</head>

<body>

	<div class="wrapper">
		
		<div class="container-fluid height-1000" style="padding: 0px !important">
			<div class="page-error">
				<h1 class="number text-center">500</h1>
				<h2 class="description text-center">Something's not just!</h2>
				<h3 class="text-center"> <strong>NOTE</strong>: Please go back and reload the page. If the issue persists, report below</h3>
			</div>		
			<div class="text-center copy"> <a target='_blank' href="https://docs.google.com/a/istarindia.com/spreadsheets/d/15RF7M5ysBV7fu77uOeAzd4QgLufJsdN9m6e_fgSRS00/edit?usp=sharing">Report here!</a></div>	
		</div>
	</div>


	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="<%=baseURL %>assets/plugins/jquery/jquery.min.js?a=1"></script>
	<script type="text/javascript" src="<%=baseURL %>assets/plugins/jquery/jquery-migrate.min.js?a=1"></script>
	<script type="text/javascript" src="<%=baseURL %>assets/plugins/bootstrap/js/bootstrap.min.js?a=1"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="<%=baseURL %>assets/plugins/back-to-top.js?a=1"></script>
	<script type="text/javascript" src="<%=baseURL %>assets/plugins/smoothScroll.js?a=1"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="<%=baseURL %>assets/js/custom.js?a=1"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="<%=baseURL %>assets/js/app.js?a=1"></script>
	<script type="text/javascript" src="<%=baseURL %>assets/js/plugins/style-switcher.js?a=1"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
		});
	</script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js?a=1"></script>
	<script src="assets/plugins/html5shiv.js?a=1"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js?a=1"></script>
	<![endif]-->

</body>
</html>
