<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Know More - DreamTrail</title>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- AOS for Scroll Animations -->
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
    
    <style>
        * {
            box-sizing: border-box;
        }
        
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8fbff;
            color: #333;
        }

        header {
            background-color: #26c6da;
            padding: 50px 20px;
            text-align: center;
            color: white;
        }

        header h1 {
            margin: 0;
            font-size: 2.8rem;
        }

        header p {
            font-size: 1.1rem;
            margin-top: 12px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 40px 20px;
        }

        .card {
            background: white;
            border: 2px solid #e0ecff;
            border-radius: 16px;
            width: 280px;
            margin: 20px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(38, 198, 218, 0.1);
            transition: all 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 14px 30px rgba(38, 198, 218, 0.2);
        }

        .icon {
            font-size: 40px;
            color: #26c6da;
        }

        .card h2 {
            color: #26c6da;
            margin: 15px 0 10px;
        }

        .card p {
            font-size: 0.95rem;
            color: #555;
        }

        .back-link {
            display: block;
            text-align: center;
            margin: 40px auto 20px;
            font-size: 1rem;
            font-weight: bold;
            color: #26c6da;
            text-decoration: none;
            transition: color 0.3s;
        }

        .back-link:hover {
            color: #0097a7;
        }

        .quiz-link {
            display: inline-block;
            margin-top: 25px;
            background-color: #26c6da;
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            text-decoration: none;
            font-weight: 600;
            transition: background-color 0.3s;
        }

        .quiz-link:hover {
            background-color: #0097a7;
        }

        @media (max-width: 768px) {
            .card {
                width: 90%;
            }

            header h1 {
                font-size: 2rem;
            }

            header p {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

<header data-aos="fade-down">
    <h1>Explore Your Career Path</h1>
    <p>Discover each stream and choose the one that fits your future</p>
</header>

<div class="container">
    <div class="card" data-aos="fade-up" data-aos-delay="100">
        <div class="icon"><i class="fas fa-user-md"></i></div>
        <h2>Medical</h2>
        <p>Careers in healthcare, medicine, and biotechnology. 
        Ideal for empathetic minds with a passion to heal and serve.</p>
        <a href="quiz.jsp?stream=medical" class="quiz-link">Take Medical Quiz</a>
    </div>

    <div class="card" data-aos="fade-up" data-aos-delay="200">
        <div class="icon"><i class="fas fa-cogs"></i></div>
        <h2>Non-Medical</h2>
        <p>Engineering, tech, architecture, and science streams. 
        For logical thinkers who love to build and innovate.</p>
        <a href="quiz.jsp?stream=nonmedical" class="quiz-link">Take Non-Medical Quiz</a>
    </div>

    <div class="card" data-aos="fade-up" data-aos-delay="300">
        <div class="icon"><i class="fas fa-chart-line"></i></div>
        <h2>Commerce</h2>
        <p>Business, finance, accounting, and entrepreneurship. Perfect for future CEOs and analytical thinkers.</p>
        <a href="quiz.jsp?stream=commerce" class="quiz-link">Take Commerce Quiz</a>
    </div>

    <div class="card" data-aos="fade-up" data-aos-delay="400">
        <div class="icon"><i class="fas fa-palette"></i></div>
        <h2>Arts</h2>
        <p>Creative fields in humanities, media, psychology, and design. Best for expressive and curious personalities.</p>
        <a href="quiz.jsp?stream=arts" class="quiz-link">Take Arts Quiz</a>
    </div>
</div>

<a class="back-link" href="NewFile.jsp#streams">← Back to Stream Selection</a>

<!-- AOS JS -->
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script>
    AOS.init({
        duration: 1000,
        once: true
    });
</script>

</body>
</html>
