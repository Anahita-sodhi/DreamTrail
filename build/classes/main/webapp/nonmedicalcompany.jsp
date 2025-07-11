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
            <div class="icon-container"><i class="fab fa-google"></i></div>
            <h3>Google</h3>
            <ul>
             
                    <li onclick="showRoadmap('Product Manager')">Product Manager</li>
                    <li onclick="showPopup('Data Scientist')">Data Scientist</li>
                    <li onclick="showRoadmap('UX/UI Designer')">UX/UI Designer</li>
                    <li onclick="showRoadmap('Cloud Engineer')">Cloud Engineer</li>
                            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fab fa-windows"></i></div>
            <h3>Microsoft</h3>
            <ul>
                <li onclick="showRoadmap('Software Developer')">Software Developer</li>
                    <li onclick="showRoadmap('Cloud Solutions Architect')">Cloud Solutions Architect</li>
                    <li onclick="showRoadmap('IT Support Specialist')">IT Support Specialist</li>
                    <li onclick="showRoadmap('Business Analyst')">Business Analyst</li>
                    <li onclick="showRoadmap('Security Engineer')">Security Engineer</li>
                            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-box-open"></i></div>
            <h3>Amazon</h3>
            <ul>
                <li onclick="showRoadmap('Operations Manager')">Operations Manager</li>
                    <li onclick="showRoadmap('Product Manager')">Product Manager</li>
                    <li onclick="showRoadmap('Warehouse Operations Executive')">Warehouse Operations Executive</li>
                    <li onclick="showRoadmap('Software Engineer')">Software Engineer</li>
                    <li onclick="showRoadmap('Data Analyst')">Data Analyst</li>
         </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-briefcase"></i></div>
            <h3>Tata Consultancy Services (TCS)</h3>
            <ul>
               <li onclick="showRoadmap('Software Engineer')">Software Engineer</li>
                    <li onclick="showRoadmap('Business Analyst')">Business Analyst</li>
                    <li onclick="showRoadmap('Systems Analyst')">Systems Analyst</li>
                    <li onclick="showRoadmap('Project Manager')">Project Manager</li>
                    <li onclick="showRoadmap('Consultant')">Consultant</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-chart-line"></i></div>
            <h3>Accenture</h3>
            <ul>
   
        <li onclick="showRoadmap('Technology Consultant')">Technology Consultant</li>
                    <li onclick="showRoadmap('Business Consultant')">Business Consultant</li>
                    <li onclick="showRoadmap('Software Developer')">Software Developer</li>
                    <li onclick="showRoadmap('Cloud Specialist')">Cloud Specialist</li>
                    <li onclick="showRoadmap('Human Resources Manager')">Human Resources Manager</li>
               </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-laptop-code"></i></div>
            <h3>Infosys</h3>
            <ul>
     
         <li onclick="showRoadmap('Software Engineer')">Software Engineer</li>
                    <li onclick="showRoadmap('Business Process Analyst')">Business Process Analyst</li>
                    <li onclick="showRoadmap('Consultant')">Consultant</li>
                    <li onclick="showRoadmap('Data Scientist')">Data Scientist</li>
                    <li onclick="showRoadmap('Project Lead')">Project Lead</li>
              </ul>
        </div>

        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-briefcase"></i></div>
            <h3>IBM</h3>
            <ul>
               <li onclick="showRoadmap('Pilot')">Pilot</li>
        <li onclick="showRoadmap('Cloud Engineer')">Cloud Engineer</li>
                    
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
   // Show Roadmap Popup
