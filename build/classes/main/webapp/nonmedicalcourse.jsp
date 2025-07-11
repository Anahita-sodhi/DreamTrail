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
            <div class="icon-container"><i class="fas fa-laptop"></i></div>
            <h3>Bachelor of Technology (B.Tech)</h3>
            <ul>
                <li onclick="showRoadmap('Software Engineer')">Software Engineer</li>
                <li onclick="showRoadmap('Mechanical Engineer')">Mechanical Engineer</li>
                <li onclick="showRoadmap('Civil Engineer')">Civil Engineer</li>
                 <li onclick="showRoadmap('Electrical Engineer')">Electrical Engineer</li>
                <li onclick="showRoadmap('Data Scientist')">Data Scientist</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-laptop"></i></div>
            <h3>Bachelor of Computer Applications (BCA)</h3>
            <ul>
                <li onclick="showRoadmap('Web Developer')">Web Developer</li>
                <li onclick="showRoadmap('Software Developer')"> Software Developer</li>
                <li onclick="showRoadmap('Network Administrator')">Network Administrator</li>
                 <li onclick="showRoadmap('Database Administrator')">Database Administrator</li>
                <li onclick="showRoadmap('App Developer')"> App Developer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-briefcase"></i></div>
            <h3>Bachelor of Business Administration (BBA)</h3>
            <ul>
        <li onclick="showRoadmap('Auditor')">Auditor</li>
        <li onclick="showRoadmap('Business Analyst')">Business Analyst</li>
        <li onclick="showRoadmap('Operations Manager')">Operations Manager</li>
        <li onclick="showRoadmap('Project Manager')">Project Manager</li>
        <li onclick="showRoadmap('Sales Manager')">Sales Manager</li>
        <li onclick="showRoadmap('Product Manager')">Product Manager</li>
         </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-hotel"></i></div>
            <h3>Hotel Management</h3>
            <ul>
        <li onclick="showRoadmap('Legal Advisor')">Legal Advisor</li>
        <li onclick="showRoadmap('Hotel Manager')">Hotel Manager</li>
        <li onclick="showRoadmap('Restaurant Manager')">Restaurant Manager</li>
        <li onclick="showRoadmap('Event Planner')">Event Planner</li>
        <li onclick="showRoadmap('Travel and Tourism Manager')">Travel and Tourism Manager</li>
        <li onclick="showRoadmap('Hospitality Consultant')">Hospitality Consultant</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-pencil-ruler"></i></div>
            <h3>Graphic Designing</h3>
            <ul>
         <li onclick="showRoadmap('Graphic Designer')">Graphic Designer</li>
        <li onclick="showRoadmap('UI/UX Designer')">UI/UX Designer</li>
        <li onclick="showRoadmap('Web Designer')">Web Designer</li>
        <li onclick="showRoadmap('Creative Director')">Creative Director</li>
        <li onclick="showRoadmap('Multimedia Specialist')">Multimedia Specialist</li>
               </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-film"></i></div>
            <h3>Animation and Multimedia</h3>
            <ul>
        <li onclick="showRoadmap('Animator')">Animator</li>
        <li onclick="showRoadmap('Multimedia Artist')">Multimedia Artist</li>
        <li onclick="showRoadmap('Game Designer')">Game Designer</li>
        <li onclick="showRoadmap('Video Editor')">Video Editor</li>
        <li onclick="showRoadmap('3D Designer')">3D Designer</li>
              </ul>
        </div>

        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-plane"></i></div>
            <h3>Airline and Pilot Training</h3>
            <ul>
               <li onclick="showRoadmap('Pilot')">Pilot</li>
        <li onclick="showRoadmap('Air Hostess')">Air Hostess</li>
        <li onclick="showRoadmap('Airport Manager')">Airport Manager</li>
        <li onclick="showRoadmap('Flight Operations Officer')">Flight Operations Officer</li>
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
        // B.Tech roles
        'Software Engineer': '1. Earn a B.Tech (CSE/IT)\n2. Master coding skills (Java, Python, C++)\n3. Build projects & internships\n4. Apply for entry-level software jobs\n5. Advance to senior roles or specialize (Backend, AI, Cybersecurity).',
        'Mechanical Engineer': '1. Complete B.Tech (Mechanical)\n2. Get internships in manufacturing/automobile sectors\n3. Learn CAD/CAM tools (SolidWorks, AutoCAD)\n4. Gain hands-on workshop experience\n5. Apply for mechanical design, production, or maintenance roles.',
        'Civil Engineer': '1. Earn B.Tech (Civil Engineering)\n2. Master AutoCAD, Revit, STAAD Pro\n3. Do internships in construction companies\n4. Get licensed if needed (e.g., PE license)\n5. Work as a site engineer, structural designer, or project manager.',
        'Electrical Engineer': '1. Complete B.Tech (Electrical)\n2. Gain experience with circuit design, PLC, SCADA\n3. Intern in power companies or manufacturing units\n4. Get certifications (like Industrial Automation)\n5. Apply for roles in power distribution, automation, and electronics.',
        'Data Scientist': '1. Graduate with B.Tech (CSE/IT or related)\n2. Master Python, R, SQL\n3. Learn machine learning, deep learning basics\n4. Build a strong portfolio with Kaggle competitions\n5. Apply for entry-level data science jobs.',

        // BCA roles
        'Web Developer': '1. Complete BCA\n2. Learn HTML, CSS, JavaScript thoroughly\n3. Master frameworks (React, Angular)\n4. Build portfolio websites\n5. Apply for web development roles or freelancing.',
        'Software Developer': '1. Graduate with BCA\n2. Learn programming languages (Java, C++, Python)\n3. Build real-world applications\n4. Get certified (AWS, Microsoft Developer)\n5. Apply for software development positions.',
        'Network Administrator': '1. Complete BCA\n2. Learn networking basics (CCNA certification)\n3. Master network security concepts\n4. Intern at IT companies\n5. Apply for network admin jobs in MNCs or startups.',
        'Database Administrator': '1. Complete BCA\n2. Learn SQL, Oracle, MongoDB\n3. Get certification (Oracle Certified Professional)\n4. Gain hands-on experience managing databases\n5. Apply for DBA roles.',
        'App Developer': '1. Complete BCA\n2. Learn Android (Kotlin/Java) or iOS (Swift)\n3. Build and publish apps on Play Store/App Store\n4. Get internships in app development\n5. Apply for mobile app developer jobs.',

        // BBA roles
        'Auditor': '1. Complete BBA (Finance preferred)\n2. Pursue CA/CMA certifications\n3. Get audit internships\n4. Master financial regulations\n5. Join auditing firms or corporates.',
        'Business Analyst': '1. Complete BBA (Business Analytics preferred)\n2. Learn SQL, Excel, Power BI, Tableau\n3. Develop analytical and presentation skills\n4. Intern with consulting firms\n5. Apply for business analyst roles.',
        'Operations Manager': '1. Graduate with BBA\n2. Learn operations management tools (ERP, SAP)\n3. Work as an operations executive\n4. Gain 3-5 years of experience\n5. Get promoted to Operations Manager.',
        'Project Manager': '1. Complete BBA\n2. Get certified (CAPM, PMP)\n3. Start as project coordinator or assistant\n4. Develop leadership and planning skills\n5. Become a Project Manager.',
        'Sales Manager': '1. Complete BBA (Marketing preferred)\n2. Start as Sales Executive\n3. Build sales and negotiation skills\n4. Get promoted to Team Leader\n5. Advance to Sales Manager role.',
        'Product Manager': '1. Complete BBA (Marketing/IT Management)\n2. Understand product lifecycle and customer journey\n3. Build experience through internships\n4. Learn Agile methodologies\n5. Apply for associate product manager roles.',

        // Hotel Management roles
        'Legal Advisor': '1. Complete Law degree (LLB)\n2. Specialize in Hospitality Law\n3. Work with hospitality firms\n4. Advise on contracts, compliance, disputes\n5. Grow into senior advisory roles.',
        'Hotel Manager': '1. Graduate in Hotel Management\n2. Start as management trainee/front desk\n3. Gain experience across departments\n4. Get promoted to operations head\n5. Become a Hotel Manager.',
        'Restaurant Manager': '1. Graduate in Hotel Management\n2. Get F&B experience\n3. Learn POS systems, customer service excellence\n4. Manage teams and restaurant operations\n5. Become Restaurant Manager.',
        'Event Planner': '1. Graduate (Hotel Management/Events degree)\n2. Start as event coordinator\n3. Build portfolio of successful events\n4. Network with clients and vendors\n5. Start own event management company or work as Senior Planner.',
        'Travel and Tourism Manager': '1. Graduate in Hotel or Tourism Management\n2. Work in travel agencies/tourism boards\n3. Get certified (IATA/UFTAA)\n4. Handle tour operations and management\n5. Grow into management roles.',
        'Hospitality Consultant': '1. Complete Hotel Management degree\n2. Work 5+ years in hospitality\n3. Develop expertise in hotel operations\n4. Start consulting services\n5. Advise hotels/resorts on improving business.',

        // Graphic Designing roles
        'Graphic Designer': '1. Graduate (Design or Fine Arts)\n2. Master Adobe Photoshop, Illustrator\n3. Create portfolio projects\n4. Work freelance or join agencies\n5. Grow into senior design roles.',
        'UI/UX Designer': '1. Graduate (Design/Computer Science)\n2. Learn Figma, Adobe XD, UX Research\n3. Build apps or website prototypes\n4. Intern at tech companies\n5. Apply for UI/UX roles.',
        'Web Designer': '1. Graduate (Design/IT)\n2. Master HTML, CSS, JS\n3. Learn WordPress, Webflow\n4. Build websites for local businesses\n5. Join web development/design companies.',
        'Creative Director': '1. Graduate in Design/Fine Arts\n2. Build 7-10 years of experience in agencies\n3. Master branding, visual storytelling\n4. Lead creative teams\n5. Become Creative Director.',
        'Multimedia Specialist': '1. Graduate in Multimedia/Design\n2. Master After Effects, Premiere Pro\n3. Create videos, animations\n4. Work with media houses, production companies\n5. Become a Multimedia Specialist.',

        // Animation and Multimedia roles
        'Animator': '1. Graduate in Animation/Design\n2. Master animation tools (Maya, Blender)\n3. Create demo reels\n4. Work in studios (film, TV, gaming)\n5. Grow into senior animator roles.',
        'Multimedia Artist': '1. Graduate in Multimedia Arts\n2. Master 2D/3D design and animation\n3. Work freelance or for gaming companies\n4. Build a strong portfolio\n5. Move to senior multimedia artist roles.',
        'Game Designer': '1. Graduate in Game Design or Multimedia\n2. Learn Unity, Unreal Engine\n3. Build indie games\n4. Intern at gaming studios\n5. Apply for Game Designer jobs.',
        'Video Editor': '1. Graduate (Mass Comm/Media Studies)\n2. Learn Adobe Premiere, Final Cut Pro\n3. Work on short films, ads\n4. Build a showreel\n5. Apply for video editing jobs.',
        '3D Designer': '1. Graduate (Animation/3D Design)\n2. Learn Blender, 3DS Max\n3. Create 3D models for games, architecture\n4. Work freelance or with studios\n5. Become a senior 3D designer.',

        // Airline roles
        'Pilot': '1. Complete 10+2 (PCM)\n2. Join flying school (DGCA approved)\n3. Get Commercial Pilot License (CPL)\n4. Start as co-pilot\n5. Get promoted to Captain.',
        'Air Hostess': '1. Complete 10+2 (any stream)\n2. Join Air Hostess Training Institute\n3. Develop communication and grooming skills\n4. Get recruited by airlines\n5. Become Senior Cabin Crew.',
        'Airport Manager': '1. Graduate in Aviation Management\n2. Work as ground staff initially\n3. Get experience in airport operations\n4. Advance to terminal/airport manager roles.',
        'Flight Operations Officer': '1. Graduate in Aviation or related field\n2. Get DGCA Flight Dispatcher License\n3. Work with airlines\n4. Coordinate flights, crew, load\n5. Grow to Flight Operations Manager.'
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
