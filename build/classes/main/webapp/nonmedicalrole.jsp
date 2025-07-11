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
            <div class="icon-container"><i class="fas fa-cogs"></i></div>
            <h3>Engineering Careers</h3>
            <ul>
             <li onclick="showRoadmap('Software Engineer')">Software Engineer</li>
                <li onclick="showRoadmap('Civil Engineer')">Civil Engineer</li>
                <li onclick="showRoadmap('Mechanical Engineer')">Mechanical Engineer</li>
                <li onclick="showRoadmap('Electrical Engineer')">Electrical Engineer</li>
                <li onclick="showRoadmap('Chemical Engineer')">Chemical Engineer</li>
                   
                            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-laptop-code"></i></div>
            <h3>IT and Computer Science</h3>
            <ul>
        
                   <li onclick="showRoadmap('Web Developer')">Web Developer</li>
                <li onclick="showRoadmap('Data Scientist')">Data Scientist</li>
                <li onclick="showRoadmap('Cybersecurity Analyst')">Cybersecurity Analyst</li>
                <li onclick="showRoadmap('Cloud Architect')">Cloud Architect</li>
                <li onclick="showRoadmap('Database Administrator')">Database Administrator</li>
                            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-briefcase"></i></div>
            <h3>Management and Business</h3>
            <ul>
                
                <li onclick="showRoadmap('Operations Manager')">Operations Manager</li>
                     <li onclick="showRoadmap('Business Analyst')">Business Analyst</li>
                <li onclick="showRoadmap('Project Manager')">Project Manager</li>
                <li onclick="showRoadmap('Product Manager')">Product Manager</li>
                <li onclick="showRoadmap('Operations Manager')">Operations Manager</li>
                <li onclick="showRoadmap('Sales Manager')">Sales Manager</li>
         </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-palette"></i></div>
            <h3>Design and Creativity</h3>
            <ul>
         
                <li onclick="showRoadmap('Graphic Designer')">Graphic Designer</li>
                <li onclick="showRoadmap('UI/UX Designer')">UI/UX Designer</li>
                <li onclick="showRoadmap('Animation and Multimedia Specialist')">Animation and Multimedia Specialist</li>
                <li onclick="showRoadmap('Web Designer')">Web Designer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-school"></i></div>
            <h3>Teaching and Education</h3>
            <ul>
   
        <li onclick="showRoadmap('Technology Consultant')">Technology Consultant</li>
                  <li onclick="showRoadmap('STEM Educator')">STEM Educator</li>
                <li onclick="showRoadmap('Private Tutor')">Private Tutor</li>
                <li onclick="showRoadmap('Education Consultant')">Education Consultant</li>
                <li onclick="showRoadmap('Educational Content Developer')">Educational Content Developer</li>
               </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-microscope"></i></div>
            <h3>Research and Development</h3>
            <ul>
     
   
                   <li onclick="showRoadmap('Research Scientist')">Research Scientist</li>
                <li onclick="showRoadmap('R&D Engineer')">R&D Engineer</li>
                <li onclick="showRoadmap('Technical Writer')">Technical Writer</li>
              </ul>
        </div>

        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-landmark"></i></div>
            <h3>Government Jobs</h3>
            <ul>
                      <li onclick="showRoadmap('Civil Services (IAS)')">Civil Services (IAS)</li>
                <li onclick="showRoadmap('Public Sector Undertaking (PSU)')">Public Sector Undertaking (PSU)</li>
                <li onclick="showRoadmap('Defense Services (Technical Roles)')">Defense Services (Technical Roles)</li>
                <li onclick="showRoadmap('Indian Railways Jobs')">Indian Railways Jobs</li>
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
            "Software Engineer": "1. Earn a degree in Computer Science or related field.\n2. Learn programming languages like Java, Python, C++.\n3. Build projects and contribute to open-source.\n4. Prepare for coding interviews.\n5. Apply to tech companies and start as Junior Developer.",
            "Civil Engineer": "1. Complete a degree in Civil Engineering.\n2. Learn AutoCAD, STAAD Pro.\n3. Do internships in construction or infrastructure companies.\n4. Clear exams like GATE for PSU jobs or pursue M.Tech.\n5. Get licensed as a professional engineer (PE).",
            "Mechanical Engineer": "1. Get a Mechanical Engineering degree.\n2. Learn CAD software (SolidWorks, CATIA).\n3. Internship in manufacturing/automobile industry.\n4. Explore specialization (design, thermal, production).\n5. Prepare for exams like GATE/PSU or private sector jobs.",
            "Electrical Engineer": "1. Graduate in Electrical/Electronics Engineering.\n2. Master power systems, control systems.\n3. Gain experience through internships.\n4. Get certification in PLC/SCADA if interested.\n5. Apply for core companies or government organizations.",
            "Chemical Engineer": "1. Earn a degree in Chemical Engineering.\n2. Develop strong fundamentals in process engineering.\n3. Get plant operation experience via internships.\n4. Specialize in petrochemical, pharma, or materials science.\n5. Apply to chemical industries and refineries.",
            "Web Developer": "1. Learn HTML, CSS, JavaScript.\n2. Master frameworks like React, Angular, or Vue.\n3. Build personal portfolio projects.\n4. Learn backend basics (Node.js, Django).\n5. Apply as Frontend/Fullstack Developer.",
            "Data Scientist": "1. Get strong in Python, R, and SQL.\n2. Learn statistics, machine learning, data visualization.\n3. Build projects in AI/ML, Kaggle competitions.\n4. Earn certifications (Coursera, edX).\n5. Apply for entry-level data roles.",
            "Cybersecurity Analyst": "1. Learn Networking fundamentals.\n2. Study cybersecurity concepts (firewalls, encryption, ethical hacking).\n3. Earn certifications (CompTIA Security+, CEH).\n4. Get hands-on practice (TryHackMe, HackTheBox).\n5. Apply for security analyst positions.",
            "Cloud Architect": "1. Understand cloud basics (AWS, Azure, GCP).\n2. Get certified (AWS Solutions Architect, Azure Architect).\n3. Work on cloud deployment projects.\n4. Gain experience in DevOps tools.\n5. Apply for cloud engineer/architect roles.",
            "Database Administrator": "1. Learn SQL thoroughly.\n2. Master RDBMS (MySQL, PostgreSQL, Oracle).\n3. Understand database backup, recovery, tuning.\n4. Get certifications (Oracle Certified DBA).\n5. Apply as junior DBA and grow from there.",
            "Operations Manager": "1. Graduate in Business Administration/Management.\n2. Learn project management and operations principles.\n3. Gain experience via internships.\n4. Pursue MBA if possible.\n5. Apply for operations executive roles.",
            "Business Analyst": "1. Learn business analysis frameworks.\n2. Understand basics of SQL, Excel, PowerBI.\n3. Get certified (CBAP, CCBA).\n4. Build strong communication and problem-solving skills.\n5. Apply for analyst positions.",
            "Project Manager": "1. Work experience in project-based roles.\n2. Learn project management tools (JIRA, Trello).\n3. Get PMP, PRINCE2 certifications.\n4. Lead small projects and gain leadership skills.\n5. Apply for Project Manager roles.",
            "Product Manager": "1. Understand product lifecycle and agile development.\n2. Work closely with design and engineering teams.\n3. Learn tools like JIRA, Asana.\n4. Gain experience in business, UX.\n5. Apply for associate product manager roles.",
            "Sales Manager": "1. Start with Sales Executive roles.\n2. Develop communication and negotiation skills.\n3. Gain experience and leadership qualities.\n4. Target certifications (CRM, Sales Strategy).\n5. Move up to Sales Manager role.",
            "Graphic Designer": "1. Learn design tools (Photoshop, Illustrator, Figma).\n2. Understand design principles.\n3. Create a strong portfolio.\n4. Freelance or intern at creative agencies.\n5. Apply for full-time designer positions.",
            "UI/UX Designer": "1. Learn user experience design principles.\n2. Master design tools (Figma, Sketch, Adobe XD).\n3. Build case studies and portfolio.\n4. Intern with companies/startups.\n5. Apply for junior UI/UX designer roles.",
            "Animation and Multimedia Specialist": "1. Learn animation software (Maya, Blender, After Effects).\n2. Build a showreel.\n3. Get internships at media houses or gaming companies.\n4. Specialize in 2D/3D animation.\n5. Apply for animator roles.",
            "Web Designer": "1. Learn HTML, CSS, Responsive Design.\n2. Master design aesthetics and UX.\n3. Create strong design portfolio websites.\n4. Freelance initially or work at startups.\n5. Move into senior web design positions.",
            "Technology Consultant": "1. Develop expertise in a tech field (cloud, data, security).\n2. Get consulting certifications (AWS, Azure).\n3. Build client communication skills.\n4. Intern at consulting firms.\n5. Apply for junior consultant roles.",
            "STEM Educator": "1. Major in a STEM field (Science, Technology, Engineering, Math).\n2. Get a teaching certification if required.\n3. Develop hands-on project teaching skills.\n4. Teach at schools, coach for STEM olympiads.\n5. Transition into curriculum development roles.",
            "Private Tutor": "1. Master a subject deeply.\n2. Build teaching skills (communication, patience).\n3. Start small with 1-1 students.\n4. Expand to group sessions or online tutoring.\n5. Build a personal brand.",
            "Education Consultant": "1. Graduate in Education, Psychology, or Management.\n2. Understand education systems and counseling techniques.\n3. Earn certifications in counseling (optional).\n4. Intern with educational consultancies.\n5. Apply for consultancy roles.",
            "Educational Content Developer": "1. Strong subject knowledge + creativity.\n2. Learn instructional design.\n3. Create sample content (worksheets, quizzes, videos).\n4. Work for edtech companies.\n5. Progress to senior content strategist roles.",
            "Research Scientist": "1. Complete Masters or Ph.D. in your field.\n2. Publish research papers.\n3. Get grants/funding for research.\n4. Work in labs, universities, or R&D companies.\n5. Lead independent research projects.",
            "R&D Engineer": "1. Specialize in product development.\n2. Gain technical research skills.\n3. Publish innovation reports or patents.\n4. Intern at R&D divisions of big companies.\n5. Apply as R&D Engineer.",
            "Technical Writer": "1. Develop strong writing and technical skills.\n2. Learn documentation tools (Markdown, WordPress, Confluence).\n3. Build a portfolio with sample technical docs.\n4. Apply to tech companies.\n5. Move into senior technical writing or documentation management.",
            "Civil Services (IAS)": "1. Graduate in any discipline.\n2. Prepare for UPSC Civil Services Exam.\n3. Follow a structured preparation plan.\n4. Clear Prelims, Mains, Interview.\n5. Get appointed as IAS/IPS/IFS officer.",
            "Public Sector Undertaking (PSU)": "1. Graduate in Engineering or relevant degree.\n2. Clear GATE Exam.\n3. Apply to PSUs (ONGC, BHEL, NTPC) through GATE score.\n4. Clear PSU interviews.\n5. Join as Engineer Trainee or equivalent roles.",
            "Defense Services (Technical Roles)": "1. Graduate in Engineering/Science.\n2. Apply through CDS, AFCAT, or direct SSB interviews.\n3. Clear physical, written, and interview rounds.\n4. Join Army/Navy/Air Force technical branches.\n5. Progress through ranks with experience.",
            "Indian Railways Jobs": "1. Graduate in Engineering (for technical posts) or any degree (non-technical).\n2. Apply through RRB Exams (NTPC, JE, SSE).\n3. Clear CBTs, Document Verification, Medical Tests.\n4. Join Indian Railways under appropriate cadre.\n5. Grow with departmental exams and promotions."
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
