<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>KDN Car Rental System</title>
	
	<!-- CSS -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<link href="css/flexslider.css" rel="stylesheet">
	<link href="css/templatemo-style.css" rel="stylesheet">
	
	<!-- Javascript -->
	<!-- jQuery -->
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<!-- moment.js -->
	<script type="text/javascript" src="js/moment.js"></script>
	<!-- bootstrap js -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
	
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="js/templatemo-script.js"></script>
	<script type="text/javascript" src="js/templatemo.js"></script>
	<script type="text/javascript" src="js/google_map.js"></script>
</head>
<body class="tm-gray-bg">
	<!-- Header -->
	<header>
		<!-- Header Nav -->
		<jsp:include page = "../include/header_nav.jsp" />
		<!-- Header Nav End-->
		<jsp:include page = "../include/login_modal.jsp" />		
	
		<!-- Header Banner -->
		<section class="tm-banner">
			<jsp:include page = "../include/main_banner.jsp" />
		</section>
		<!-- Header Banner End -->
	</header>
	<!-- Header End -->
	
	<!-- Main Content -->
	<section>
		<jsp:include page = "contact_content.jsp"></jsp:include>
	</section>
	<!-- Main Content End -->
	
	<!-- Footer -->
	<footer class="tm-black-bg">
		<jsp:include page="../include/footer.jsp" />
	</footer>
	<!-- Footer End -->
</body>
</html>