function showRoadmap(role) {
    var roadmaps = {
    		
        "Product Manager": "1. Bachelor's degree (Business, CS, Engineering).\n2. Build strong communication and leadership skills.\n3. Start as a Business Analyst or Associate PM.\n4. Learn Agile, Scrum, and Product Lifecycle.\n5. Grow to Senior PM, Group PM, and eventually Product Director.",
        "UX/UI Designer": "1. Bachelor's degree (Design, HCI, or related field).\n2. Learn tools like Figma, Sketch, Adobe XD.\n3. Build a strong portfolio with real-world projects.\n4. Start as a Junior Designer.\n5. Move to Senior Designer, UX Lead, or Product Design Manager.",
        "Cloud Engineer": "1. Bachelor's in CS, IT, or related field.\n2. Get certifications (AWS Certified Solutions Architect, Azure, GCP).\n3. Learn cloud services, networking, and DevOps tools.\n4. Start as a Cloud Associate.\n5. Grow into Senior Cloud Engineer or Cloud Architect roles.",
        "Software Developer": "1. Bachelor's degree in CS/IT.\n2. Master coding languages (Java, Python, JavaScript, etc.).\n3. Work on projects and internships.\n4. Start as a Junior Developer.\n5. Advance to Senior Developer, Tech Lead, or Software Architect.",
        "Cloud Solutions Architect": "1. Bachelor's degree in Computer Science or related field.\n2. Gain deep knowledge of AWS, Azure, or GCP.\n3. Get certified (AWS Solutions Architect, Azure Architect Expert).\n4. Work as a Cloud Engineer or Developer.\n5. Move into Architect role leading cloud strategy and design.",
        "IT Support Specialist": "1. Associate or Bachelor's degree in IT.\n2. Gain certifications (CompTIA A+, Network+).\n3. Develop troubleshooting and communication skills.\n4. Start as Help Desk Technician.\n5. Move into System Admin, Network Admin, or IT Manager roles.",
        "Business Analyst": "1. Bachelor's in Business, Finance, or IT.\n2. Learn business process modeling, SQL, and analytics tools.\n3. Start as a Junior Business Analyst.\n4. Advance to Senior Analyst or Project Manager roles.",
        "Security Engineer": "1. Bachelor's in Cybersecurity, CS, or IT.\n2. Learn security tools, ethical hacking, and networking.\n3. Get certified (CEH, CISSP).\n4. Start as a Security Analyst.\n5. Grow into Security Engineer, Security Architect, or CISO.",
        "Operations Manager": "1. Bachelor's in Business or related field.\n2. Gain experience in operational roles (Team Lead, Supervisor).\n3. Learn supply chain, process improvement (Six Sigma).\n4. Step into Operations Manager roles.\n5. Grow into Director or VP of Operations.",
        "Warehouse Operations Executive": "1. Bachelor's in Logistics, SCM, or Business.\n2. Start as Warehouse Assistant/Coordinator.\n3. Learn inventory systems, WMS, and supply chain basics.\n4. Move into Warehouse Executive or Manager positions.",
        "Data Analyst": "1. Bachelor's in Statistics, CS, or related field.\n2. Learn SQL, Excel, Python, Power BI/Tableau.\n3. Build data projects portfolio.\n4. Start as Junior Data Analyst.\n5. Advance to Senior Analyst or Data Scientist.",
        "Systems Analyst": "1. Bachelor's in CS, IT, or Business IT.\n2. Learn system design, SQL, software development basics.\n3. Start as Junior Systems Analyst.\n4. Grow into Senior Systems Analyst or IT Project Manager.",
        "Project Manager": "1. Bachelor's in Business, Engineering, or IT.\n2. Gain PMP or PRINCE2 certification.\n3. Start as Project Coordinator or Assistant PM.\n4. Grow into Project Manager, then Program Manager.",
        "Consultant": "1. Bachelor's degree (depends on domain: Business, IT, etc.).\n2. Develop domain expertise and soft skills.\n3. Start as an Analyst.\n4. Move into Consultant and then Senior Consultant roles.",
        "Technology Consultant": "1. Bachelor's in CS, IT, or Engineering.\n2. Develop tech expertise + consulting skills.\n3. Work on technical projects.\n4. Move into Senior Consultant and Manager roles.",
        "Business Consultant": "1. Bachelor's in Business, Economics, or Management.\n2. Develop consulting, analytical, and problem-solving skills.\n3. Start in Analyst role.\n4. Grow to Consultant and Senior Consultant.",
        "Cloud Specialist": "1. Bachelor's in IT/CS.\n2. Get AWS/Azure/GCP certifications.\n3. Gain cloud migration and deployment skills.\n4. Start as Cloud Engineer/Cloud Specialist.",
        "Human Resources Manager": "1. Bachelor's in HR Management or Business.\n2. Start as HR Assistant/Coordinator.\n3. Develop expertise in recruitment, employee relations.\n4. Grow into HR Manager, HR Business Partner.",
        "Business Process Analyst": "1. Bachelor's in Business, IT, or Industrial Engineering.\n2. Learn business process modeling (BPMN), Lean Six Sigma.\n3. Start as Junior Analyst.\n4. Move into Process Analyst or Business Architect roles.",
        "Project Lead": "1. Bachelor's in Engineering, IT, or Business.\n2. Start as Developer/Analyst.\n3. Build leadership and project management skills.\n4. Get PMP certification.\n5. Lead project teams.",
        "Pilot": "1. Complete 10+2 (Science stream).\n2. Get Commercial Pilot License (CPL).\n3. Accumulate flight hours.\n4. Apply to airlines and clear simulator and medical tests.\n5. Grow into Senior Pilot/Captain.",
        "Technical Consultant": "1. Bachelor's in CS, IT, or Engineering.\n2. Master specific technology stacks (SAP, Oracle, Microsoft).\n3. Start as Technical Analyst.\n4. Move into Consultant and Senior Consultant roles.",
        "AI Specialist": "1. Bachelor's or Master's in AI, ML, CS.\n2. Build strong skills in Python, TensorFlow, ML models.\n3. Work on AI/ML projects.\n4. Start as Machine Learning Engineer.\n5. Grow into AI Researcher or AI Lead roles."
    };
    
    var roadmapText = roadmaps[role] || 'Information not available for this role.';
    document.getElementById('popup-content').innerText = roadmapText;
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
