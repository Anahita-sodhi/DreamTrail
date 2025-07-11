<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DreamTrail - Arts Portal</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            overflow-x: hidden;
            transition: background 0.5s ease, color 0.5s ease;
        }

        .wave-container {
            position: relative;
            background: linear-gradient(to bottom, #ffffff, #c0e8ff, #80caff);
            height: 100vh;
            overflow: hidden;
            transition: background 0.5s ease;
        }

        body.dark .wave-container {
            background: linear-gradient(to bottom, #1a1a2e, #16213e, #0f3460);
        }

        .wave {
            position: absolute;
            width: 200%;
            height: 100%;
            top: 0;
            left: 0;
            animation: waveMove 10s infinite linear;
            z-index: 0;
        }

        @keyframes waveMove {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }

        .content {
            position: relative;
            z-index: 1;
            padding-top: 100px;
            text-align: center;
            color: #333;
        }

        body.dark .content {
            color: #eee;
        }

        h1 {
            font-size: 2em;
            font-weight: bold;
        }

        .card-container {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            margin-top: 40px;
            padding: 0 20px;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 250px;
            max-width: 300px;
            text-align: center;
            transition: transform 0.3s, background 0.5s ease, color 0.5s ease;
            flex: 1 1 calc(33.33% - 60px);
        }

        body.dark .card {
            background: #1f1f2f;
            color: #eee;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card img {
            height: 60px;
            margin-bottom: 15px;
        }

        .card h3 {
            color: #00aaff;
            margin-bottom: 10px;
        }

        body.dark .card h3 {
            color: #80d0ff;
        }

        .card p {
            color: #555;
            font-size: 0.9em;
        }

        body.dark .card p {
            color: #ccc;
        }

        .card button {
            margin-top: 15px;
            padding: 10px 20px;
            background: #00aaff;
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-weight: bold;
        }

        .card button:hover {
            background: #007bbd;
        }

        .dark-mode-toggle {
            position: absolute;
            top: 20px;
            right: 20px;
            z-index: 2;
        }

        .dark-mode-toggle button {
            padding: 8px 15px;
            border-radius: 20px;
            border: none;
            background: #222;
            color: #fff;
            cursor: pointer;
            font-size: 0.85em;
        }

        body.dark .dark-mode-toggle button {
            background: #eee;
            color: #222;
        }

        @media (max-width: 900px) {
            .card {
                flex: 1 1 100%;
            }
        }
    </style>
</head>
<body>

<div class="wave-container">

    <!-- Animated Wave SVG -->
    <svg class="wave" viewBox="0 0 1440 320" preserveAspectRatio="none">
        <path fill="#ffffff" fill-opacity="0.3"
              d="M0,64L48,96C96,128,192,192,288,218.7C384,245,480,235,576,213.3C672,192,768,160,864,133.3C960,107,1056,85,1152,85.3C1248,85,1344,107,1392,117.3L1440,128L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z">
        </path>
    </svg>

    <!-- Dark Mode Toggle -->
    <div class="dark-mode-toggle">
        <button onclick="toggleDarkMode()">Dark Mode</button>
    </div>

    <!-- Page Content -->
    <div class="content">
        <h1>Arts Portal</h1>

        <div class="card-container">
            <div class="card">
                <img src="https://cdn-icons-png.flaticon.com/512/1995/1995574.png" alt="Role-Based Jobs" />
                <h3>Role-Based Jobs</h3>
                <p>Explore jobs tailored to your preferred roles and industries.</p>
                <a href="artsrole.jsp">
                    <button>Explore More</button>
                </a>
            </div>

            <div class="card">
                <img src="images/course.png" alt="Course-Based" />
                <h3>Course-Based</h3>
                <p>Discover opportunities linked to the courses you have completed.</p>
                <a href="artscourse.jsp">
                    <button>Explore More</button>
                </a>
            </div>

            <div class="card">
                <img src="images/company.png" alt="Company-Based" />
                <h3>Company-Based</h3>
                <p>Find job openings at companies you aspire to work for.</p>
                <a href="artscompany.jsp">
                    <button>Explore More</button>
                </a>
            </div>
        </div>
    </div>
</div>

<script>
    function toggleDarkMode() {
        document.body.classList.toggle("dark");
        const btn = document.querySelector(".dark-mode-toggle button");
        btn.textContent = document.body.classList.contains("dark") ? "Light Mode" : "Dark Mode";
    }
</script>

</body>
</html>
