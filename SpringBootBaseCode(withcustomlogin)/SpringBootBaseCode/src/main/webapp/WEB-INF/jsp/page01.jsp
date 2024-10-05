<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>IRL Printer Data Systems</title>
		<link href="webjars/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
		<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
		<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/sample.js"></script>
	</head>
    <body>
		<div class="ms-2 border-bottom border-2">
			<strong style="color: black;vertical-align: bottom;font-size: 34;">Spring Boot Demo Project</strong>
		</div>
		<div class="container-fluid">
		    <div class="row flex-nowrap">
				<div class="col py-3">
					<a class="btn btn-success fs-5 text-white fw-bold mb-1 me-1" href="#">
					    Page 1
					</a>
					<a class="btn btn-success fs-5 text-white fw-bold mb-1 me-1" href="/page02">
					    Page 2
					</a>
					<a class="btn btn-success fs-5 text-white fw-bold mb-1 me-1" href="/page03">
					    Page 3
					</a>
					<a class="btn btn-success fs-5 text-white fw-bold mb-1 me-1" href="/page04">
					    Page 4
					</a>
					<a class="btn btn-danger fs-5 text-white fw-bold mb-1 me-1" href="/logout">
					    Logout
					</a>
					<div class="row border-top border-2 m-2">
						<div class="col-sm-6 mt-2">
							<h3>Page 1</h3>
						</div>
						<div class="col-sm-6 mt-2">
							<h3>Date: <span id="datetime"></span></h3>
						</div>
					</div>
				</div>
		    </div>
		</div>
		<script type="text/javascript">getServerRealTime();</script>
	</body>
</html>