<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Opportunities - DreamTrail</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }
        .dark-mode {
            background-color: #1e1e1e;
            color: #eee;
        }
        .container {
            max-width: 1100px;
            margin: 100px auto 50px;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.5rem;
        }
        .search-bar {
            text-align: center;
            margin-bottom: 30px;
        }
        .search-bar input {
            padding: 10px 15px;
            width: 300px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 25px;
        }
       .card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center; /* <-- Center cards instead of space-between */
    margin-top: 20px;
}

        .job-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: transform 0.3s ease;
            cursor: pointer;
            width: 250px;
        }
        .job-card:hover {
            transform: translateY(-5px);
        }
        .dark-mode .job-card {
            background-color: #2c2c2c;
            color: #fff;
        }
        .icon-container {
            font-size: 50px;
            color: #007bff;
            margin-bottom: 15px;
            text-align: center;
        }
        .job-card h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
            text-align: center;
        }
        .job-card ul {
            list-style: none;
            padding-left: 0;
        }
        .job-card li {
            padding: 6px 0;
            color: #555;
            cursor: pointer;
            text-align: center;
        }
        .job-card li:hover {
            text-decoration: underline;
            color: #007bff;
        }
        .dark-toggle {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1000;
            background: #007bff;
            color: white;
            border: none;
            padding: 10px 14px;
            border-radius: 30px;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        #overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 998;
            display: none;
        }
        .popup {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            z-index: 999;
            max-width: 500px;
            width: 90%;
            display: none;
        }
        .popup .close-btn {
            margin-top: 20px;
            text-align: right;
        }
        .popup button {
            padding: 8px 14px;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 6px;
            cursor: pointer;
        }
        .dark-mode .popup {
            background-color: #333;
            color: white;
        }
        @media (max-width: 768px) {
            .search-bar input {
                width: 90%;
            }
            .job-card {
                width: 100%;
            }
        }
    </style>
</head>

