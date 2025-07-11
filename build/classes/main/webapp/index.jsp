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
      --dark-bg: #1f1f1f;
      --light-bg: #ffffff;
    }
    body {
      margin: 0;
      font-family: 'Outfit', sans-serif;
      background: var(--light-bg);
      transition: background 0.3s, color 0.3s;
      overflow-x: hidden;
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
      transition: background 0.3s;
      padding: 12px 30px;
    }
    body.dark-mode .navbar {
      background-color: rgba(0, 0, 0, 0.3) !important;
    }
    .nav-link {
      color: #444;
      font-weight: 500;
      margin: 0 10px;
      transition: color 0.3s;
    }
    .nav-link:hover, .nav-link.active {
      color: var(--secondary);
    }
    body.dark-mode .nav-link {
      color: #ddd;
    }
    .text-gradient {
      background: linear-gradient(to right, var(--secondary), var(--primary));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
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
    .hero {
      padding: 100px 20px 40px;
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
      gap: 50px;
      max-width: 1200px;
      margin: auto;
    }
    .hero h1 {
      font-size: 3rem;
      font-weight: 700;
      background: linear-gradient(to right, var(--secondary), var(--primary));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
    .typing-text {
      font-size: 1.5rem;
      margin-top: 15px;
      color: #666;
    }
    .hero img {
      width: 400px;
      max-width: 100%;
      border-radius: 30px;
      animation: float 6s ease-in-out infinite;
    }
    @keyframes float {
      0%, 100% { transform: translateY(0); }
      50% { transform: translateY(-10px); }
    }
    .content {
      max-width: 600px;
    }
    .btn-cta {
      display: inline-block;
      margin-top: 20px;
      padding: 12px 24px;
      background:  linear-gradient(to right, var(--secondary), var(--primary));
      border: none;
      color: white;
      font-weight: bold;
      border-radius: 30px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.2);
      transition: transform 0.2s ease;
      text-decoration: none;
    }
    .btn-cta:hover {
      transform: scale(1.05);
    }
    .card-row {
  display: flex;
  justify-content: center;
  align-items: flex-start;
  flex-wrap: wrap; /* Allows wrap on smaller screens */
  gap: 2rem;
  margin-top: 2rem;
}
   .real-book-card {
      perspective: 1200px;
      text-decoration: none;
      margin: 1.5rem;
    }

    .book-3d {
      width: 200px;
      height: 280px;
      position: relative;
      transform-style: preserve-3d;
      transition: transform 1s ease;
    }

    .book-front {
      position: absolute;
      width: 100%;
      height: 100%;
      transform-origin: left center;
      transform-style: preserve-3d;
      z-index: 3;
      transition: transform 1s ease;
    }

    .book-cover {
      background: #e0f7fa;
      border-radius: 10px;
      box-shadow: 0 15px 25px rgba(0,0,0,0.2);
      height: 100%;
      width: 100%;
      padding: 1rem;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }

    .book-cover img {
      width: 70px;
      height: auto;
      margin-bottom: 1rem;
    }

    .book-cover h4 {
      font-size: 1.2rem;
      color: #0288d1;
      margin: 0.5rem 0;
    }

    .book-cover p {
      font-size: 0.9rem;
      color: #004d61;
      text-align: center;
    }

    .book-side {
      position: absolute;
      width: 20px;
      height: 100%;
      background: #b3e5fc;
      left: -20px;
      top: 0;
      transform: rotateY(90deg);
      transform-origin: left;
      border-radius: 3px;
      z-index: 1;
    }

    .book-pages {
      position: absolute;
      width: 100%;
      height: 100%;
      background: linear-gradient(90deg, #e0f7fa 0%, #b2ebf2 100%);
      left: 0;
      top: 0;
      transform: translateX(-5px);
      border-radius: 10px;
      z-index: 0;
    }


    .team-card:hover {
	transform: translateY(-10px);
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.12);
}
    
    .chatbot-bubble {
      position: fixed;
      bottom: 90px;
      right: 20px;
      background: var(--secondary);
      color: white;
      padding: 12px 20px;
      border-radius: 40px;
      box-shadow: 0 10px 20px rgba(0, 124, 240, 0.3);
      cursor: pointer;
      font-weight: 600;
      z-index: 999;
      transition: all 0.3s;
    }
    .chatbot-bubble:hover {
      transform: scale(1.05);
    }
    footer {
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(10px);
      padding: 30px;
      text-align: center;
      color: #888;
      font-size: 14px;
      margin-top: 60px;
    }
    footer a {
      color: var(--secondary);
      margin: 0 10px;
      text-decoration: none;
    }
    .quiz-launch {
      position: fixed;
      left: 20px;
      bottom: 20px;
      background: var(--primary);
      color: white;
      padding: 10px 18px;
      border-radius: 30px;
      font-weight: bold;
      cursor: pointer;
      box-shadow: 0 8px 20px rgba(0, 223, 216, 0.3);
    }
    .blob-bg {
      position: absolute;
      z-index: -1;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      overflow: hidden;
    }
    .blob-bg svg {
      position: absolute;
      top: -150px;
      right: -150px;
      opacity: 0.2;
    }
    @media (max-width: 768px) {
      .hero {
        flex-direction: column-reverse;
        text-align: center;
        gap: 30px;
      }
      .hero img {
        width: 90%;
      }
      .toggle-dark {
        top: 15px;
        right: 15px;
      }
    }
    .about-us-unique {
    margin-top: 80px;
  background: linear-gradient(160deg, #f8fbff, #eef5ff);
  padding: 60px 20px;
  font-family: 'Georgia', serif;
  color: #2c2c2c;
  line-height: 1.8;
}


body.dark-mode .about-us-unique {
  background: linear-gradient(160deg, #121212, #1e1e1e);
  color: #e0e0e0;
}

.unique-text p {
  margin-bottom: 24px;
  font-size: 1.1rem;
  font-weight: 400;
  transition: all 0.3s ease;
}
    .real-book-card:hover .book-front {
  transform: rotateY(-160deg); /* example animation */
}
    .real-book-card:hover {
  transform: scale(1.03);
}
  .book-section {
  display: flex;
  justify-content: center;
  padding: 2rem;
}

.book {
  width: 200px;
  height: 250px;
  background-color: #f0f0f0;
  border-radius: 12px;
  box-shadow: 0 4px 10px rgba(0,0,0,0.1);
  position: relative;
  overflow: hidden;
  cursor: pointer;
  transition: background-color 0.4s ease;
}

.book.open {
  background-color: white;
}

.book-cover {
  font-size: 4rem;
  text-align: center;
  padding-top: 60px;
  color: #3b82f6;
  transition: transform 0.4s ease;
}

.book.open .book-cover {
  transform: scale(0);
}

.book-info {
  padding: 1rem;
  text-align: center;
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.4s ease, transform 0.4s ease;
}

.book.open .book-info {
  opacity: 1;
  transform: translateY(0);
}

.explore-btn {
  margin-top: 1rem;
  padding: 0.6rem 1.2rem;
  background-color: #3b82f6;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s;
}
.card-row {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
  justify-content: center;
  padding: 2rem;
}

.real-book-card {
  position: relative;
  width: 200px;
  height: 280px;
  perspective: 1000px;
  cursor: pointer;
}

.book-3d {
  width: 100%;
  height: 100%;
  position: relative;
  transition: transform 0.6s ease;
  transform-style: preserve-3d;
}

.book-cover-front, .book-cover-inside {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
  border-radius: 12px;
  padding: 1rem;
  box-shadow: 0 6px 18px rgba(0,0,0,0.1);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
}

.book-cover-front {
  background: #e0f2ff;
  z-index: 2;
  transform: rotateY(0deg);
}

.book-cover-front img {
  width: 80px;
  height: 80px;
  margin-bottom: 10px;
}

.book-cover-front h4 {
  margin: 0.5rem 0 0.2rem;
  font-size: 1.1rem;
  color: #1e3a8a;
}

.book-cover-front p {
  font-size: 0.85rem;
  color: #334155;
}

.book-cover-inside {
  background: white;
  transform: rotateY(180deg);
  z-index: 1;
}

.book-cover-inside h3 {
  margin-bottom: 0.5rem;
  font-size: 1.2rem;
  color: #111827;
}

.book-cover-inside p {
  font-size: 0.9rem;
  color: #374151;
  margin-bottom: 1rem;
  padding: 0 0.5rem;
}

.explore-btn {
  background-color: #3b82f6;
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 8px;
  border: none;
  cursor: pointer;
  font-weight: 500;
  transition: background-color 0.3s ease;
}

.explore-btn:hover {
  background-color: #2563eb;
}

.real-book-card.open .book-3d {
  transform: rotateY(180deg);
}
  
  </style>
</head>

<body>
  <button class="toggle-dark" onclick="toggleDarkMode()">Mode</button>
  <nav class="navbar navbar-expand-lg bg-transparent">
    <div class="container-fluid">
      <a class="navbar-brand fw-bold fs-4 text-gradient" href="index.jsp">DreamTrail</a>
      <button class="navbar-toggler text-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav me-3">
         
          <li class="nav-item mx-2"><a class="su"
				class="nav-link signup-link " href="signup.jsp"> <i
					class="fa fa-user-plus"></i> Sign-Up
			</a></li>
       <li class="nav-item mx-2"><a class="su"
				class="nav-link signup-link su" href="login.jsp"> <i
					class="fa fa-user"></i> Sign-In
			</a></li>
			<li class="nav-item mx-2"><a class="logout"
				class="nav-link logout-link" href="#" onclick="logout()"> <i
					class="fa fa-sign-out"></i> Logout
			</a></li>
			<li class="nav-item mx-2"><a class="su"
				class="nav-link signup-link " href="quiz.jsp"> <i
					class="fa fa-question-circle"></i> Quiz
			</a></li>
		
			
              </ul>
      </div>
    </div>
  </nav>
  <div class="blob-bg">
    <svg viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
      <g transform="translate(300,300)">
        <path d="M120,-167.9C150.7,-138.3,165.1,-94.8,179.3,-50.2C193.4,-5.7,207.3,39.9,193.9,80.3C180.5,120.7,139.8,155.8,95.6,176.9C51.4,197.9,3.7,204.9,-42.3,200.6C-88.3,196.3,-132.6,180.6,-153.3,146.7C-174,112.9,-171,60.8,-173.5,7.2C-176,-46.4,-184.1,-101.3,-160.2,-138.6C-136.4,-175.9,-80.6,-195.6,-30.5,-188.2C19.7,-180.9,79.3,-146.3,120,-167.9Z" fill="#00dfd8" />
      </g>
    </svg>
  </div>
  <div class="hero" data-aos="fade-up">
    <div class="content">
      <h1>Find Your Perfect Career Stream</h1>
      <div class="typing-text" id="typing"></div>
      <p class="mt-3">DreamTrail is the ultimate guide to explore, choose and thrive in your dream career path. Designed for modern students, with clarity, simplicity, and style.</p>
     <a href="KnowMore.jsp" class="btn-cta">Know More</a>
     </div>
    <img src="images/main1.png" alt="Confident Student">
  </div>



 <div class="card-row"> 
<!-- Medical -->
<a href="Medical.jsp" class="real-book-card">
  <div class="book-3d">
    <div class="book-front">
      <div class="book-cover">
        <img src="images/download.png" alt="Medical">
        <h4>Medical</h4>
        <p>Pathways to healthcare & medicine</p>
      </div>
    </div>
    <div class="book-side"></div>
    <div class="book-pages"></div>
  </div>
 
</a>

<!-- Non-Medical -->
<a href="Non-Medical.jsp" class="real-book-card">
  <div class="book-3d">
    <div class="book-front">
      <div class="book-cover">
        <img src="images/engineers.png" alt="Non-Medical">
        <h4>Non-Medical</h4>
        <p>Engineering, science & tech fields</p>
      </div>
    </div>
    <div class="book-side"></div>
    <div class="book-pages"></div>
  </div>
</a>

<!-- Commerce -->
<a href="commerce.jsp" class="real-book-card">
  <div class="book-3d">
    <div class="book-front">
      <div class="book-cover">
        <img src="images/commerce.png" alt="Commerce">
        <h4>Commerce</h4>
        <p>Business, finance & entrepreneurship</p>
      </div>
    </div>
    <div class="book-side"></div>
    <div class="book-pages"></div>
  </div>
</a>

<!-- Arts -->
<a href="Arts.jsp" class="real-book-card">
  <div class="book-3d">
    <div class="book-front">
      <div class="book-cover">
        <img src="images/arts.png" alt="Arts">
        <h4>Arts</h4>
        <p>Creative careers in humanities & design</p>
      </div>
    </div>
    <div class="book-side"></div>
    <div class="book-pages"></div>
   
  </div>
</a>
</div>
 

 <!-- Chatbot Bubble -->
<div class="chatbot-bubble">
  <a href="chat.jsp" style="color: white; text-decoration: none;">Chat with us</a>
</div>

<!-- The Quiz Button -->
<div class="quiz-launch">
  <a href="quiz.jsp" style="color: white; text-decoration: none;">Take the Quiz</a>
</div>

<!--   <section class="about-us-unique" id="about" data-aos="fade-up">
  <div class="container py-5 text-center">
      <h2 class="text-gradient mb-4">The Dream Behind DreamTrail</h2>
    </p>
    </p>
    </p>
    
    <div class="unique-text mx-auto" style="max-width: 900px;">
   <img id="about-img" src="images/about1.gif" class="img-fluid rounded"
     alt="About Us" style="max-width: 100%; height: auto; transform: scale(1.05); transition: transform 0.3s ease;">

      </p>
        There's a moment in every student's life. A pause between what is and what could be.
        It's filled with questions, uncertainties, hopes not yet spoken out loud. At DreamTrail, we live in that moment.
        We are not here to tell you who to become. We're here to hand you the compass, light the map, and whisper 
        that the path you choose is yours to define.
       DreamTrail was built not in a boardroom, but from real conversations with real students. From the quiet wonder
        of a teenager searching for purpose, to the fire in a mind ready to break limits.
        This isn't a website. It's a trailhead. A place where possibilities unfold, where your curiosity leads, and
        your future begins to take shape.
        You don't need to have it all figured out. You just need to take the first step. DreamTrail is here not to 
        give you answers, but to help you ask the right questions.
      </p>
    </div>
  </div>
</section>-->
<!-- sample -->
<!-- Modern About Section -->
<section style="padding: 60px 20px; background: linear-gradient(to bottom, #f0f8ff, #ffffff); text-align: center;">
  <div style="max-width: 800px; margin: 0 auto; background: #ffffff; border-radius: 20px; box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1); padding: 40px;">
    <h2 style="font-size: 2rem; color: #00aaff; margin-bottom: 20px; font-weight: bold;">The Dream Behind DreamTrail</h2>
    <img src="images/choose-career.png" alt="Choose your best career" style="width: 150px; border-radius: 10px; margin-bottom: 20px;">
    <p style="font-size: 1.1rem; line-height: 1.8; color: #333;">
      There's a moment in every student's life. A pause between what is and what could be.
      It's filled with questions, uncertainties, hopes not yet spoken out loud.
      <br><br>
      At <strong>DreamTrail</strong>, we live in that moment. We are not here to tell you who to become, we are here to hand you the compass, light the map, and whisper that the path you choose is yours to define.
      <br><br>
      DreamTrail was built from real conversations with real students  from the quiet wonder of a teenager searching for purpose, to the fire in a mind ready to break limits. This is not a website. Its a trailhead.
      <br><br>
      You dont need to have it all figured out. You just need to take the first step.
      <strong>DreamTrail is here to help you ask the right questions.</strong>
    </p>
  </div>
</section>

<!-- Our Team Section -->
<section id="our-team" style="padding: 60px 0; background: linear-gradient(to right, #fdfbfb, #ebedee); font-family: 'Poppins', sans-serif;">
	<style>
		.team-card {
			border-radius: 0;
			overflow: hidden;
			background: #fff;
			box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
			transition: transform 0.3s ease, box-shadow 0.3s ease;
		}
		.team-card:hover {
			transform: translateY(-10px) scale(1.02);
			box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
		}
		.team-card img {
			width: 100%;
			height: 260px;
			object-fit: cover;
			border-bottom: 1px solid #eee;
		}
		.team-card h5 {
			margin-top: 10px;
			font-weight: 600;
			color: #333;
		}
		.team-card .social-icons a {
			color: #0077b5;
			margin: 0 8px;
			font-size: 18px;
			transition: color 0.2s;
		}
		.team-card .social-icons a:hover {
			color: #005582;
		}
	</style>

	<div class="container">
		<h2 class="text-center mb-5" style="font-weight: 700; color: #222;"> Meet Our Team</h2>
		<div class="row justify-content-center">

			<!-- Team Member 1 -->
			<div class="col-lg-3 col-md-6 col-sm-6 mb-4">
				<div class="team-card text-center">
					<img src="images/demo.jpg" alt="Anahita Sodhi">
					<div class="p-3">
						<h5>Anahita Sodhi</h5>
						<p class="text-muted small">Passionate about education and technology.</p>
						<div class="social-icons">
							<a href="#"><i class="fab fa-linkedin"></i></a>
							<a href="#"><i class="fab fa-github"></i></a>
						</div>
					</div>
				</div>
			</div>

			<!-- Team Member 2 -->
			<div class="col-lg-3 col-md-6 col-sm-6 mb-4">
				<div class="team-card text-center">
					<img src="images/rad2.jpg" alt="Radhika Sharma">
					<div class="p-3">
						<h5>Radhika Sharma</h5>
						<p class="text-muted small">Enthusiastic about merging innovation with learning.</p>
						<div class="social-icons">
							<a href="#"><i class="fab fa-linkedin"></i></a>
							<a href="#"><i class="fab fa-github"></i></a>
						</div>
					</div>
				</div>
			</div>

			<!-- Team Member 3 -->
			<div class="col-lg-3 col-md-6 col-sm-6 mb-4">
				<div class="team-card text-center">
					<img src="images/isha.jpg" alt="Isha">
					<div class="p-3">
						<h5>Isha</h5>
						<p class="text-muted small">Innovating the future of education through tech and creativity.</p>
						<div class="social-icons">
							<a href="#"><i class="fab fa-linkedin"></i></a>
							<a href="#"><i class="fab fa-github"></i></a>
						</div>
					</div>
				</div>
			</div>

			<!-- You can add more team members here -->

		</div>
	</div>
</section>

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
  
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <script>
  // Disable any hover effect before navigation
  document.querySelectorAll('.real-book-card').forEach(card => {
    card.addEventListener('click', (e) => {
      // Immediately remove hover effects if any
      card.querySelector('.book-3d').style.transition = 'none';
      card.querySelector('.book-front').style.transform = 'none';
    });
  });
</script>
  
  <script>
  
    AOS.init();
    function toggleDarkMode() {
      document.body.classList.toggle('dark-mode');
    }
    const typingEl = document.getElementById("typing");
    const texts = ["Discover. Decide. Dream.", "Explore Streams That Fit You.", "Turn Passion Into Profession."];
    let i = 0, j = 0, currentText = "", isDeleting = false;
    function typeEffect() {
      if (i < texts.length) {
        if (!isDeleting && j <= texts[i].length) {
          currentText = texts[i].substring(0, j++);
        } else if (isDeleting && j >= 0) {
          currentText = texts[i].substring(0, j--);
        }
        typingEl.innerHTML = currentText;
        if (j === texts[i].length) isDeleting = true;
        if (j === 0 && isDeleting) { isDeleting = false; i = (i + 1) % texts.length; }
      }
      setTimeout(typeEffect, isDeleting ? 60 : 120);
    }
    typeEffect();
    VanillaTilt.init(document.querySelectorAll(".stream-card"), {
      max: 15,
      speed: 400,
      glare: true,
      "max-glare": 0.2,
    });
    </script>
    
  <script>
  document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.real-book-card').forEach(book => {
      book.addEventListener('click', function (e) {
        e.preventDefault();
        const front = this.querySelector('.book-front');
        front.style.transform = 'rotateY(-160deg)';
        setTimeout(() => {
          window.location.href = this.href;
        }, 1000); // match the transition time
      });
    });
  });
</script>

    <script>
function openBook(element) {
  element.classList.toggle('open');
}
</script>
    </body>
    </html>