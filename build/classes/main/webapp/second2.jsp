<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DreamTrail</title>
<link rel="icon" href="images/logo.png" type="image/x-icon">
<link rel="stylesheet" href="css/Style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600&family=Roboto:wght@400;500&display=swap" rel="stylesheet">
<style>
  /* Default Light Mode */
  body {
    background: #ffffff;
    color: #2e3a59;
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    transition: all 0.3s ease;
  }

  .navbar {
    background: linear-gradient(to right, #a4d8ff, #ffffff);
    padding: 15px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    transition: background 0.3s ease;
  }

  .navbar-nav .nav-item {
    margin: 0 15px;
  }

  .navbar-nav .nav-link {
    color: #2e3a59;
    font-size: 18px;
    transition: color 0.3s ease;
  }

  .navbar-nav .nav-link:hover {
    color: #ffbb00;
  }

  .card {
    border-radius: 15px;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    background-color: white;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }

  .card:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.15);
  }

  .card-header {
    background: linear-gradient(90deg, #4cb8ff, #ffffff);
    color: #2e3a59;
    font-size: 22px;
    padding: 20px;
    border-radius: 15px 15px 0 0;
    text-transform: uppercase;
  }

  .form-control {
    border-radius: 10px;
    margin-bottom: 15px;
    padding: 15px;
    font-size: 16px;
    transition: all 0.3s ease;
    border: 1px solid #4cb8ff;
  }

  .form-control:focus {
    border-color: #ffbb00;
    box-shadow: 0 0 5px rgba(255, 187, 0, 0.5);
  }

  .btn-primary {
    background-color: #4cb8ff;
    border-color: #4cb8ff;
    color: white;
    border-radius: 50px;
    padding: 12px 24px;
    font-size: 16px;
    transition: all 0.3s ease;
  }

  .btn-primary:hover {
    background-color: #ffbb00;
    border-color: #ffbb00;
    transform: scale(1.05);
  }

  /* Dark Mode Styling */
  body.dark-mode {
    background: #121212;
    color: #e4e4e4;
  }

  .navbar.dark-mode {
    background: linear-gradient(to right, #343a40, #121212);
  }

  .navbar-nav .nav-link.dark-mode {
    color: #e4e4e4;
  }

  .navbar-nav .nav-link.dark-mode:hover {
    color: #ffbb00;
  }

  .card.dark-mode {
    background-color: #1e1e1e;
    color: #e4e4e4;
  }

  .card-header.dark-mode {
    background: linear-gradient(90deg, #4cb8ff, #343a40);
    color: #e4e4e4;
  }

  .form-control.dark-mode {
    background-color: #2c2f38;
    border-color: #4cb8ff;
    color: #e4e4e4;
  }

  .form-control.dark-mode:focus {
    border-color: #ffbb00;
    box-shadow: 0 0 5px rgba(255, 187, 0, 0.5);
  }

  .btn-primary.dark-mode {
    background-color: #4cb8ff;
    border-color: #4cb8ff;
    color: white;
  }

  .btn-primary.dark-mode:hover {
    background-color: #ffbb00;
    border-color: #ffbb00;
  }

  /* Main Image and Registration Section Styling */
  .hero-section {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
  }

  .hero-section .col-md-6 {
    flex: 1;
  }

  .hero-section .col-md-6 img {
    max-width: 100%;
    height: auto;
    animation: fadeIn 2s ease-out;
  }

  /* Dark Mode Button */
  .dark-mode-toggle {
    position: fixed;
    top: 10px;
    right: 10px;
    background-color: #4cb8ff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 25px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .dark-mode-toggle:hover {
    background-color: #ffbb00;
  }

  /* New Sections */
  .explore-careers, .resources, .contact-us {
    background-color: #f4f8ff;
    margin-top: 40px;
    padding: 30px;
    border-radius: 15px;
  }

  .explore-careers h2, .resources h2, .contact-us h2 {
    font-size: 28px;
    margin-bottom: 20px;
    color: #4cb8ff;
    text-align: center;
  }

  .explore-careers .card, .resources .card, .contact-us .card {
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
  }

  .explore-careers .card-header, .resources .card-header, .contact-us .card-header {
    background: linear-gradient(90deg, #4cb8ff, #ffffff);
    color: #2e3a59;
    text-align: center;
    font-size: 22px;
  }

  .explore-careers .card-body, .resources .card-body, .contact-us .card-body {
    padding: 15px;
    text-align: center;
  }

  @keyframes fadeIn {
    0% {
      opacity: 0;
      transform: translateY(50px);
    }
    100% {
      opacity: 1;
      transform: translateY(0);
    }
  }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-light">
  <ul class="navbar-nav ml-auto d-flex flex-row">
    <li class="nav-item"><a class="nav-link" href="signup.jsp"><i class="fa fa-user-plus"></i> Sign-Up</a></li>
    <li class="nav-item"><a class="nav-link" href="login.jsp"><i class="fa fa-user"></i> Sign-In</a></li>
    <li class="nav-item"><a class="nav-link" href="#" onclick="logout()"><i class="fa fa-sign-out"></i> Logout</a></li>
  </ul>
</nav>

<!-- Dark Mode Toggle Button -->
<button class="dark-mode-toggle" onclick="toggleDarkMode()">Dark Mode</button>

<!-- Hero Section (Student Registration on Left, Main Image on Right) -->
<div class="container hero-section">
  <div class="col-md-6">
    <div class="card">
      <div class="card-header text-center">
        <i class="fa fa-user-circle-o fa-2x"></i>
        <h5>Student Registration</h5>
      </div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label> 
            <input type="text" class="form-control" id="un" placeholder="Enter username">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label> 
            <input type="email" class="form-control" id="em" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label> 
            <input type="password" class="form-control" id="up" placeholder="Password">
          </div>
          <button type="submit" class="btn btn-primary btn-block badge-pill">Register</button>
        </form>
      </div>
    </div>
  </div>

  <div class="col-md-6 text-center">
    <img id="hero" src="images/main1.png" class="img-fluid rounded" alt="hero">
  </div>
</div>
<!-- Footer Section -->
	<footer style="background: linear-gradient(to bottom, #ffffff, #f9f9f9); padding: 40px 0;">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 text-center">
					<h5 style="color: #0056b3;">About DreamTrail</h5>
					<p style="font-size: 16px; color: #333; margin-top: 16px; text-align: left;">
						DreamTrail is a platform designed to help students achieve their goals by exploring career opportunities and pathways. Join us on your journey to success!
					</p>
				</div>
				<div class="col-md-3 text-md-right">
					<h5 style="color: #0056b3;">Quick Links</h5>
					<ul style="list-style: none; padding: 0; margin-top: 10px;">
						<li><a href="index.jsp" style="color: #0056b3; text-decoration: none;">Home</a></li>
						<li><a href="signup.jsp" style="color: #0056b3; text-decoration: none;">Sign-Up</a></li>
						<li><a href="login.jsp" style="color: #0056b3; text-decoration: none;">Sign-In</a></li>
						<li><a href="#about" style="color: #0056b3; text-decoration: none;">About Us</a></li>
					</ul>
				</div>
			</div>
		</div>

<script>
  function toggleDarkMode() {
    document.body.classList.toggle('dark-mode');
    document.querySelector('.navbar').classList.toggle('dark-mode');
    document.querySelector('.dark-mode-toggle').classList.toggle('dark-mode');
    document.querySelectorAll('.card').forEach(card => card.classList.toggle('dark-mode'));
    document.querySelectorAll('.form-control').forEach(control => control.classList.toggle('dark-mode'));
    document.querySelectorAll('.btn-primary').forEach(button => button.classList.toggle('dark-mode'));
  }
  

</script>
</body>
</html>
