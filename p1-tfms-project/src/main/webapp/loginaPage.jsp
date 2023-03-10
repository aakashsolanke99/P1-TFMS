<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false"  %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="../images/people.png" />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../fonts/icomoon/style.css" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrapLoginPage.min.css" />

    <!-- Style -->
    <link rel="stylesheet" href="assets/css/loginpagestyle.css" />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />

    <title>CodeTech</title>
  </head>
  <body>
    <div class="content" style="height: 93vh">
      <h3>Welcome to <span style="font-weight: 700">TFMS</span></h3>
      <div class="container">
        <div class="row">
          <div class="col-md-6 order-md-2">
            <img src="assets/img/hero-bg2.jpg" alt="Image" class="img-fluid" />
          </div>
          <div class="col-md-6 contents">
            <div class="row justify-content-center">
              <div class="col-md-8">
                <div class="mb-4">
                  <h3><strong>Associate Admin</strong></h3>
                </div>
                
                       <c:if test="${not empty succMsg}">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg"/>
						</c:if>
						
						
					<c:if  test="${not empty errorMsg}">
						<p class="text-center text-success">${errorMsg}</p>
						<c:remove var="errorMsg"/>
						</c:if>
                
            
                
                <form action="loginServer" method="post">
                  <div class="form-group first">
                    <label for="username">Username</label>
                    <input name="username" type="text" class="form-control" id="username" />
                  </div>
                  <div class="form-group last mb-4">
                    <label for="password">Password</label>
                    <input
                    name="password"
                      type="password"
                      class="form-control"
                      id="id_password"
                    />
                    <i
                      class="far fa-eye-slash"
                      id="togglePassword"
                      style="
                        display: flex;
                        float: right;
                        margin-top: -35px;
                        position: relative;
                      "
                    ></i>
                  </div>
                  <input
                    type="submit"
                    value="Log In"
                    class="btn text-white btn-block btn-primary"
                    style="background-color: #3ac162"
                  />
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer
        style="
          display: flex;
          justify-content: center;
          position: sticky;
          background-color: #3ac162;
          padding: 10px 10px;
          margin-top: 8px;
        "
      >
        @Copyright | CodeTech | 2022- All Right Reserved.
      </footer>
    </div>

    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/loginmain.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/show-fun.js"></script>
  </body>
</html>
