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
            justify-content: space-between;
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
            top: 0; left: 0;
            width: 100vw;
            height: 100vh;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 998;
            display: none;
        }
        .popup {
            position: fixed;
            top: 50%; left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
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
<button class="dark-toggle" onclick="toggleDarkMode()"><i class="fas fa-moon"></i></button>

<div class="container" data-aos="fade-up">
    <h1>Job Opportunities</h1>

    <!-- Search Bar -->
    <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search by job role..." onkeyup="filterJobs()">
    </div>
            
    <div class="card-container">
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-user-graduate"></i></div>
            <h3>Bachelor of Arts (BA)</h3>
            <ul>
                <li onclick="showRoadmap('journalist')">Journalist</li>
                <li onclick="showRoadmap('teacher')">Teacher</li>
                <li onclick="showRoadmap('contentwriter')">Content Writer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-chalkboard-teacher"></i></div>
            <h3>Master of Arts (MA)</h3>
            <ul>
                <li onclick="showRoadmap('lecturer')">Lecturer</li>
                <li onclick="showRoadmap('researchAnalyst')">Research Analyst</li>
                <li onclick="showRoadmap('publicPolicyAdvisor')">Public Policy Advisor</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-paint-brush"></i></div>
            <h3>Bachelor of Fine Arts (BFA)</h3>
            <ul>
                <li onclick="showRoadmap('newsAnchor')">News Anchor</li>
                <li onclick="showRoadmap('editor')">Editor</li>
                <li onclick="showRoadmap('publicRelationsSpecialist')">Public Relations Specialist</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-users"></i></div>
            <h3>Bachelor of Social Work (BSW)</h3>
            <ul>
                <li onclick="showRoadmap('ngoWorker')">NGO Worker</li>
                <li onclick="showRoadmap('communityOrganizer')">Community Organizer</li>
                <li onclick="showRoadmap('socialWorker')">Social Worker</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-cogs"></i></div>
            <h3>Bachelor of Design (B.Des)</h3>
            <ul>
                <li onclick="showRoadmap('interiorDesigner')">Interior Designer</li>
                <li onclick="showRoadmap('fashionDesigner')">Fashion Designer</li>
                <li onclick="showRoadmap('uiuxDesigner')">UI/UX Designer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-chalkboard-teacher"></i></div>
            <h3>Bachelor of Education (B.Ed)</h3>
            <ul>
                <li onclick="showRoadmap('schoolTeacher')">School Teacher</li>
                <li onclick="showRoadmap('educationalTrainer')">Educational Trainer</li>
                <li onclick="showRoadmap('curriculumDeveloper')">Curriculum Developer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-user-md"></i></div>
            <h3>Master of Social Work (MSW)</h3>
            <ul>
                <li onclick="showRoadmap('policyAnalyst')">Policy Analyst</li>
                <li onclick="showRoadmap('programManager')">Program Manager</li>
                <li onclick="showRoadmap('therapist')">Therapist</li>
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
    
    // Dark Mode Toggle Functionality
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

    // Show Roadmap Popup
    function showRoadmap(role) {
        var roadmaps = {
            'journalist': 'Steps to become a Journalist: 1. Get a degree in Journalism or Mass Communication. 2. Gain experience through internships. 3. Start working in local newspapers or media houses.',
            'teacher': 'Steps to become a Teacher: 1. Obtain a teaching degree. 2. Gain experience through student-teaching. 3. Obtain certification as required by local regulations.',
            'contentwriter': 'Steps to become a Content Writer: 1. Gain proficiency in writing. 2. Work on building a portfolio. 3. Apply for freelance or full-time writing positions.',
            'lecturer': 'Steps to become a Lecturer: 1. Obtain a relevant postgraduate degree. 2. Gain teaching experience. 3. Apply for lecturer positions at universities.',
            'researchAnalyst': 'Steps to become a Research Analyst: 1. Obtain a degree in statistics or a related field. 2. Gain experience through research projects. 3. Apply for research positions.',
            'publicPolicyAdvisor': 'Steps to become a Public Policy Advisor: 1. Obtain a degree in public policy or political science. 2. Gain experience through internships or working with governmental bodies. 3. Build a network and apply for advisory roles.',
            'newsAnchor': 'Steps to become a News Anchor: 1. Obtain a degree in Journalism. 2. Gain experience in the field of media. 3. Apply for roles at TV stations.',
            'editor': 'Steps to become an Editor: 1. Get a degree in English, Journalism, or related field. 2. Gain experience in editing content. 3. Apply for editor positions at media organizations.',
            'publicRelationsSpecialist': 'Steps to become a PR Specialist: 1. Get a degree in Public Relations or Communications. 2. Gain experience in the PR industry. 3. Apply for roles with PR agencies.',
            'ngoWorker': 'Steps to become an NGO Worker: 1. Obtain a degree in Social Work or a related field. 2. Gain experience by volunteering with NGOs. 3. Apply for full-time positions at NGOs.',
            'communityOrganizer': 'Steps to become a Community Organizer: 1. Obtain a degree in Social Sciences or related field. 2. Gain experience by working with community organizations. 3. Take up leadership roles in organizing community activities.',
            'socialWorker': 'Steps to become a Social Worker: 1. Obtain a degree in Social Work. 2. Gain experience in various social settings. 3. Apply for roles in government agencies or private organizations.',
            'interiorDesigner': 'Steps to become an Interior Designer: 1. Get a degree in Interior Design. 2. Build a portfolio through internships. 3. Apply for design positions in firms.',
            'fashionDesigner': 'Steps to become a Fashion Designer: 1. Obtain a degree in Fashion Design. 2. Build a portfolio of your designs. 3. Work with fashion houses or start your own brand.',
            'uiuxDesigner': 'Steps to become a UI/UX Designer: 1. Obtain a degree in Design or Computer Science. 2. Learn user-centered design principles. 3. Build a portfolio and apply for positions at tech firms.',
            'schoolTeacher': 'Steps to become a School Teacher: 1. Obtain a teaching degree. 2. Gain classroom experience. 3. Get certified as required by local regulations.',
            'educationalTrainer': 'Steps to become an Educational Trainer: 1. Obtain a degree in Education or related field. 2. Gain experience in teaching. 3. Apply for training roles in educational organizations.',
            'curriculumDeveloper': 'Steps to become a Curriculum Developer: 1. Get a degree in Education or Instructional Design. 2. Gain experience in teaching or instructional design. 3. Apply for curriculum developer positions.',
            'policyAnalyst': 'Steps to become a Policy Analyst: 1. Get a degree in Political Science or Economics. 2. Gain experience through internships in governmental organizations. 3. Apply for analyst positions.',
            'programManager': 'Steps to become a Program Manager: 1. Obtain a degree in Management. 2. Gain experience managing projects. 3. Apply for program manager roles.',
            'therapist': 'Steps to become a Therapist: 1. Obtain a degree in Psychology or Social Work. 2. Complete a relevant clinical internship. 3. Apply for roles in therapeutic settings.',
        };

        document.getElementById('popup-content').innerHTML = roadmaps[role];
        document.getElementById('overlay').style.display = 'block';
        document.getElementById('popup').style.display = 'block';
    }

    function closePopup() {
        document.getElementById('overlay').style.display = 'none';
        document.getElementById('popup').style.display = 'none';
    }
</script>
</body>
</html>
