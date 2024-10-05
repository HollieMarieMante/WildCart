<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value=""/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your credentials</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>

<div class="container">

     <c:url value="/login" var="loginProcessingUrl"/>
	 <form action="${loginProcessingUrl}" method="post">
	    <fieldset>
	        <legend>Please Login</legend>
	        <!-- use param.error assuming FormLoginConfigurer#failureUrl contains the query parameter error -->
	        <c:if test="${param.error != null}">
	            <div>
	                Failed to login.
	                <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
	                  Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
	                </c:if>
	            </div>
	        </c:if>
	        <!-- the configured LogoutConfigurer#logoutSuccessUrl is /login?logout and contains the query param logout -->
	        <c:if test="${param.logout != null}">
	            <div>
	                You have been logged out.
	            </div>
	        </c:if>
	        <p>
	        <label for="username">Username</label>
	        <input type="text" id="username" name="username"/>
	        </p>
	        <p>
	        <label for="password">Password</label>
	        <input type="password" id="password" name="password"/>
	        </p>
	        <!-- if using RememberMeConfigurer make sure remember-me matches RememberMeConfigurer#rememberMeParameter -->
	        <p>
	        <label for="remember-me">Remember Me?</label>
	        <input type="checkbox" id="remember-me" name="remember-me"/>
	        </p>
	        <div>
	            <button type="submit" class="btn">Log in</button>
	        </div>
	    </fieldset>
	 </form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></body>
</html>