<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Show Associates</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />

    <style>
      body {
        color: #6f8ba4;
        margin-top: 20px;
      }
      .section {
        padding: 100px 0;
        position: relative;
      }
      .gray-bg {
        background-color: #f5f5f5;
      }
      img {
        max-width: 100%;
      }
      img {
        vertical-align: middle;
        border-style: none;
      }
      /* About Me 
---------------------*/
      .about-text h3 {
        font-size: 45px;
        font-weight: 700;
        margin: 0 0 6px;
      }
      @media (max-width: 767px) {
        .about-text h3 {
          font-size: 35px;
        }
      }
      .about-text h6 {
        font-weight: 600;
        margin-bottom: 15px;
      }
      @media (max-width: 767px) {
        .about-text h6 {
          font-size: 18px;
        }
      }
      .about-text p {
        font-size: 18px;
        max-width: 450px;
      }
      .about-text p mark {
        font-weight: 600;
        color: #20247b;
      }

      .about-list {
        padding-top: 10px;
      }
      .about-list .media {
        padding: 5px 0;
      }
      .about-list label {
        color: #20247b;
        font-weight: 600;
        width: 88px;
        margin: 0;
        position: relative;
      }
      .about-list label:after {
        content: "";
        position: absolute;
        top: 0;
        bottom: 0;
        right: 11px;
        width: 1px;
        height: 12px;
        background: #20247b;
        -moz-transform: rotate(15deg);
        -o-transform: rotate(15deg);
        -ms-transform: rotate(15deg);
        -webkit-transform: rotate(15deg);
        transform: rotate(15deg);
        margin: auto;
        opacity: 0.5;
      }
      .about-list p {
        margin: 0;
        font-size: 15px;
      }

      @media (max-width: 991px) {
        .about-avatar {
          margin-top: 30px;
        }
      }

      .about-section .counter {
        padding: 22px 20px;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
      }
      .about-section .counter .count-data {
        margin-top: 10px;
        margin-bottom: 10px;
      }
      .about-section .counter .count {
        font-weight: 700;
        color: #20247b;
        margin: 0 0 5px;
      }
      .about-section .counter p {
        font-weight: 600;
        margin: 0;
      }
      mark {
        background-image: linear-gradient(
          rgba(252, 83, 86, 0.6),
          rgba(252, 83, 86, 0.6)
        );
        background-size: 100% 3px;
        background-repeat: no-repeat;
        background-position: 0 bottom;
        background-color: transparent;
        padding: 0;
        color: currentColor;
      }
      .theme-color {
        color: #fc5356;
      }
      .dark-color {
        color: #20247b;
      }
    </style>

    <!-- =======================================================
  * Template Name: Mentor - v4.10.0
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  </head>

  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">
        <h1 class="logo me-auto"><a href="index.html">Associate</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
            <li><a class="active" href="home.html">Home</a></li>
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->

        <a href="courses.html" class="get-started-btn">LogOut</a>
      </div>
    </header>
    <!-- End Header -->

    <main id="main" style="margin-top: 6%; margin-left: 6%">
      <section class="section about-section gray-bg" id="about">
        <div class="container">
          <div class="row align-items-center flex-row-reverse">
            <div class="col-lg-6">
              <div class="about-text go-to">
                <h3 class="dark-color">Aakash Solanke</h3>
                <h6 class="theme-color lead">Java Batch</h6>
                <div class="row about-list">
                  <div class="col-md-6">
                    <div class="media">
                      <label>Batch</label>
                      <p>Java</p>
                    </div>
                    <div class="media">
                      <label>Qualification</label>
                      <p>Mtech</p>
                    </div>
                    <div class="media">
                      <label>Experience</label>
                      <p>12 YEAR</p>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="media">
                      <label>Batch Start Date</label>
                      <p>12/2/2022</p>
                    </div>
                    <div class="media">
                      <label>Batch End Date</label>
                      <p>12/7/2022</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="about-avatar">
                <img
                  src="https://bootdey.com/img/Content/avatar/avatar7.png"
                  title=""
                  alt=""
                />
              </div>
            </div>
          </div>
          <div class="counter">
            <div class="row" style="justify-content: space-around">
              <div class="col-6 col-lg-3">
                <div class="count-data text-center">
                  <h6 class="count h2" data-to="500" data-speed="500">450</h6>
                  <p class="m-0px font-w-600">Hours Completed</p>
                </div>
              </div>
              <div class="col-6 col-lg-3">
                <div class="count-data text-center">
                  <h6 class="count h2" data-to="150" data-speed="150">2</h6>
                  <p class="m-0px font-w-600">Project Completed</p>
                </div>
              </div>
              <div class="col-6 col-lg-3">
                <div class="count-data text-center">
                  <a
                    href="courses.html"
                    class="get-started-btn"
                    style="background-color: green"
                    >Give Feedback</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-6 footer-contact">
              <h3>Associate</h3>
              <p>
                A108 Adam Street <br />
                New York, NY 535022<br />
                United States <br /><br />
                <strong>Phone:</strong> +1 5589 55488 55<br />
                <strong>Email:</strong> info@example.com<br />
              </p>
            </div>

            <div class="col-lg-2 col-md-6 footer-links">
              <h4>Useful Links</h4>
              <ul>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="index.html">Home</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="#">Terms of service</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="#">Privacy policy</a>
                </li>
              </ul>
            </div>

            <div class="col-lg-3 col-md-6 footer-links">
              <h4>Our Services</h4>
              <ul>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="add-associate.html">Add Associate</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="delete-edit-associate.html">Show Associate</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="#">Edit associate</a>
                </li>
                <li>
                  <i class="bx bx-chevron-right"></i>
                  <a href="#">Delete Associate</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="container d-md-flex py-4">
        <div class="me-md-auto text-center text-md-start">
          <div class="copyright">
            &copy; Copyright <strong><span>Associate</span></strong
            >. All Rights Reserved
          </div>
          <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->
            Designed by <a href="https://bootstrapmade.com/">Aakash solanke</a>
          </div>
        </div>
        <div class="social-links text-center text-md-right pt-3 pt-md-0">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
      </div>
    </footer>
    <!-- End Footer -->

    <div id="preloader"></div>
    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
