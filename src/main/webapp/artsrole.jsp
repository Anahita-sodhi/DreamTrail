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
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .job-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: transform 0.3s ease;
            cursor: pointer;
            aspect-ratio: 1 / 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
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
        .job-card h2 {
            font-size: 1.2rem;
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
    </style>
</head>
<body>

<button class="dark-toggle" onclick="toggleDarkMode()"><i class="fas fa-moon"></i></button>

<div class="container">
    <h1>Job Opportunities</h1>
    <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search by job role..." onkeyup="filterJobs()">
    </div>

    <div class="card-container">
        <!-- Example Card -->
        <div class="job-card">
            <div class="icon-container"><i class="fa fa-cogs"></i></div>
            <h2>Engineer</h2>
           <ul>
                <li onclick="showRoadmap('softwareEngineer')">Software Engineer</li>
                <li onclick="showRoadmap('CivilEngineer')">Civil Engineer</li>
                <li onclick="showRoadmap('MechanicalEngineer')">Mechanical Engineer</li>
            </ul>
        </div>
        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-chart-line"></i></div>
            <h2>Business</h2>
            <ul>
                <li onclick="showRoadmap('BusinessAnalyst')">Business Analyst</li>
                <li onclick="showRoadmap('MarketingManager')">Marketing Manager</li>
                <li onclick="showRoadmap('FinancialAnalyst')">Financial Analyst</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-laptop-code"></i></div>
            <h2>Technology</h2>
           <ul>
                <li onclick="showRoadmap('DataScientist')">Data Scientist</li>
                <li onclick="showRoadmap('UXDesigner')">UX Designer</li>
                <li onclick="showRoadmap('NetworkAdministrator')">Network Administrator</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-user-md"></i></div>
            <h2>Medical</h2>
            <ul>
                <li onclick="showRoadmap('Doctor')">Doctor</li>
                <li onclick="showRoadmap('Nurse')">Nurse</li>
                <li onclick="showRoadmap('Pharmacist')">Pharmacist</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-gavel"></i></div>
            <h2>Law</h2>
            <ul>
                <li onclick="showRoadmap('Lawyer')">Lawyer</li>
                <li onclick="showRoadmap('Paralegal')">Paralegal</li>
                <li onclick="showRoadmap('Judge')">Judge</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-chalkboard-teacher"></i></div>
            <h2>Education</h2>
            <ul>
                <li onclick="showRoadmap('Teacher')">Teacher</li>
                <li onclick="showRoadmap('SchoolCounselor')">School Counselor</li>
                <li onclick="showRoadmap('Principal')">Principal</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-palette"></i></div>
            <h2>Creative Careers</h2>
            <ul>
                <li onclick="showRoadmap('GraphicDesigner')">Graphic Designer</li>
                <li onclick="showRoadmap('Photographer')">Photographer</li>
                <li onclick="showRoadmap('FashionDesigner')">Fashion Designer</li>
            </ul>
        </div>
    </div>
</div>

<div id="overlay" onclick="closePopup()"></div>
<div id="popup" class="popup">
    <div id="popup-content"></div>
    <div class="close-btn">
        <button onclick="closePopup()">Close</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script>
    AOS.init();

    let darkMode = false;

    function toggleDarkMode() {
        darkMode = !darkMode;
        document.body.classList.toggle('dark-mode', darkMode);
    }

    function filterJobs() {
        const search = document.getElementById('searchInput').value.toLowerCase();
        const cards = document.querySelectorAll('.job-card');
        cards.forEach(card => {
            const heading = card.querySelector('h2').textContent.toLowerCase();
            card.style.display = heading.includes(search) ? 'block' : 'none';
        });
    }

    function showRoadmap(key) {
        const roadmapData = {
            softwareEngineer: `
                <h3>Software Engineer</h3>
                <ul>
                    <li>1. Complete a bachelor's in Computer Science, Software Engineering, or a related field.</li>
                    <li>2. Develop proficiency in programming languages like Python, Java, C++, or JavaScript.</li>
                    <li>3. Gain experience through internships or personal projects (open-source contributions, coding competitions).</li>
                    <li>4. Learn about data structures, algorithms, and software design principles.</li>
                    <li>5. Apply for entry-level software engineering roles at tech companies or startups.</li>
                </ul>
            `,
            CivilEngineer: `
                <h3>Civil Engineer</h3>
                <ul>
                    <li>1. Complete a bachelor's degree in Civil Engineering or a related field.</li>
                    <li>2. Gain practical experience through internships and projects during your studies.</li>
                    <li>3. Learn about structural analysis, material science, and environmental engineering.</li>
                    <li>4. Obtain a Professional Engineer (PE) license by passing relevant exams (depends on your location).</li>
                    <li>5. Apply for entry-level engineering roles in construction, transportation, or structural firms.</li>
                </ul>
            `,
            MarketingManager: `
                <h3>Marketing Manager</h3>
                <ul>
                    <li>1. Obtain a bachelor's degree in Marketing, Business, or Communications.</li>
                    <li>2. Gain hands-on experience in areas like digital marketing, content strategy, and branding.</li>
                    <li>3. Develop strong analytical, communication, and project management skills.</li>
                    <li>4. Advance through roles like Marketing Coordinator or Specialist.</li>
                    <li>5. Earn certifications (e.g., Google Ads, HubSpot, Meta Blueprint) and apply for managerial roles.</li>
                </ul>
            `,

            FinancialAnalyst: `
                <h3>Financial Analyst</h3>
                <ul>
                    <li>1. Earn a bachelor's degree in Finance, Economics, Accounting, or related field.</li>
                    <li>2. Learn tools like Excel, Power BI, and financial modeling software.</li>
                    <li>3. Build strong analytical, problem-solving, and forecasting skills.</li>
                    <li>4. Gain experience via internships or entry-level roles in finance or investment firms.</li>
                    <li>5. Consider certifications like CFA or CPA for advancement.</li>
                </ul>
            `,

            DataScientist: `
                <h3>Data Scientist</h3>
                <ul>
                    <li>1. Earn a degree in Computer Science, Statistics, Data Science, or a related field.</li>
                    <li>2. Learn Python, R, SQL, and machine learning libraries like Scikit-learn and TensorFlow.</li>
                    <li>3. Build a portfolio with real-world data projects and competitions (e.g., Kaggle).</li>
                    <li>4. Gain experience through internships or as a data analyst.</li>
                    <li>5. Transition into data science roles and consider advanced degrees or certifications.</li>
                </ul>
            `,

            UXDesigner: `
                <h3>UX Designer</h3>
                <ul>
                    <li>1. Study design principles via a degree or bootcamp (UI/UX Design, Human-Computer Interaction).</li>
                    <li>2. Learn tools like Figma, Adobe XD, and usability testing methods.</li>
                    <li>3. Create a portfolio with case studies and redesign projects.</li>
                    <li>4. Apply for internships or junior UX design roles.</li>
                    <li>5. Progress to mid-level and senior designer positions with experience.</li>
                </ul>
            `,

            NetworkAdministrator: `
                <h3>Network Administrator</h3>
                <ul>
                    <li>1. Obtain a degree in Computer Networking, IT, or a related field.</li>
                    <li>2. Learn about LAN/WAN, firewalls, routers, and switches.</li>
                    <li>3. Get certified (CompTIA Network+, Cisco CCNA, etc.).</li>
                    <li>4. Start as a technical support or junior admin to gain hands-on experience.</li>
                    <li>5. Move into administrator or specialist roles in larger organizations.</li>
                </ul>
            `,

            Doctor: `
                <h3>Doctor</h3>
                <ul>
                    <li>1. Complete 10+2 with PCB (Physics, Chemistry, Biology).</li>
                    <li>2. Clear NEET and complete MBBS degree.</li>
                    <li>3. Undertake internship and register with the Medical Council.</li>
                    <li>4. Choose specialization and pursue post-graduation (MD/MS).</li>
                    <li>5. Practice or work in hospitals, clinics, or research institutions.</li>
                </ul>
            `,

            Nurse: `
                <h3>Nurse</h3>
                <ul>
                    <li>1. Complete 10+2 in Science and pursue a B.Sc. in Nursing or GNM program.</li>
                    <li>2. Register with the State Nursing Council.</li>
                    <li>3. Work in hospitals, clinics, or community health programs.</li>
                    <li>4. Gain experience and consider specializing (ICU, Pediatrics, etc.).</li>
                    <li>5. Optionally pursue M.Sc. in Nursing for higher roles or teaching.</li>
                </ul>
            `,

            Pharmacist: `
                <h3>Pharmacist</h3>
                <ul>
                    <li>1. Complete 10+2 with PCB/PCM and enroll in D.Pharm or B.Pharm.</li>
                    <li>2. Register with the Pharmacy Council after graduation.</li>
                    <li>3. Work in hospitals, retail pharmacies, or pharmaceutical companies.</li>
                    <li>4. Consider M.Pharm for specialization or research roles.</li>
                    <li>5. Stay updated with new drug regulations and advancements.</li>
                </ul>
            `,

            Lawyer: `
                <h3>Lawyer</h3>
                <ul>
                    <li>1. Complete 10+2 and pursue a 5-year integrated LLB or 3-year LLB after graduation.</li>
                    <li>2. Clear the All India Bar Examination (AIBE) and enroll with the Bar Council.</li>
                    <li>3. Gain experience through internships with legal firms or courts.</li>
                    <li>4. Specialize in areas like corporate, criminal, or civil law.</li>
                    <li>5. Build a strong client base or join established law firms.</li>
                </ul>
            `,

            Paralegal: `
                <h3>Paralegal</h3>
                <ul>
                    <li>1. Pursue a diploma or degree in Paralegal Studies or Law.</li>
                    <li>2. Gain knowledge of legal documentation and procedures.</li>
                    <li>3. Work under the supervision of lawyers in legal offices.</li>
                    <li>4. Gain certification (optional) and specialize in a field of law.</li>
                    <li>5. Continue education or transition to become a full lawyer.</li>
                </ul>
            `,

            Judge: `
                <h3>Judge</h3>
                <ul>
                    <li>1. Become a lawyer after obtaining an LLB and practicing law.</li>
                    <li>2. Pass the Judicial Services Examination held by State PSCs.</li>
                    <li>3. Start as a Civil Judge (Junior Division).</li>
                    <li>4. Gain experience and promotion to Senior Judge and higher courts.</li>
                    <li>5. Uphold strong ethics and knowledge of the law throughout career.</li>
                </ul>
            `,

            Teacher: `
                <h3>Teacher</h3>
                <ul>
                    <li>1. Earn a bachelor's degree in your subject of interest.</li>
                    <li>2. Complete a B.Ed. or equivalent teaching certification.</li>
                    <li>3. Clear teacher eligibility tests like CTET/TET.</li>
                    <li>4. Apply for teaching positions in schools.</li>
                    <li>5. Pursue further education (M.Ed./Ph.D.) for senior roles.</li>
                </ul>
            `,

            SchoolCounselor: `
                <h3>School Counselor</h3>
                <ul>
                    <li>1. Earn a degree in Psychology or Counseling.</li>
                    <li>2. Complete a postgraduate diploma or M.A. in Counseling.</li>
                    <li>3. Gain practical experience with schools or NGOs.</li>
                    <li>4. Develop strong listening, communication, and empathy skills.</li>
                    <li>5. Work in schools or private counseling centers.</li>
                </ul>
            `,

            Principal: `
                <h3>Principal</h3>
                <ul>
                    <li>1. Start your career as a teacher with a strong academic background.</li>
                    <li>2. Gain years of teaching and school management experience.</li>
                    <li>3. Pursue a Master’s in Education Administration or Leadership.</li>
                    <li>4. Demonstrate leadership skills and lead academic initiatives.</li>
                    <li>5. Apply for school head/principal roles in reputed institutions.</li>
                </ul>
            `,

            GraphicDesigner: `
                <h3>Graphic Designer</h3>
                <ul>
                    <li>1. Study graphic design through a degree, diploma, or self-learning.</li>
                    <li>2. Master tools like Adobe Illustrator, Photoshop, and Figma.</li>
                    <li>3. Build a strong portfolio with diverse projects.</li>
                    <li>4. Work as a freelancer or join agencies/companies.</li>
                    <li>5. Specialize in branding, UI design, or motion graphics.</li>
                </ul>
            `,

            Photographer: `
                <h3>Photographer</h3>
                <ul>
                    <li>1. Learn photography basics through courses or self-practice.</li>
                    <li>2. Get hands-on experience with DSLRs and editing tools.</li>
                    <li>3. Build a portfolio in niches like portraits, events, or wildlife.</li>
                    <li>4. Freelance or assist professional photographers.</li>
                    <li>5. Grow your brand and client base via social media and exhibitions.</li>
                </ul>
            `,

            FashionDesigner: `
                <h3>Fashion Designer</h3>
                <ul>
                    <li>1. Earn a degree or diploma in Fashion Design or Textile Design.</li>
                    <li>2. Learn sketching, sewing, and design software like CorelDRAW or CLO 3D.</li>
                    <li>3. Intern with fashion houses or designers for practical exposure.</li>
                    <li>4. Launch your own label or work with clothing brands.</li>
                    <li>5. Stay updated on fashion trends and attend fashion events.</li>
                </ul>
            `,
            BusinessAnalyst: `
                <h3>Business Analyst</h3>
                <ul>
                    <li>1. Earn a bachelor's degree in Business Administration, IT, Finance, or related fields.</li>
                    <li>2. Develop analytical skills and learn tools like Excel, SQL, Tableau, and Power BI.</li>
                    <li>3. Understand business processes and how to gather and document requirements.</li>
                    <li>4. Gain experience through internships or entry-level roles in analysis or operations.</li>
                    <li>5. Consider certifications like CBAP, CCBA, or PMI-PBA for career growth.</li>
                </ul>
            `,

            MechanicalEngineer: `
                <h3>Mechanical Engineer</h3>
                <ul>
                    <li>1. Complete 10+2 with PCM and qualify engineering entrance exams (like JEE Main).</li>
                    <li>2. Earn a B.Tech/B.E. degree in Mechanical Engineering.</li>
                    <li>3. Learn CAD tools like AutoCAD, SolidWorks, and simulation tools like ANSYS.</li>
                    <li>4. Take internships in manufacturing, automotive, or design firms.</li>
                    <li>5. Consider higher studies (M.Tech/M.S.) or certifications (e.g., Six Sigma, HVAC) for specialization.</li>
                </ul>
            `,


        };

        document.getElementById('popup-content').innerHTML = roadmapData[key];
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
