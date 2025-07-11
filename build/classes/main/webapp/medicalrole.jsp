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
            <h3>Healthcare and Clinical Roles</h3>
            <ul>
             <li onclick="showRoadmap('Software Engineer')">Software Engineer</li>
                <li onclick="showRoadmap('General Physician')">General Physician</li>
                <li onclick="showRoadmap('Pediatrician')">Pediatrician</li>
                <li onclick="showRoadmap('Obstetrician & Gynaecologist')">Obstetrician & Gynaecologist</li>
                <li onclick="showRoadmap('Cardiologist')">Cardiologist</li>
                <li onclick="showRoadmap('Neurologist')">Neurologist</li>
                <li onclick="showRoadmap('Orthopedic Specialist')">Orthopedic Specialist</li>
               
                            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-flask"></i></div>
            <h3>Medical Research and Academia</h3>
            <ul>
        
               <li onclick="showRoadmap('Medical Research Scientist')">Medical Research Scientist</li>
                <li onclick="showRoadmap('Clinical Research Associate')">Clinical Research Associate</li>
                <li onclick="showRoadmap('Professor of Medicine')">Professor of Medicine</li>
                <li onclick="showRoadmap('Medical Writer')">Medical Writer</li>
                <li onclick="showRoadmap('Biostatistician')">Biostatistician</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-file-medical"></i></div>
            <h3>Medical Administration</h3>
                            
                  <ul>
                <li onclick="showRoadmap('Hospital Administrator')">Hospital Administrator</li>
                <li onclick="showRoadmap('Medical Director')">Medical Director</li>
                <li onclick="showRoadmap('Clinical Operations Manager')">Clinical Operations Manager</li>
                <li onclick="showRoadmap('Healthcare Consultant')">Healthcare Consultant</li>
                <li onclick="showRoadmap('Public Health Officer')">Public Health Officer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-x-ray"></i></div>
            <h3>Medical Technology and Diagnostics</h3>
            <ul>
         
                <li onclick="showRoadmap('Radiologist')">Radiologist</li>
                <li onclick="showRoadmap('Sonographer')">Sonographer</li>
                <li onclick="showRoadmap('CT Scan Technician')">CT Scan Technician</li>
                <li onclick="showRoadmap('MRI Technician')">MRI Technician</li>
                <li onclick="showRoadmap('Pathologist')">Pathologist</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-pills"></i></div>
            <h3>Pharmaceutical and Drug Development</h3>
            <ul>
   
       <li onclick="showRoadmap('Pharmaceutical Scientist')">Pharmaceutical Scientist</li>
                <li onclick="showRoadmap('Clinical Research Associate')">Clinical Research Associate</li>
                <li onclick="showRoadmap('Pharmacovigilance Officer')">Pharmacovigilance Officer</li>
                <li onclick="showRoadmap('Regulatory Affairs Manager')">Regulatory Affairs Manager</li>
                <li onclick="showRoadmap('Pharmaceutical Sales Representative')">Pharmaceutical Sales Representative</li>
               </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-hospital"></i></div>
            <h3>Public Health and Epidemiology</h3>
            <ul>
     
   <li onclick="showPopup('Public Health Specialist')">Public Health Specialist</li>
                <li onclick="showRoadmap('Epidemiologist')">Epidemiologist</li>
                <li onclick="showRoadmap('Health Policy Analyst')">Health Policy Analyst</li>
                <li onclick="showRoadmap('Global Health Consultant')">Global Health Consultant</li>
                <li onclick="showRoadmap('Community Health Officer')">Community Health Officer</li>
                </ul>
        </div>

        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-fingerprint"></i></div>
            <h3>Forensic Medicine</h3>
            <ul>
                      <li onclick="showRoadmap('Forensic Medical Examiner')">Forensic Medical Examiner</li>
                <li onclick="showRoadmap('Forensic Pathologist')">Forensic Pathologist</li>
                <li onclick="showRoadmap('Forensic Toxicologist')">Forensic Toxicologist</li>
                <li onclick="showRoadmap('Crime Scene Investigator (Medical)')">Crime Scene Investigator (Medical)</li>
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
        'Software Engineer': 'A Software Engineer designs, develops, and maintains software systems and applications. A degree in Computer Science or related fields is essential, with skills in programming languages (Java, Python, C++), data structures, algorithms, and software development methodologies. Career progression often involves moving into roles such as Software Architect, Lead Developer, or CTO. Continuous learning in new technologies is key to staying competitive in this field.',
        'General Physician': 'A General Physician provides primary healthcare services, diagnosing and treating a variety of medical conditions. A medical degree (MBBS) is required, along with strong diagnostic skills, communication abilities, and knowledge of general medicine. Physicians often specialize after years of practice, moving into areas such as Pediatrics, Geriatrics, or Emergency Medicine. Continuing medical education is vital to stay updated with the latest advancements in healthcare.',
        'Pediatrician': 'Pediatricians specialize in the care of infants, children, and adolescents, managing a wide range of medical conditions. They need to complete medical school followed by a pediatric residency program. Pediatricians work closely with families and often specialize in areas like Pediatric Cardiology, Pediatric Endocrinology, or Neonatology. Compassion, excellent communication skills, and a deep understanding of child development are essential.',
        'Obstetrician & Gynaecologist': 'Obstetricians & Gynaecologists specialize in women’s health, with a focus on pregnancy, childbirth, and the diagnosis and treatment of disorders related to the female reproductive system. The path to becoming an Obstetrician & Gynaecologist includes completing a medical degree followed by a residency in obstetrics and gynecology. Career progression can involve roles in academic medicine, surgery, or reproductive endocrinology.',
        'Cardiologist': 'Cardiologists specialize in diagnosing and treating heart and blood vessel conditions. A medical degree followed by a cardiology fellowship is required. Cardiologists can sub-specialize in areas such as interventional cardiology, electrophysiology, or heart failure. They work in hospitals, private clinics, or academic settings, and require excellent analytical skills, attention to detail, and a deep understanding of the cardiovascular system.',
        'Neurologist': 'Neurologists specialize in diagnosing and treating disorders of the nervous system, including the brain, spinal cord, and peripheral nerves. A neurologist typically completes medical school followed by a neurology residency. Subspecialties include stroke, epilepsy, neuromuscular disorders, and movement disorders. Neurologists must stay current with the latest advancements in neuroscience and employ strong diagnostic skills.',
        'Orthopedic Specialist': 'Orthopedic specialists diagnose and treat musculoskeletal issues, including bones, joints, muscles, and ligaments. To become an orthopedic specialist, one must complete medical school followed by orthopedic surgery residency. Many orthopedic surgeons specialize in areas like sports medicine, spine surgery, or joint replacement. Physical therapy and rehabilitation are crucial aspects of treatment.',
        'Medical Research Scientist': 'Medical Research Scientists conduct studies to advance medical knowledge and improve health treatments. Typically, they hold a PhD in biomedical sciences or a related field. They work in labs, universities, or research institutes, investigating diseases, treatments, and medical innovations. Critical thinking, advanced research skills, and the ability to analyze data are essential. Career progression may involve moving into academia or industry leadership roles.',
        'Clinical Research Associate': 'Clinical Research Associates (CRAs) manage and monitor clinical trials, ensuring that trials follow regulatory requirements and ethical guidelines. A background in life sciences is essential, with many CRAs holding a degree in biology, pharmacology, or related fields. CRAs work with pharmaceutical companies, contract research organizations (CROs), and healthcare providers. Strong organizational, communication, and analytical skills are crucial.',
        'Professor of Medicine': 'Professors of Medicine teach medical students and conduct research in their specialized field. They typically hold a medical degree (MD) along with advanced academic qualifications (e.g., PhD). A career in academia involves publishing research, securing grants, and mentoring the next generation of medical professionals. Professors may also contribute to medical policy or clinical practice.',
        'Medical Writer': 'Medical Writers create accurate, well-researched content for scientific papers, medical journals, and healthcare documentation. A strong background in life sciences or medicine is essential, along with expertise in writing. Medical Writers need to communicate complex medical concepts in a clear and concise manner for both scientific and general audiences. Careers may include writing for pharmaceutical companies, government agencies, or medical publications.',
        'Biostatistician': 'Biostatisticians apply statistical methods to analyze data in healthcare and public health research. They require a degree in statistics, biostatistics, or mathematics, along with expertise in programming and data analysis. They work in universities, research institutes, or healthcare organizations. Their work involves analyzing data from clinical trials, epidemiological studies, and population health research.',
        'Hospital Administrator': 'Hospital Administrators oversee the operations of healthcare facilities, ensuring that they run efficiently and comply with regulations. A background in healthcare management, business administration, or public health is essential. Hospital administrators are responsible for financial management, staffing, patient care quality, and regulatory compliance. Career progression can lead to higher executive roles such as Chief Executive Officer (CEO) of a healthcare system.',
        'Medical Director': 'Medical Directors lead and oversee clinical services within healthcare organizations, ensuring that care delivery is effective and safe. They typically hold a medical degree with additional leadership or management training. Medical Directors work in hospitals, clinics, or insurance companies. They focus on improving patient care standards, managing clinical teams, and ensuring compliance with healthcare regulations.',
        'Clinical Operations Manager': 'Clinical Operations Managers oversee the daily operations of clinical settings, ensuring smooth processes and quality care. A background in healthcare management is typically required. They manage staff, budgets, and patient care operations. Key skills include leadership, problem-solving, and communication. Many Clinical Operations Managers advance into senior management roles or healthcare consulting.',
        'Healthcare Consultant': 'Healthcare Consultants advise healthcare organizations on improving performance, reducing costs, and optimizing patient care. A background in healthcare, business administration, or healthcare management is beneficial. Healthcare consultants work with hospitals, insurance companies, and government agencies. Strong analytical, problem-solving, and communication skills are essential for success in this field.',
        'Public Health Officer': 'Public Health Officers work to improve public health by creating and implementing policies to reduce disease risk and promote healthy behaviors. A degree in public health or a related field is required. They work in government agencies, international organizations, or nonprofit groups. Key responsibilities include disease surveillance, health education, and emergency preparedness.',
        'Radiologist': 'Radiologists use medical imaging technologies like X-rays, MRIs, and CT scans to diagnose and treat medical conditions. A medical degree followed by specialized training in radiology is required. Radiologists often specialize in areas such as pediatric radiology, interventional radiology, or neuroimaging. They work closely with other healthcare providers to create treatment plans based on imaging results.',
        'Sonographer': 'Sonographers use ultrasound technology to produce images of patients’ internal organs. To become a Sonographer, one must complete a degree in diagnostic medical sonography. Sonographers work in hospitals, clinics, and imaging centers. Subspecialties include abdominal, obstetric, and cardiovascular sonography.',
        'CT Scan Technician': 'CT Scan Technicians operate CT scanners to capture detailed images of the body’s internal structures. A degree in radiologic technology with certification in CT scanning is required. CT Scan Technicians often specialize in areas like neuroimaging or musculoskeletal imaging.',
        'MRI Technician': 'MRI Technicians use MRI machines to capture detailed images of soft tissues in the body. Certification in MRI technology is required, along with a background in radiologic technology. MRI Technicians work in hospitals, outpatient clinics, and diagnostic imaging centers.',
        'Pathologist': 'Pathologists analyze tissues, cells, and bodily fluids to diagnose diseases and determine causes of death. They must complete medical school followed by a residency in pathology. Pathologists often specialize in areas like forensic pathology, hematopathology, or molecular pathology.',
        'Pharmaceutical Scientist': 'Pharmaceutical Scientists conduct research to discover new drugs and improve existing ones. A PhD in pharmacology, chemistry, or a related field is required. Pharmaceutical scientists work in research labs, pharmaceutical companies, and universities. Their work involves testing drug efficacy, safety, and dosage.',
        'Clinical Research Associate': 'Clinical Research Associates (CRAs) manage and monitor clinical trials to ensure that they are conducted in compliance with regulatory standards. A degree in life sciences, along with certifications in clinical research, is required. CRAs work with pharmaceutical companies or contract research organizations (CROs).',
        'Pharmacovigilance Officer': 'Pharmacovigilance Officers monitor the safety of pharmaceutical products and report adverse effects. A background in pharmacology, medicine, or life sciences is required. Pharmacovigilance Officers work in pharmaceutical companies or regulatory agencies.',
        'Regulatory Affairs Manager': 'Regulatory Affairs Managers ensure that medical products comply with government regulations. A degree in life sciences or law is beneficial. Regulatory Affairs Managers work with pharmaceutical companies, medical device manufacturers, or healthcare organizations.',
        'Pharmaceutical Sales Representative': 'Pharmaceutical Sales Representatives promote and sell pharmaceutical products to healthcare providers. A degree in life sciences or business is helpful. Sales Representatives are responsible for building relationships with healthcare professionals and promoting new products.',
        'Public Health Specialist': 'Public Health Specialists work on disease prevention and health promotion initiatives. A degree in public health or a related field is required. They design and implement programs to improve community health, work with health departments, and provide education on health issues.',
        'Epidemiologist': 'Epidemiologists study the distribution and determinants of health and diseases in populations. A degree in epidemiology or public health is required. Epidemiologists work in research institutes, government agencies, and international health organizations.',
        'Health Policy Analyst': 'Health Policy Analysts research and analyze healthcare policies, providing recommendations for improvement. A degree in public health, health policy, or economics is typically required. They work in government agencies, think tanks, and nonprofit organizations.',
        'Global Health Consultant': 'Global Health Consultants provide advice on public health issues at the international level. A background in global health, international development, or public health is essential. They work with international organizations, governments, and NGOs to address health disparities worldwide.',
        'Community Health Officer': 'Community Health Officers work to improve the health of local communities. A degree in public health or health education is required. They focus on health education, disease prevention, and improving access to healthcare services.',
        'Forensic Medical Examiner': 'Forensic Medical Examiners perform autopsies and investigate causes of death in cases of suspicious deaths. They must complete a medical degree followed by a forensic pathology residency. Forensic Medical Examiners often work with law enforcement and legal teams to provide expert testimony.',
        'Forensic Pathologist': 'Forensic Pathologists specialize in determining the cause of death by examining bodies. A medical degree and forensic pathology training are required. They work closely with law enforcement in criminal investigations.',
        'Forensic Toxicologist': 'Forensic Toxicologists analyze bodily fluids and tissues for the presence of toxins, drugs, and other substances. They need a degree in toxicology or forensic science.',
        'Crime Scene Investigator (Medical)': 'Crime Scene Investigators (Medical) work with law enforcement to gather medical evidence from crime scenes. They require training in forensic science, criminal justice, and medical procedures.'
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
