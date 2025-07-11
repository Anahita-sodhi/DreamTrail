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
      padding: 15px 30px;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    .navbar-nav .nav-item {
      margin: 0 10px;
    }

    .navbar-nav .nav-link {
      color: #2e3a59;
      font-size: 18px;
      transition: color 0.3s ease;
    }

    .navbar-nav .nav-link:hover {
      color: #ffbb00;
    }

    .dark-mode-toggle {
      background-color: #4cb8ff;
      color: white;
      border: none;
      padding: 8px 16px;
      border-radius: 25px;
      font-size: 14px;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .dark-mode-toggle:hover {
      background-color: #ffbb00;
      transform: scale(1.05);
    }

    .card {
      border-radius: 15px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      background-color: white;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: translateY(10px);
      box-shadow: 0 0 50px rgba(0, 0, 0, 0.15);
    }

    .card-header {
      background: linear-gradient(90deg, #4cb8ff, #ffffff);
      color: #2e3a59;
      font-size: 22px;
      padding: 20px;
      border-radius: 10px 10px 0 0;
      text-transform: uppercase;
    }

    .form-control {
      border-radius: 10px;
      margin-bottom: 15px;
      padding: 15px;
      font-size: 16px;
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
      border-radius: 30px;
      padding: 12px 24px;
      font-size: 16px;
    }

    .btn-primary:hover {
      background-color: #ffbb00;
      border-color: #ffbb00;
      transform: scale(1.05);
    }

    body.dark-mode {
      background: #121212;
      color: #e4e4e4;
    }

    .navbar.dark-mode {
      background: linear-gradient(to left, #343a40, #121212);
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
    }

    .btn-primary.dark-mode:hover {
      background-color: #ffbb00;
      border-color: #ffbb00;
    }

    .hero-section {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      margin-top: 40px;
    }

    .hero-section .col-md-6 img {
      max-width: 100%;
      height: auto;
      animation: fadeIn 2s ease-out;
    }

    .chatbot-bubble {
      position: fixed;
      bottom: 90px;
      right: 20px;
      background: #4cb8ff;
      color: white;
      padding: 12px 20px;
      border-radius: 40px;
      box-shadow: 0 10px 20px rgba(0, 124, 240, 0.3);
      cursor: pointer;
      font-weight: 600;
      z-index: 999;
    }

    .chatbot-bubble:hover {
      transform: scale(1.05);
    }

    .quiz-launch {
      position: fixed;
      left: 20px;
      bottom: 20px;
      background: #4cb8ff;
      color: white;
      padding: 10px 18px;
      border-radius: 30px;
      font-weight: bold;
      cursor: pointer;
      box-shadow: 0 8px 20px rgba(0, 223, 216, 0.3);
    }

    @keyframes fadeIn {
      0% { opacity: 0; transform: translateY(50px); }
      100% { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>

<!-- Updated Navbar -->
<nav class="navbar navbar-light d-flex justify-content-between align-items-center">
  <div class="navbar-brand">
    <img src="images/logo.png" width="40" alt="DreamTrail">
  </div>
  <div class="d-flex align-items-center">
    <ul class="navbar-nav d-flex flex-row mb-0">
      <li class="nav-item mx-2">
        <a class="nav-link" href="signup.jsp"><i class="fa fa-user-plus"></i> Sign-Up</a>
      </li>
      <li class="nav-item mx-2">
        <a class="nav-link" href="login.jsp"><i class="fa fa-user"></i> Sign-In</a>
      </li>
    </ul>
    <button class="dark-mode-toggle ml-3" onclick="toggleDarkMode()">Dark Mode</button>
  </div>
</nav>

<div class="container hero-section">
  <div class="row w-100">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header text-center">
          <i class="fa fa-user-circle-o fa-2x"></i>
          <h5>Student Registration</h5>
        </div>
        <div class="card-body">
          <form action="DBConnectionServlet" method="post">
            <div class="form-group">
              <label for="un">Username</label>
              <input type="text" class="form-control" id="un" name="username" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label for="em">Email address</label>
              <input type="email" class="form-control" id="em" name="email" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="up">Password</label>
              <input type="password" class="form-control" name="password" id="up" placeholder="Password">
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
</div>

<div class="chatbot-bubble">
  <a href="chat.jsp" style="color: white; text-decoration: none;">Chat with us</a>
</div>

<div class="quiz-launch">
  <a href="quiz.jsp" style="color: white; text-decoration: none;">Take the Quiz</a>
</div>

<footer class="mt-5 p-4 bg-light text-center">
  <div class="container">
    <h5>About DreamTrail</h5>
    <p>DreamTrail helps students explore and achieve their career goals with guided resources and opportunities.</p>
    <div>
      <a href="index.jsp">Home</a> | 
      <a href="signup.jsp">Sign-Up</a> | 
      <a href="login.jsp">Sign-In</a> | 
      <a href="#about">About Us</a>
    </div>
  </div>
</footer>

<script>
  function toggleDarkMode() {
    document.body.classList.toggle('dark-mode');
    document.querySelector('.navbar').classList.toggle('dark-mode');
    document.querySelectorAll('.card').forEach(el => el.classList.toggle('dark-mode'));
    document.querySelectorAll('.form-control').forEach(el => el.classList.toggle('dark-mode'));
    document.querySelectorAll('.btn-primary').forEach(el => el.classList.toggle('dark-mode'));
  }
</script>

</body>
</html>
