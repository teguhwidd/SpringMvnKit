<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resources/etc/bootstrap-3.3.7/dist/css/bootstrap.min.css" />" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div id="myCarousel" class="carousel slide">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="<?php echo $i; ?>"
							class="">
						</li>
					</ol>
					<div class="carousel-inner">
						<div class="">
							<img src="<c:url value="/resources/assets/kpr.JPG" />"
								alt="klikBCA" style="width: 100%" class="img-responsive">
						</div>
					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span class="icon-prev"></span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span class="icon-next"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/jquery-3.1.1.js" />"></script>
	<script src="<c:url value="/resources/etc/bootstrap-3.3.7/dist/js/bootstrap.min.js" />"></script>
	
</body>
</html>