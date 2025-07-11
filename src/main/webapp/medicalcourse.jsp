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
            <div class="icon-container"><i class="fas fa-stethoscope"></i></div>
            <h3>MBBS (Bachelor of Medicine, Bachelor of Surgery)</h3>
            <ul>
                 <li onclick="showRoadmap('General Physician')">General Physician</li>
                <li onclick="showRoadmap('Surgeon')">Surgeon</li>
                <li onclick="showRoadmap('Paediatrician')">Paediatrician</li>
                <li onclick="showRoadmap('Obstetrician & Gynaecologist')">Obstetrician & Gynaecologist</li>
                <li onclick="showRoadmap('Cardiologist')">Cardiologist</li>
                            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-tooth"></i></div>
            <h3>Dental Surgery (BDS)</h3>
            <ul>
        
             <li onclick="showRoadmap('General Dentist')">General Dentist</li>
        <li onclick="showRoadmap('Orthodontist')">Orthodontist</li>
        <li onclick="showRoadmap('Oral Surgeon')">Oral Surgeon</li>
        <li onclick="showRoadmap('Prosthodontist')">Prosthodontist</li>
        <li onclick="showRoadmap('Pedodontist')">Pedodontist</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-file-medical"></i></div>
            <h3>Nursing</h3>
                            
                  <ul>
           <li onclick="showRoadmap('Registered Nurse')">Registered Nurse</li>
        <li onclick="showRoadmap('Neonatal Nurse')">Neonatal Nurse</li>
        <li onclick="showRoadmap('Clinical Nurse Specialist')">Clinical Nurse Specialist</li>
        <li onclick="showRoadmap('Operating Room Nurse')">Operating Room Nurse</li>
        <li onclick="showRoadmap('Emergency Room Nurse')">Emergency Room Nurse</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-pills"></i></div>
            <h3>Pharmacy (B.Pharm)</h3>
            <ul>
         
                <li onclick="showRoadmap('Pharmacist')">Pharmacist</li>
        <li onclick="showRoadmap('Clinical Pharmacist')">Clinical Pharmacist</li>
        <li onclick="showRoadmap('Pharmaceutical Researcher')">Pharmaceutical Researcher</li>
        <li onclick="showRoadmap('Pharmacy Manager')">Pharmacy Manager</li>
        <li onclick="showRoadmap('Drug Safety Officer')">Drug Safety Officer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-person-cane"></i></div>
            <h3>Physiotherapy</h3>
            <ul>
   
       <li onclick="showRoadmap('Physiotherapist')">Physiotherapist</li>
        <li onclick="showRoadmap('Sports Physiotherapist')">Sports Physiotherapist</li>
        <li onclick="showRoadmap('Orthopaedic Physiotherapist')">Orthopaedic Physiotherapist</li>
        <li onclick="showRoadmap('Neurological Physiotherapist')">Neurological Physiotherapist</li>
        <li onclick="showRoadmap('Pediatric Physiotherapist')">Pediatric Physiotherapist</li>
               </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-hospital"></i></div>
            <h3>Medical Laboratory Technology</h3>
            <ul>
     
  <li onclick="showRoadmap('Medical Lab Technician')">Medical Lab Technician</li>
        <li onclick="showRoadmap('Clinical Pathologist')">Clinical Pathologist</li>
        <li onclick="showRoadmap('Microbiologist')">Microbiologist</li>
        <li onclick="showRoadmap('Hematologist')">Hematologist</li>
        <li onclick="showRoadmap('Immunologist')">Immunologist</li>
                </ul>
        </div>

        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-heartbeat"></i></div>
            <h3>Radiology</h3>
            <ul>
                       <li onclick="showPopup('Radiologist')">Radiologist</li>
        <li onclick="showRoadmap('X-Ray Technician')">X-Ray Technician</li>
        <li onclick="showRoadmap('CT Scan Technician')">CT Scan Technician</li>
        <li onclick="showRoadmap('MRI Technician')">MRI Technician</li>
        <li onclick="showRoadmap('Ultrasound Technician')">Ultrasound Technician</li>
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
            // MBBS Roles
            "General Physician": "Complete MBBS ➔ Internship ➔ Obtain Medical License ➔ Start Practice or Join Hospital as Physician.",
            "Surgeon": "Complete MBBS ➔ Pursue MS in General Surgery ➔ Specialized Surgical Training ➔ Fellowship (Optional) ➔ Practice as Surgeon.",
            "Paediatrician": "Complete MBBS ➔ MD in Paediatrics ➔ Residency Training ➔ Start Practice in Hospitals/Clinics.",
            "Obstetrician & Gynaecologist": "Complete MBBS ➔ MS/MD in Obstetrics & Gynaecology ➔ Specialized Training ➔ Start Practice.",
            "Cardiologist": "Complete MBBS ➔ MD in Internal Medicine ➔ DM in Cardiology ➔ Practice as Cardiologist.",

            // Dental Surgery (BDS) Roles
            "General Dentist": "Complete BDS ➔ Obtain Dental License ➔ Start Practice or Join Clinic as General Dentist.",
            "Orthodontist": "Complete BDS ➔ MDS in Orthodontics ➔ Specialized Training ➔ Start Practice.",
            "Oral Surgeon": "Complete BDS ➔ MDS in Oral and Maxillofacial Surgery ➔ Clinical Experience ➔ Practice.",
            "Prosthodontist": "Complete BDS ➔ MDS in Prosthodontics ➔ Hands-on Prosthetic Training ➔ Start Clinic or Join Hospitals.",
            "Pedodontist": "Complete BDS ➔ MDS in Pedodontics ➔ Pediatric Dental Training ➔ Practice as Child Specialist Dentist.",

            // Nursing Roles
            "Registered Nurse": "Complete B.Sc Nursing ➔ Registration with Nursing Council ➔ Join Hospitals or Clinics.",
            "Neonatal Nurse": "Complete B.Sc Nursing ➔ Specialized Neonatal Care Training ➔ Work in NICU Units.",
            "Clinical Nurse Specialist": "Complete B.Sc Nursing ➔ Obtain Clinical Specialization Certification ➔ Work in Hospitals.",
            "Operating Room Nurse": "Complete B.Sc Nursing ➔ OR Nurse Certification ➔ Work in Operation Theatres.",
            "Emergency Room Nurse": "Complete B.Sc Nursing ➔ Emergency Nursing Training ➔ Work in ER Departments.",

            // Pharmacy Roles
            "Pharmacist": "Complete B.Pharm ➔ Obtain Pharmacy License ➔ Work in Hospitals or Retail Pharmacy.",
            "Clinical Pharmacist": "Complete B.Pharm ➔ Pharm.D (Doctor of Pharmacy) ➔ Specialize in Clinical Pharmacy ➔ Work in Hospitals.",
            "Pharmaceutical Researcher": "Complete B.Pharm ➔ M.Pharm (Pharmaceutical Sciences) ➔ Work in R&D Labs.",
            "Pharmacy Manager": "Complete B.Pharm ➔ Gain Experience ➔ Manage Pharmacy Operations.",
            "Drug Safety Officer": "Complete B.Pharm ➔ Certification in Pharmacovigilance ➔ Work in Drug Safety Roles.",

            // Physiotherapy Roles
            "Physiotherapist": "Complete BPT ➔ Obtain Registration ➔ Start Practice in Clinics or Hospitals.",
            "Sports Physiotherapist": "Complete BPT ➔ MPT in Sports Physiotherapy ➔ Work with Sports Teams or Rehab Centers.",
            "Orthopaedic Physiotherapist": "Complete BPT ➔ MPT in Orthopaedics ➔ Specialize in Bone and Joint Rehabilitation.",
            "Neurological Physiotherapist": "Complete BPT ➔ MPT in Neurology ➔ Work with Stroke, Parkinson's Patients.",
            "Pediatric Physiotherapist": "Complete BPT ➔ MPT in Pediatrics ➔ Specialize in Child Physical Therapy.",

            // Medical Laboratory Technology Roles
            "Medical Lab Technician": "Complete BMLT ➔ Obtain Certification ➔ Work in Diagnostic Labs or Hospitals.",
            "Clinical Pathologist": "Complete MBBS ➔ MD in Pathology ➔ Work in Clinical Labs.",
            "Microbiologist": "Complete B.Sc/M.Sc in Microbiology ➔ Work in Labs, Research, or Hospitals.",
            "Hematologist": "Complete MBBS ➔ MD in Pathology ➔ Fellowship in Hematology ➔ Work in Hospitals.",
            "Immunologist": "Complete MBBS ➔ MD/PhD in Immunology ➔ Research or Clinical Roles.",

            // Radiology Roles
            "Radiologist": "Complete MBBS ➔ MD in Radiology ➔ Specialized Imaging Training ➔ Work in Hospitals or Clinics.",
            "X-Ray Technician": "Complete Diploma/Certificate in X-Ray Technology ➔ Work in Diagnostic Centers.",
            "CT Scan Technician": "Complete Diploma/Training in CT Scan Operations ➔ Work in Imaging Centers.",
            "MRI Technician": "Complete Specialized Training in MRI Technology ➔ Work in Hospitals/Private Labs.",
            "Ultrasound Technician": "Complete Diploma in Ultrasound Technology ➔ Certification ➔ Work in Diagnostic Units."
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
