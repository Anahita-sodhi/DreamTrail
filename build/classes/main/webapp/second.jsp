<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>DreamTrail</title>

  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

  <style>
    :root {
      --primary: #00dfd8;
      --secondary: #007cf0;
      --dark-bg: #1f1f1f;
      --light-bg: #ffffff;
    }

    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: var(--light-bg);
      color: #333;
      transition: background 0.3s, color 0.3s;
    }

    body.dark-mode {
      background: var(--dark-bg);
      color: white;
    }

    .navbar {
      backdrop-filter: blur(10px);
      background-color: rgba(255, 255, 255, 0.05) !important;
      position: sticky;
      top: 0;
      width: 100%;
      z-index: 1000;
      padding: 12px 30px;
    }

    .text-gradient {
      background: linear-gradient(to right, var(--secondary), var(--primary));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .nav-link {
      color: #444;
      font-weight: 500;
      margin: 0 10px;
      transition: color 0.3s;
    }

    .nav-link:hover,
    .nav-link.active {
      color: var(--secondary);
    }

    .toggle-dark {
      position: fixed;
      right: 10px;
      top: 15px;
      background: linear-gradient(to right, var(--secondary), var(--primary));
      border: none;
      border-radius: 50%;
      width: 50px;
      height: 40px;
      color: white;
      cursor: pointer;
      z-index: 1100;
    }

    .welcome-container {
      max-width: 900px;
      margin: 50px auto;
      background: #fff;
      border-radius: 20px;
      box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 30px;
      flex-wrap: wrap;
      gap: 30px;
    }

    body.dark-mode .welcome-container {
      background: #2b2b2b;
    }

    .welcome-text {
      text-align: center;
      flex: 1;
      min-width: 280px;
    }

    .welcome-text h1 {
      font-size: 24px;
      font-weight: 600;
    }

    .btn-group button {
      background: linear-gradient(to right, #c6f9f9, #daecff, #ffddf0);
      color: black;
      border: none;
      border-radius: 25px;
      padding: 10px 25px;
      margin: 5px;
      font-size: 16px;
      font-weight: 500;
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .btn-group button:hover {
      background: linear-gradient(to right, #c9f4ff, #efe4ff, #ffcfe0);
      transform: translateY(-2px);
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
    }

    .image-box img {
      width: 180px;
      max-width: 100%;
    }

    @media (max-width: 768px) {
      .welcome-container {
        flex-direction: column;
        text-align: center;
      }
    }
  </style>
</head>
<body>
  <button class="toggle-dark" onclick="toggleDarkMode()">Mode</button>

  <nav class="navbar navbar-expand-lg bg-transparent">
    <div class="container-fluid">
      <a class="navbar-brand fw-bold fs-4 text-gradient" href="index.jsp">DreamTrail</a>
      <div class="collapse navbar-collapse justify-content-end">
        <ul class="navbar-nav me-3">
          <li class="nav-item mx-2"><a class="nav-link" href="index.jsp"><i class="fa fa-user-plus"></i> Sign-Up</a></li>
          <li class="nav-item mx-2"><a class="nav-link" href="login.jsp"><i class="fa fa-user"></i> Sign-In</a></li>
          <li class="nav-item mx-2"><a class="nav-link" href="#"><i class="fa fa-sign-out"></i> Logout</a></li>
          <li class="nav-item mx-2"><a class="nav-link" href="quiz.jsp"><i class="fa fa-question-circle"></i> Quiz</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="welcome-container" data-aos="fade-up">
    <div class="image-box">
      <img src="images/welcome.gif" alt="Welcome">
    </div>
    <div class="welcome-text">
      <h1>Welcome, <%=username%>!</h1>
      <p class="mb-3">Choose your stream to explore the roadmap tailored for your success.</p>
      <div class="btn-group">
        <form action="Non-Medical.jsp" method="get" style="display:inline;"><button type="submit"><i class="fas fa-atom"></i> Non-Medical</button></form>
        <form action="Medical.jsp" method="get" style="display:inline;"><button type="submit"><i class="fas fa-user-md"></i> Medical</button></form>
        <form action="Arts.jsp" method="get" style="display:inline;"><button type="submit"><i class="fas fa-paint-brush"></i> Arts</button></form>
        <form action="commerce.jsp" method="get" style="display:inline;"><button type="submit"><i class="fas fa-chart-line"></i> Commerce</button></form>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script>
    AOS.init();

    function toggleDarkMode() {
      document.body.classList.toggle('dark-mode');
    }
  </script>
</body>
</html>
