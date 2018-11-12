<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<!-- <jsp:include page="decorator/page_header.jsp"></jsp:include> -->
<meta charset="ISO-8859-1">
<title>BCA</title>
</head>
<body>
	<div class="container">
		<div class="box">
			<div class="header">
				<!-- <jsp:include page="decorator/headerlogin.jsp"></jsp:include> -->
			</div>
			<div class="body">
				<div class="side">
					<div class="caption-white">
					User ID dan PIN internet Banking dapat diperoleh pada saat 
					Anda melakukan Registrasi Internet melalui ATM BCA. 
					Untuk informasi lebih lanjut hubungi Halo BCA (021)52999888
					</div>
				</div>
				<div class="main">
					<div class="content">
						<div class="isi">
						<form action="/SpringMid/doLogin" id="formLogin" method="post">
							<span class="underline">Silahkan memasukan USER ID Anda</span> <br />
							<span class="orange">Please Enter your USER ID</span> <br />
							<input type="text" name="userId" /> <br /> <br />
							<span class="underline">Silahkan memasukan PIN Internet banking Anda</span> <br />
							<span class="orange">Please Enter your Internet Banking Pin</span> <br />
							<input type="password" name="password" /> <br /> <br />
							<input type="submit" value="Login" /> <br />
						</form>
						
						</div>
						<span class="error">${msg }</span>
					</div>
				</div>
				<!-- <jsp:include page="decorator/footer.jsp"></jsp:include> -->
			</div>
		</div>
	</div>

	<!-- <img src="<c:url value="/resources/assets/klick_bca.png" />" alt="BCA" /> -->
	<!-- <jsp:include page="decorator/page_footer.jsp"></jsp:include> -->
	<script>
	var i1 = "User ID";
	var i2 = "Password";
	$(document).ready(function () {
		
	    $("#formLogin").validate({
	    	rules: {
	    		userId: {required: true, maxlength: 15},
	    		password: {required: true,maxlength: 16,digits: true}
            },
            messages: {
            	userId: {required: i1+" harus diisi",maxlength: i1+" maksimal 15 karakter"},
	    		password: {required: i2+" harus diisi",maxlength: i2+" maksimal 6 karakter",digits: i2+" hanya boleh diisi angka !!!"}
            },
            submitHandler: function(form) { form.submit(); }
	    });
	});
	</script>
</body>
</html>