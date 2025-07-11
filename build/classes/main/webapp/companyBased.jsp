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
        /* [Your full CSS you already had is kept as it is] */
        body { margin: 0; font-family: 'Segoe UI', sans-serif; background-color: #f4f4f4; color: #333; }
        .dark-mode { background-color: #1e1e1e; color: #eee; }
        .container { max-width: 1100px; margin: 100px auto 50px; padding: 20px; }
        h1 { text-align: center; margin-bottom: 30px; font-size: 2.5rem; }
        .search-bar { text-align: center; margin-bottom: 30px; }
        .search-bar input { padding: 10px 15px; width: 300px; font-size: 16px; border: 1px solid #ccc; border-radius: 25px; }
        .card-container { display: flex; flex-wrap: wrap; gap: 20px; justify-content: space-between; margin-top: 20px; }
        .job-card { background-color: white; border-radius: 12px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); padding: 20px; transition: transform 0.3s ease; cursor: pointer; width: 250px; }
        .job-card:hover { transform: translateY(-5px); }
        .dark-mode .job-card { background-color: #2c2c2c; color: #fff; }
        .icon-container { font-size: 50px; color: #007bff; margin-bottom: 15px; text-align: center; }
        .job-card h3 { font-size: 1.5rem; margin-bottom: 10px; text-align: center; }
        .job-card ul { list-style: none; padding-left: 0; }
        .job-card li { padding: 6px 0; color: #555; cursor: pointer; text-align: center; }
        .job-card li:hover { text-decoration: underline; color: #007bff; }
        .dark-toggle { position: fixed; top: 20px; right: 20px; z-index: 1000; background: #007bff; color: white; border: none; padding: 10px 14px; border-radius: 30px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); }
        #overlay { position: fixed; top: 0; left: 0; width: 100vw; height: 100vh; background-color: rgba(0, 0, 0, 0.6); z-index: 998; display: none; }
        .popup { position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background: white; padding: 30px; border-radius: 15px; box-shadow: 0 0 15px rgba(0,0,0,0.3); z-index: 999; max-width: 500px; width: 90%; display: none; }
        .popup .close-btn { margin-top: 20px; text-align: right; }
        .popup button { padding: 8px 14px; border: none; background-color: #007bff; color: white; border-radius: 6px; cursor: pointer; }
        .dark-mode .popup { background-color: #333; color: white; }
        @media (max-width: 768px) { .search-bar input { width: 90%; } .job-card { width: 100%; } }
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
        <!-- [Your full company/job cards are kept here unchanged...] -->
        
        <%-- Sample --%>
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-laptop-code"></i></div>
            <h3>Tata Consultancy Services (TCS)</h3>
            <ul>
                <li onclick="showRoadmap('Software Developer')">Software Developer</li>
                <li onclick="showRoadmap('Business Analyst')">Business Analyst</li>
                <li onclick="showRoadmap('Project Manager')">Project Manager</li>
            </ul>
        </div>
        
         <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-network-wired"></i></div>
            <h3>Infosys</h3>
            <ul>
                <li onclick="showRoadmap('System Engineer')">System Engineer</li>
                <li onclick="showRoadmap('Data Analyst')"> Data Analyst</li>
                <li onclick="showRoadmap(' Consultant')">Consultant</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-briefcase"></i></div>
            <h3>Wipro</h3>
            <ul>
                <li onclick="showRoadmap('Cloud Engineer')">Cloud Engineer</li>
                <li onclick="showRoadmap('IT Support Specialist')">IT Support Specialist</li>
                <li onclick="showRoadmap('Cybersecurity Analyst')">Cybersecurity Analyst</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-building"></i></div>
            <h3>HDFC Bank</h3>
            <ul>
                <li onclick="showRoadmap('Relationship Manager')">Relationship Manager</li>
                <li onclick="showRoadmap('Credit Analyst')">Credit Analyst</li>
                <li onclick="showRoadmap('Branch Manager')">Branch Manager</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-university"></i></div>
            <h3>ICICI Bank</h3>
            <ul>
                <li onclick="showRoadmap('Loan Officer')">Loan Officer</li>
                <li onclick="showRoadmap('Financial Advisor')">Financial Advisor</li>
                <li onclick="showRoadmap('Account Manager')">Account Manager</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-box-open"></i></div>
            <h3>Deloitte</h3>
            <ul>
                <li onclick="showRoadmap('Auditor')">Auditor</li>
                <li onclick="showRoadmap('Consulting Analyst')">Consulting Analyst</li>
                <li onclick="showRoadmap('Tax Specialist')"> Tax Specialist</li>
            </ul>
        </div>

        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-shopping-cart"></i></div>
            <h3>Amazon</h3>
            <ul>
                <li onclick="showRoadmap('Operations Manager')">Operations Manager</li>
                <li onclick="showRoadmap('Warehouse Supervisor')">Warehouse Supervisor</li>
                <li onclick="showRoadmap('Data Scientist')">Data Scientist</li>
            </ul>
        </div>
         <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-cloud"></i></div>
            <h3>Google</h3>
            <ul>
                <li onclick="showRoadmap('Software Engineer')">Software Engineer</li>
                <li onclick="showRoadmap('Product Manager')">Product Manager</li>
                <li onclick="showRoadmap('UX Designer')">UX Designer</li>
            </ul>
        </div>
         <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fas fa-shopping-cart"></i></div>
            <h3>Flipkart</h3>
            <ul>
                <li onclick="showRoadmap('Logistics Manager')">Logistics Managerr</li>
                <li onclick="showRoadmap('Category Manager')">Category Manager</li>
                <li onclick="showRoadmap('Data Engineer')">Data Engineer</li>
            </ul>
        </div>
         <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-building"></i></div>
            <h3>Reliance Industries</h3>
            <ul>
                <li onclick="showRoadmap('Sales Executive')">Sales Executive</li>
                <li onclick="showRoadmap('Marketing Manager')">Marketing Manager</li>
                <li onclick="showRoadmap('Energy Analyst')">Energy Analyst</li>
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
        'Software Developer': 'Steps to become a Software Developer: 1. Earn a Bachelor’s degree in CS or related field. 2. Learn programming languages (Java, Python). 3. Build projects and internships.',
        'Business Analyst': 'Steps to become a Business Analyst: 1. Bachelor’s in Business, IT, or related. 2. Learn data analysis tools (SQL, Excel). 3. Certifications like CBAP.',
        'Project Manager': 'Steps to become a Project Manager: 1. Start in technical role. 2. Manage small projects. 3. Get PMP certification.',

        'System Engineer': '1. Degree in Computer Science. 2. Learn system design and networking. 3. Clear Infosys tests.',
        'Data Analyst': '1. Study Statistics or CS. 2. Skills: SQL, Excel, Power BI. 3. Build data portfolios.',
        'Consultant': '1. Business or Finance degree. 2. Develop problem-solving skills. 3. Consulting internships.',

        'Cloud Engineer': '1. Learn AWS/Azure/GCP. 2. Get certifications. 3. Practice cloud projects.',
        'IT Support Specialist': '1. Bachelor’s in IT. 2. Technical troubleshooting skills. 3. Start entry-level support roles.',
        'Cybersecurity Analyst': '1. Learn security concepts. 2. Certifications like CEH or Security+. 3. Gain practical cybersecurity experience.',

        'Relationship Manager': '1. Finance or Marketing degree. 2. Client management skills. 3. Grow from sales to RM roles.',
        'Credit Analyst': '1. Finance or Accounting background. 2. Risk assessment skills. 3. Banking internships.',
        'Branch Manager': '1. Experience in banking roles. 2. Leadership training. 3. Certifications in banking.',

        'Loan Officer': '1. Study Finance or Business. 2. Lending and credit skills. 3. Work as assistant officer first.',
        'Financial Advisor': '1. Bachelor’s in Finance. 2. Pass CFP exams. 3. Build client investment portfolios.',
        'Account Manager': '1. Study Marketing or Business. 2. Develop communication skills. 3. Grow in client handling.',

        'Auditor': '1. Accounting/Finance degree. 2. CPA/CA/CIA certification. 3. Gain auditing experience.',
        'Consulting Analyst': '1. Business/Economics background. 2. Research and analytics skills. 3. Consulting internships.',
        'Tax Specialist': '1. Degree in Accounting/Law. 2. Learn tax codes. 3. Certifications like CPA.',

        'Operations Manager': '1. Business/Supply Chain degree. 2. Leadership and logistics skills. 3. Progress in operations roles.',
        'Warehouse Supervisor': '1. Logistics or Business degree. 2. Inventory and team management skills. 3. Grow from floor roles.',

        'Data Scientist': '1. CS, Math or Stats degree. 2. Learn ML, Python, Data Analysis. 3. Build data science projects.',
        'Software Engineer': '1. CS degree. 2. Strong programming and system design skills. 3. Apply to tech companies.',
        'Product Manager': '1. Business/Engineering degree. 2. Learn product lifecycle management. 3. Gain product internships.',
        'UX Designer': '1. Design/HCI background. 2. Skills: wireframing, prototyping. 3. Build UX portfolios.',

        'Logistics Manager': '1. Supply Chain Management degree. 2. Logistics and operations expertise. 3. Entry-level logistics roles.',
        'Category Manager': '1. Business or Marketing degree. 2. Merchandising and buying experience. 3. Grow in e-commerce sector.',
        'Data Engineer': '1. Computer Science degree. 2. Skills: SQL, Big Data tools. 3. Work on data pipeline projects.',

        'Sales Executive': '1. Business degree. 2. Sales and communication skills. 3. Field experience.',
        'Marketing Manager': '1. Marketing degree. 2. Campaign management and branding skills. 3. Progress from executive roles.',
        'Energy Analyst': '1. Engineering or Energy studies. 2. Knowledge of energy markets. 3. Analytical projects.'
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
