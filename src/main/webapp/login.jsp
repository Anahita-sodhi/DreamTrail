<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>DreamTrail</title>
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.0/vanilla-tilt.min.js"></script>

  <style>
    :root {
      --primary: #00dfd8;
      --secondary: #007cf0;
    }

    body {
      margin: 0;
      font-family: 'Outfit', sans-serif;
      background: #f4f9ff;
    }

    .navbar {
      background-color: #fff;
      padding: 12px 30px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    }

    .nav-link {
      color: #333;
      font-weight: 500;
    }

    .nav-link:hover, .nav-link.active {
      color: var(--secondary);
    }

    .hero img {
      width: 100%;
      max-width: 400px;
      animation: float 6s ease-in-out infinite;
    }

    @keyframes float {
      0%, 100% { transform: translateY(0); }
      50% { transform: translateY(-10px); }
    }

    .card {
      border-radius: 20px;
      background: #ffffff;
      box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
      margin: 40px 0;
      border: 2px solid #b3e5fc;
    }

    #chead {
      background-color: #e1f5fe;
      color: #0077c2;
      padding: 20px;
      font-weight: bold;
      text-align: center;
      border-bottom: 1px solid #b3e5fc;
    }

    .btn-primary {
      background-color: #4fc3f7;
      border: none;
    }

    .btn-primary:hover {
      background-color: #03a9f4;
    }

    footer {
      background: #eef7ff;
      padding: 40px 0;
      text-align: center;
      font-size: 14px;
      color: #555;
    }

    .chatbot-bubble, .quiz-launch {
      position: fixed;
      bottom: 90px;
      right: 20px;
      background: var(--secondary);
      color: white;
      padding: 12px 20px;
      border-radius: 40px;
      box-shadow: 0 10px 20px rgba(0, 124, 240, 0.3);
      font-weight: 600;
      cursor: pointer;
      z-index: 999;
    }

    .quiz-launch {
      right: auto;
      left: 20px;
      background: var(--primary);
    }
  </style>
</head>

<body>

  <nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
      <a class="navbar-brand fw-bold fs-4 text-gradient" href="#">DreamTrail</a>
      <div class="collapse navbar-collapse justify-content-end">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"><a class="nav-link" href="signup.jsp"><i class="fa fa-user-plus"></i> Sign-Up</a></li>
          <li class="nav-item mx-2"><a class="nav-link" href="login.jsp"><i class="fa fa-user"></i> Sign-In</a></li>
          <li class="nav-item mx-2"><a class="nav-link" href="quiz.jsp"><i class="fa fa-question-circle"></i> Quiz</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container mt-0">
    <div class="row align-items-center justify-content-center">
      
      <!-- Login Form -->
      <div class="col-md-6">
        <div class="card">
          <div id="chead">
            <i class="fa fa-user-circle fa-2x me-2"></i> Student Login
          </div>
          <div class="card-body">
            <% 
              String error = (String) request.getAttribute("error");
              if (error != null && !error.isEmpty()) {
            %>
                <div class="alert alert-danger"><%= error %></div>
            <% 
              }
            %>
            <form action="LoginServlet" method="post">
              <div class="mb-3">
                <label for="un" class="form-label">Username</label>
                <input type="text" class="form-control" id="un" name="username" placeholder="Enter username" required>
              </div>
              <div class="mb-3">
                <label for="up" class="form-label">Password</label>
                <input type="password" class="form-control" id="up" name="password" placeholder="Password" required>
              </div>
              <button type="submit" class="btn btn-primary w-100">Login</button>
            </form>
          </div>
        </div>
      </div>

      <!-- Hero Image -->
      <div class="col-md-6 text-center">
        <img src="images/main1.png" alt="hero" class="img-fluid">
      </div>
    </div>
  </div>

  <div class="chatbot-bubble">
    <a href="chat.jsp" style="color: white; text-decoration: none;">Chat with us</a>
  </div>

  <div class="quiz-launch">
    <a href="quiz.jsp" style="color: white; text-decoration: none;">Take the Quiz</a>
  </div>

  <footer>
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

  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
