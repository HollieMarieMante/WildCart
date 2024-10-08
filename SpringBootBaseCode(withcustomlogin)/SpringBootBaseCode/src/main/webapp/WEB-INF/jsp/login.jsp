<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>IRL Printer Data Systems - Log in</title>

    <link rel="stylesheet" href="webjars/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
    <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url("https://scontent-mnl1-1.xx.fbcdn.net/v/t1.15752-9/461718067_1089574522605251_7745214535175557562_n.png?stp=dst-png_s2048x2048&_nc_cat=108&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeFbnqW9NvDyGxl0_oUQ_oNpcrGymG3H0-pysbKYbcfT6vHfWDT4qYu2FuCK-tvH7_VFNPebzpSj5zHjYsxhECK-&_nc_ohc=yc3YRwlSQ4MQ7kNvgGqIQFh&_nc_ht=scontent-mnl1-1.xx&_nc_gid=AIYE_EBfhsHle0ogNzLhleQ&oh=03_Q7cD1QGQ3R4fhC9QFcXa1zOcYFkk99PhrEC1UtIPLGMEatR9tw&oe=6728235B");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            height: 100vh;
        }

        .btn-custom {
            background-color: white;
            border: 1px solid black;
            color: black;
        }

        .btn-custom:hover {
            background-color: black;
            color: white;
        }

        .navbar-maroon {
            background-color: #800000;
        }

        .navbar-maroon .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3E%3Cpath stroke='rgba(0, 0, 0, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
        }

        .card {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 1rem;
            backdrop-filter: blur(10px);
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-maroon navbar-dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active text-black-50 fw-bold" aria-current="page" href="#">Option 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-black-50 fw-bold" href="#">Option 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-black-50 fw-bold" href="#">Option 3</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card text-black" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center bg-light">
                            <div class="mb-md-5 mt-md-4 pb-5">
                                <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                <p class="text-black-50 mb-5">Please enter your login and password!</p>

                                <!-- Error and Logout Messages -->
                                <c:if test="${param.error != null}">
                                    <div class="alert alert-danger">
                                        Failed to login.
                                        <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
                                            Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
                                        </c:if>
                                    </div>
                                </c:if>
                                <c:if test="${param.logout != null}">
                                    <div class="alert alert-success">
                                        You have been logged out.
                                    </div>
                                </c:if>

                                <!-- Login Form -->
                                <c:url value="/login" var="loginProcessingUrl" />
                                <form action="${loginProcessingUrl}" method="post">
                                    <div class="form-outline form-black mb-4">
                                        <input type="text" id="username" name="username" class="form-control form-control-lg" />
                                        <label class="form-label" for="username">Email or Username</label>
                                    </div>

                                    <div class="form-outline form-black mb-4">
                                        <input type="password" id="password" name="password" class="form-control form-control-lg" />
                                        <label class="form-label" for="password">Password</label>
                                    </div>

                                    <div class="form-outline form-black mb-4">
                                        <label for="remember-me">Remember Me?</label>
                                        <input type="checkbox" id="remember-me" name="remember-me" />
                                    </div>

                                    <p class="small mb-5 pb-lg-2">
                                        <a class="text-black-50" href="#!">Forgot password?</a>
                                    </p>

                                    <button class="btn btn-custom btn-lg px-5" type="submit">Login</button>
                                </form>
                            </div>

                            <div>
                                <p class="mb-0">Don't have an account? 
                                    <a href="#!" class="text-blue-50 fw-bold">Sign Up</a>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
