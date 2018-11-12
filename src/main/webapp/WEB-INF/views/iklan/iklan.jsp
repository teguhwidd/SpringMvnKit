<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resources/etc/bootstrap-3.3.7/dist/css/bootstrap.min.css" />" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.item .btn-corner {
    position: absolute;
    top: 4%;
    right: 0.1%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    background-color: white;
    color: Black;
    font-size: 20px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-5 col-center">
				<form action="">
				<input type="text" /> <br />
				<input type="text" />
				</form>
				</div>
				
			</div>
		</div>
		<button type="button" class="btn btn-primary" id="SimpanBtn">Simpan</button>
		<div id="myModal" class="modal" role="dialog" style="margin-top: 4%;">
			<div class="modal-dialog modal-lg">
    			<div class="modal-content">
		        	<div id="myCarousel" class="carousel slide">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    					<li data-target="#myCarousel" data-slide-to="1"></li>
		   						<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
								<a href="https://www.bca.co.id/" class="url"><img src="<c:url value="/resources/assets/slide1.png" />" alt="klikBCA" style="width: 100%" class="img-responsive"></a>
							    	<button class="btn-corner">Button</button>
							    </div>
							
							    <div class="item">
							      <a href="https://www.bca.co.id/" class="url"><img src="<c:url value="/resources/assets/slide2.png" />" alt="klikBCA" style="width: 100%" class="img-responsive"></a>
							    	<button class="btn-corner">Button</button>
							    </div>
							
							    <div class="item">
							      <a href="https://www.bca.co.id/" class="url"><img src="<c:url value="/resources/assets/slide3.png" />" alt="klikBCA" style="width: 100%" class="img-responsive"></a>
							    	<button class="btn-corner">Button</button>
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
    	<div id="detail" class="modal" role="dialog" style="margin-top: 4%;">
			<div class="modal-dialog modal-lg">
    			<div class="modal-content">
		        	<iframe class="view-url" src="" frameborder="0"></iframe>
				</div>
			</div>
    	</div>
	</div>
	<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
	<script src="<c:url value="/resources/etc/bootstrap-3.3.7/dist/js/bootstrap.min.js" />"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		$('#myCarousel').carousel({
		    interval:3000,
		    pause: "false"
		});
	    $("#SimpanBtn").click(function(){
	    	$("#myModal").modal("show");
	    });
	    
	});
	$(document).on("click", ".url", function(e){ 
		e.preventDefault();
		$("#myModal").modal("hide");
		var url= $(this).attr("href");
		$(".view-url").attr("src",url);
    	$("#detail").modal("show");
    	$('iframe').attr('src', $('iframe').attr('src'));
	});
	
	</script>
	
	
</body>
</html>