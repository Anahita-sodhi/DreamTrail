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
        <!-- Job Cards (already provided by you earlier, keeping same) -->
        <!-- Healthcare IT -->
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-stethoscope"></i></div>
            <h3>Healthcare IT Companies</h3>
            <ul>
                <li onclick="showRoadmap('Healthcare Software Developer')">Healthcare Software Developer</li>
                <li onclick="showRoadmap('Medical Systems Analyst')">Medical Systems Analyst</li>
                <li onclick="showRoadmap('Health Information Manager')">Health Information Manager</li>
                <li onclick="showRoadmap('Medical Data Analyst')">Medical Data Analyst</li>
                <li onclick="showRoadmap('Telemedicine Consultant')">Telemedicine Consultant</li>
            </ul>
        </div>

        <!-- Healthcare Equipment -->
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-procedures"></i></div>
            <h3>Healthcare Equipment and Devices Companies</h3>
            <ul>
                <li onclick="showRoadmap('Biomedical Engineer')">Biomedical Engineer</li>
                <li onclick="showRoadmap('Product Manager (Healthcare Devices)')">Product Manager (Healthcare Devices)</li>
                <li onclick="showRoadmap('Field Service Engineer')">Field Service Engineer</li>
                <li onclick="showRoadmap('Sales Executive (Healthcare Equipment)')">Sales Executive (Healthcare Equipment)</li>
                <li onclick="showRoadmap('Quality Assurance Analyst')">Quality Assurance Analyst</li>
            </ul>
        </div>

        <!-- Forensic and Legal -->
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-file-medical"></i></div>
            <h3>Forensic and Legal Companies</h3>
            <ul>
                <li onclick="showRoadmap('Forensic Medical Examiner')">Forensic Medical Examiner</li>
                <li onclick="showRoadmap('Medical Expert Witness')">Medical Expert Witness</li>
                <li onclick="showRoadmap('Legal Advisor (Healthcare)')">Legal Advisor (Healthcare)</li>
                <li onclick="showRoadmap('Medical Legal Consultant')">Medical Legal Consultant</li>
            </ul>
        </div>

        <!-- Pharmaceutical -->
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-pills"></i></div>
            <h3>Pharmaceutical Companies</h3>
            <ul>
                <li onclick="showRoadmap('Medical Representative')">Medical Representative</li>
                <li onclick="showRoadmap('Clinical Research Associate')">Clinical Research Associate</li>
                <li onclick="showRoadmap('Drug Safety Associate')">Drug Safety Associate</li>
                <li onclick="showRoadmap('Regulatory Affairs Specialist')">Regulatory Affairs Specialist</li>
                <li onclick="showRoadmap('Pharmaceutical Sales Manager')">Pharmaceutical Sales Manager</li>
            </ul>
        </div>

        <!-- Hospitals -->
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-hospital"></i></div>
            <h3>Hospitals and Medical Institutions</h3>
            <ul>
                <li onclick="showRoadmap('Hospital Administrator')">Hospital Administrator</li>
                <li onclick="showRoadmap('Clinical Operations Manager')">Clinical Operations Manager</li>
                <li onclick="showRoadmap('Medical Consultant')">Medical Consultant</li>
                <li onclick="showRoadmap('Medical Coder')">Medical Coder</li>
                <li onclick="showRoadmap('Medical Auditor')">Medical Auditor</li>
            </ul>
        </div>
         <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-hospital"></i></div>
            <h3>Health and Wellness Companies</h3>
            <ul>
          <li onclick="showRoadmap('Health Consultant')">Health Consultant</li>
        <li onclick="showRoadmap('Nutrition Specialist')">Nutrition Specialist</li>
        <li onclick="showRoadmap('Fitness Consultant')">Fitness Consultant</li>
        <li onclick="showRoadmap('Wellness Program Manager')">Wellness Program Manager</li>
        <li onclick="showRoadmap('Health Coach')">Health Coach</li>
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