<body>

    <!-- Dark Mode Toggle -->
    <button class="dark-toggle" onclick="toggleDarkMode()">
        <i class="fas fa-moon"></i>
    </button>

    <div class="container" data-aos="fade-up">
        <h1>Job Opportunities</h1>

        <!-- Search Bar -->
        <div class="search-bar">
            <input type="text" id="searchInput" placeholder="Search by job role..." onkeyup="filterJobs()">
        </div>

        <div class="card-container">
            <!-- Sample Job Cards -->
            <div class="job-card" data-aos="fade-up">
                <div class="icon-container"><i class="fas fa-dollar-sign"></i></div>
                <h3>Accounting and Finance</h3>
                <ul>
                    <li onclick="showRoadmap('Chartered Accountant')">Chartered Accountant</li>
                    <li onclick="showRoadmap('Financial Analyst')">Financial Analyst</li>
                    <li onclick="showRoadmap('Tax Consultant')">Tax Consultant</li>
                </ul>
            </div>

            <div class="job-card" data-aos="fade-up">
                <div class="icon-container"><i class="fas fa-university"></i></div>
                <h3>Banking and Insurance</h3>
                <ul>
                    <li onclick="showRoadmap('Banking Officer')">Banking Officer</li>
                    <li onclick="showRoadmap('Investment Banker')">Investment Banker</li>
                    <li onclick="showRoadmap('Claims Manager')">Claims Manager</li>
                </ul>
            </div>

            <div class="job-card" data-aos="fade-up">
                <div class="icon-container"><i class="fas fa-briefcase"></i></div>
                <h3>Management and Business</h3>
                <ul>
                    <li onclick="showRoadmap('Business Analyst')">Business Analyst</li>
                    <li onclick="showRoadmap('Operations Manager')">Operations Manager</li>
                    <li onclick="showRoadmap('Supply Chain Manager')">Supply Chain Manager</li>
                </ul>
            </div>

            <div class="job-card" data-aos="fade-up">
                <div class="icon-container"><i class="fas fa-bullhorn"></i></div>
                <h3>Marketing and Sales</h3>
                <ul>
                    <li onclick="showRoadmap('Marketing Manager')">Marketing Manager</li>
                    <li onclick="showRoadmap('Sales Executive')">Sales Executive</li>
                    <li onclick="showRoadmap('Digital Marketing Specialist')">Digital Marketing Specialist</li>
                </ul>
            </div>

            <div class="job-card" data-aos="fade-up">
                <div class="icon-container"><i class="fas fa-users"></i></div>
                <h3>Human Resources</h3>
                <ul>
                    <li onclick="showRoadmap('HR Manager')">HR Manager</li>
                    <li onclick="showRoadmap('Recruitment Specialist')">Recruitment Specialist</li>
                    <li onclick="showRoadmap('Training Manager')">Training Manager</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Popup Modal -->
    <div id="overlay" onclick="closePopup()"></div>

    <div id="popup" class="popup">
        <div id="popup-content"></div>
        <div class="close-btn">
            <button onclick="closePopup()">Close</button>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>

    <script>
        // Initialize AOS for scroll animations
        AOS.init();

        // Dark Mode Toggle
        function toggleDarkMode() {
            document.body.classList.toggle('dark-mode');
        }

        // Filter Job Cards
        function filterJobs() {
            var input = document.getElementById('searchInput');
            var filter = input.value.toUpperCase();
            var jobCards = document.querySelectorAll('.job-card');

            jobCards.forEach(card => {
                var title = card.querySelector('h3').textContent;
                if (title.toUpperCase().indexOf(filter) > -1) {
                    card.style.display = "";
                } else {
                    card.style.display = "none";
                }
            });
        }

        // Roadmaps for each job role
        var roadmaps = {
            'Chartered Accountant': 'Steps to become a Chartered Accountant: 1. Earn a degree in Accounting. 2. Get certification (CA). 3. Gain professional experience.',
            'Financial Analyst': 'Steps to become a Financial Analyst: 1. Degree in Finance/Accounting. 2. Learn financial modeling. 3. Obtain CFA certification.',
            'Tax Consultant': 'Steps to become a Tax Consultant: 1. Study accounting or finance. 2. Specialize in tax laws. 3. Gain experience with tax firms.',
            'Banking Officer': 'Steps to become a Banking Officer: 1. Complete a Bachelor’s degree in Finance or Banking. 2. Work in entry-level banking roles. 3. Get certification for banking operations.',
            'Investment Banker': 'Steps to become an Investment Banker: 1. Complete a degree in Finance or Economics. 2. Gain experience at a bank or firm. 3. Pursue a master’s degree in finance.',
            'Claims Manager': 'Steps to become a Claims Manager: 1. Study insurance management. 2. Gain experience in claims processing. 3. Pursue leadership roles in claims departments.',
            'Business Analyst': 'Steps to become a Business Analyst: 1. Bachelor’s in Business, IT, or related. 2. Learn data analysis tools (SQL, Excel). 3. Certifications like CBAP.',
            'Operations Manager': 'Steps to become an Operations Manager: 1. Start in business or operations role. 2. Gain leadership experience. 3. Pursue MBA or related certifications.',
            'Supply Chain Manager': 'Steps to become a Supply Chain Manager: 1. Degree in logistics or business. 2. Understand supply chain concepts. 3. Work your way up through supply chain roles.',
            'Marketing Manager': 'Steps to become a Marketing Manager: 1. Obtain a degree in marketing or business. 2. Gain experience in digital marketing and advertising. 3. Move into management positions.',
            'Sales Executive': 'Steps to become a Sales Executive: 1. Pursue a degree in marketing or business. 2. Develop sales skills through experience. 3. Get involved in client management.',
            'Digital Marketing Specialist': 'Steps to become a Digital Marketing Specialist: 1. Learn SEO, SEM, and content marketing. 2. Gain practical experience. 3. Pursue certifications in digital marketing.',
            'HR Manager': 'Steps to become an HR Manager: 1. Obtain a degree in HR or Business Management. 2. Gain experience in HR roles. 3. Pursue certifications like SHRM.',
            'Recruitment Specialist': 'Steps to become a Recruitment Specialist: 1. Obtain a degree in HR or related. 2. Gain experience in recruitment and staffing. 3. Develop networking skills and stay updated on job market trends.',
            'Training Manager': 'Steps to become a Training Manager: 1. Study HR management or related fields. 2. Gain experience in employee training and development. 3. Work towards certifications in training management.'
        };

        // Show Roadmap Popup
        function showRoadmap(role) {
            var content = roadmaps[role] || "Roadmap not available.";
            document.getElementById('popup-content').innerText = content;
            document.getElementById('overlay').style.display = 'block';
            document.getElementById('popup').style.display = 'block';
        }

        // Close Popup
        function closePopup() {
            document.getElementById('overlay').style.display = 'none';
            document.getElementById('popup').style.display = 'none';
        }
    </script>

</body>

</html>