<!-- JS Section -->
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script>
    AOS.init();

    function toggleDarkMode() {
        document.body.classList.toggle('dark-mode');
    }

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

    function closePopup() {
        document.getElementById('overlay').style.display = "none";
        document.getElementById('popup').style.display = "none";
    }

    function showRoadmap(role) {
        var roadmaps = {
            // [Insert all your previous mappings from Healthcare IT, Equipment, Forensic, Pharma, Hospitals...]
            // (Same as you started before)
            "Healthcare Software Developer": "1. Obtain a degree in Computer Science or Health Informatics...\n2. Gain healthcare tech experience...\n3. Learn EHR/EMR systems...",
            "Medical Systems Analyst": "1. Study Health Information Management...\n2. Understand clinical workflows...",
            "Health Information Manager": "1. Degree in Health Information Management...\n2. Medical coding knowledge...",
            "Medical Data Analyst": "1. Study Data Science, Biostatistics...\n2. Master SQL, Python...",
            "Telemedicine Consultant": "1. Degree in Healthcare Administration...\n2. Learn telehealth platforms...",
            "Biomedical Engineer": "1. Biomedical Engineering Degree...\n2. Internship with device companies...",
            "Product Manager (Healthcare Devices)": "1. Biomedical or Business Degree...\n2. Understand regulatory affairs...",
            "Field Service Engineer": "1. Technical diploma/degree...\n2. Medical device servicing training...",
            "Sales Executive (Healthcare Equipment)": "1. Science or business graduate...\n2. Build client networks...",
            "Quality Assurance Analyst": "1. Learn ISO standards, audits...",
            "Forensic Medical Examiner": "1. MBBS + MD in Forensic Medicine...\n2. Work on medico-legal cases...",
            "Medical Expert Witness": "1. Medical specialization...\n2. Testify in court cases...",
            "Legal Advisor (Healthcare)": "1. Law degree + healthcare law focus...\n2. Advise on compliance...",
            "Medical Legal Consultant": "1. MBBS or Law Degree...\n2. Certification in medico-legal...",
            "Medical Representative": "1. B.Sc, B.Pharm background...\n2. Sales training...",
            "Clinical Research Associate": "1. Life Sciences graduate...\n2. Clinical trial management...",
            "Drug Safety Associate": "1. Pharmacovigilance skills...\n2. ADR monitoring...",
            "Regulatory Affairs Specialist": "1. Pharma/Biotech background...\n2. Drug approval documentation...",
            "Pharmaceutical Sales Manager": "1. MBA preferred...\n2. Sales team leadership...",
            "Hospital Administrator": "1. Healthcare Admin degree...\n2. Manage hospital systems...",
            "Clinical Operations Manager": "1. Nursing/Life Sciences degree...\n2. Clinical team management...",
            "Medical Consultant": "1. MBBS with specialization...\n2. Advising firms...",
            "Medical Coder": "1. Learn ICD-10, CPT coding...\n2. Certification in medical coding...",
            "Health Consultant": "1. Obtain a degree in Public Health, Health Education, or a related field.\n2. Gain experience in healthcare or wellness consulting.\n3. Develop skills in client communication, health assessment, and program planning.\n4. Earn certifications like CHES (Certified Health Education Specialist).\n5. Work with organizations to design and implement health initiatives.",

            "Nutrition Specialist": "1. Earn a Bachelor's degree in Nutrition, Dietetics, or related sciences.\n2. Complete an internship or supervised practice.\n3. Obtain certifications like Registered Dietitian (RD) or Certified Nutrition Specialist (CNS).\n4. Specialize in clinical, sports, or holistic nutrition if desired.\n5. Work in hospitals, private clinics, wellness centers, or corporate settings.",

            "Fitness Consultant": "1. Study Exercise Science, Kinesiology, or related fields.\n2. Get certified (e.g., ACE, NASM, ACSM certifications).\n3. Build strong knowledge in fitness assessment, workout planning, and injury prevention.\n4. Gain experience through internships, personal training, or working with gyms.\n5. Offer consulting to individuals, gyms, or corporate wellness programs.",

            "Wellness Program Manager": "1. Obtain a degree in Health Promotion, Public Health, or Human Resources.\n2. Learn about workplace wellness, mental health programs, and employee engagement.\n3. Get experience in managing health initiatives or wellness campaigns.\n4. Certifications like CWWS (Certified Worksite Wellness Specialist) are a plus.\n5. Manage wellness programs for corporations, hospitals, or insurance companies.",

            "Health Coach": "1. Complete a Health Coaching Certification (like NBHWC, ACE Health Coach).\n2. Understand behavior change theories, motivational interviewing, and coaching techniques.\n3. Build expertise in areas like nutrition, exercise, and mental wellness.\n4. Gain practical experience coaching clients.\n5. Work independently, with clinics, or corporate wellness programs.",

            "Medical Auditor": "1. Medical auditing training...\n2. Hospital record audits..."
        };
        document.getElementById('popup-content').innerText = roadmaps[role] || "Career roadmap not available yet.";
        document.getElementById('overlay').style.display = "block";
        document.getElementById('popup').style.display = "block";
    }
</script>

</body>
</html>
