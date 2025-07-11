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
            <h3>Bachelor of Commerce (B.Com)</h3>
            <ul>
                <li onclick="showRoadmap('Accountant')">Accountant</li>
                <li onclick="showRoadmap('Tax Consultant')">Tax Consultant</li>
                <li onclick="showRoadmap('Financial Planner')">Financial Planner</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-briefcase"></i></div>
            <h3>Master of Commerce (M.Com)</h3>
            <ul>
                <li onclick="showRoadmap('Auditor')">Auditor</li>
                <li onclick="showRoadmap('Cost Accountant')"> Cost Accountant</li>
                <li onclick="showRoadmap('Corporate Treasurer')">Corporate Treasurer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-calculator"></i></div>
            <h3>Chartered Accountant (CA)</h3>
            <ul>
                <li onclick="showRoadmap('Auditor')">Auditor</li>
                <li onclick="showRoadmap('Tax Advisor')">Tax Advisor</li>
                <li onclick="showRoadmap('Financial Controller')">Financial Controller</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-gavel"></i></div>
            <h3>Company Secretary (CS)</h3>
            <ul>
                <li onclick="showRoadmap('Legal Advisor')">Legal Advisor</li>
                <li onclick="showRoadmap('Corporate Consultant')">Corporate Consultant</li>
                <li onclick="showRoadmap('ComplianceOfficer')">Compliance Officer</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-user-tie"></i></div>
            <h3>MBA</h3>
            <ul>
                <li onclick="showRoadmap('MarketingManager')">Marketing Manager</li>
                <li onclick="showRoadmap('BusinessConsultant')">Business Consultant</li>
                <li onclick="showRoadmap('OperationsManager')">OperationsManager</li>
            </ul>
        </div>

        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-chart-line"></i></div>
            <h3>Bachelor of Economics (BEcon)</h3>
            <ul>
                <li onclick="showRoadmap('Data Analyst')">Data Analyst</li>
                <li onclick="showRoadmap('Economist')">Economist</li>
                <li onclick="showRoadmap('Investment Banker')"> Investment Banker</li>
            </ul>
        </div>

        
        <div class="job-card" data-aos="fade-up">
            <div class="icon-container"><i class="fa fa-building"></i></div>
            <h3>Bachelor of Business Administration (BBA)</h3>
            <ul>
                <li onclick="showRoadmap('Business Development Executive')">Business Development Executive</li>
                <li onclick="showRoadmap('Project Manager')">Project Manager</li>
                <li onclick="showRoadmap('Sales Manager')">Sales Manager</li>
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
            'Accountant': 'Steps to become an Accountant: 1. Complete a Bachelor’s degree in Commerce or Accounting. 2. Gain practical experience through internships. 3. Obtain certification like CPA, CA, or equivalent.',
            'Tax Consultant': 'Steps to become a Tax Consultant: 1. Earn a degree in accounting, finance, or law. 2. Gain expertise in tax laws and filing processes. 3. Seek professional certification in tax consultancy.',
            'Financial Planner': 'Steps to become a Financial Planner: 1. Obtain a degree in finance or economics. 2. Complete a certification program like CFP. 3. Gain experience in financial planning services.',
            'Auditor': 'Steps to become an Auditor: 1. Obtain a degree in accounting. 2. Get professional certification like CPA or CA. 3. Gain experience working under an auditing firm.',
            'Cost Accountant': 'Steps to become a Cost Accountant: 1. Complete a degree in accounting or finance. 2. Obtain a CMA (Certified Management Accountant) certification.',
            'Corporate Treasurer': 'Steps to become a Corporate Treasurer: 1. Complete an MBA in finance or accounting. 2. Obtain professional certification like CTP (Certified Treasury Professional).',
            'Business Development Executive': 'Steps to become a Business Development Executive: 1. Obtain a degree in business administration or marketing. 2. Gain experience in business development.',
            'Project Manager': 'Steps to become a Project Manager: 1. Obtain a degree in management or a related field. 2. Gain certification such as PMP (Project Management Professional). 3. Gain practical project management experience.',
            'Cost Accountant': 'Steps to become a Cost Accountant: 1. Get a Commerce or Accounting degree. 2. Complete the CMA course and certification. 3. Gain experience in cost and management accounting.',
    		'Corporate Treasurer': 'Steps to become a Corporate Treasurer: 1. Pursue a degree in Finance, Economics, or Accounting. 2. Gain experience in financial planning and treasury management. 3. Earn additional certifications like CTP.',
    		'Tax Advisor': 'Steps to become a Tax Advisor: 1. Earn a degree in Commerce, Law, or Accounting. 2. Specialize in taxation through courses. 3. Work with tax consultancy firms or start independent practice.',
    		'Financial Controller': 'Steps to become a Financial Controller: 1. Complete a degree in Accounting, Finance, or Business. 2. Obtain certifications like CA, CPA. 3. Gain years of experience in financial reporting and management.',
    		'Legal Advisor': 'Steps to become a Legal Advisor: 1. Earn a Law degree (LLB). 2. Gain specialization in corporate or business law. 3. Work with companies as in-house legal counsel.',
    		'Corporate Consultant': 'Steps to become a Corporate Consultant: 1. Get a degree in Business, Finance, or Law. 2. Develop expertise in corporate structures and operations. 3. Work with consulting firms or independently.',
    		'ComplianceOfficer': 'Steps to become a Compliance Officer: 1. Pursue a degree in Law, Finance, or Business. 2. Learn about regulatory and compliance standards. 3. Gain experience by working in corporate compliance departments.',
    		'MarketingManager': 'Steps to become a Marketing Manager: 1. Earn a degree in Marketing, Business, or Communications. 2. Gain experience through internships or entry-level marketing roles. 3. Develop expertise in brand management and strategy.',
    		'BusinessConsultant': 'Steps to become a Business Consultant: 1. Complete a degree in Business, Management, or Economics. 2. Gain experience in corporate strategy or operations. 3. Work with consultancy firms or start your own practice.',
    		'OperationsManager': 'Steps to become an Operations Manager: 1. Get a degree in Business Administration or Operations Management. 2. Develop skills in logistics, supply chain, and team management. 3. Gain experience through operational roles.',
    		'Data Analyst': 'Steps to become a Data Analyst: 1. Pursue a degree in Economics, Statistics, or Data Science. 2. Learn data analysis tools like Excel, SQL, and Python. 3. Build experience with internships or projects.',
    		'Economist': 'Steps to become an Economist: 1. Complete a Bachelor’s and preferably Master’s degree in Economics. 2. Learn statistical and data analysis skills. 3. Work with research firms, governments, or think tanks.',
    		'Investment Banker': 'Steps to become an Investment Banker: 1. Get a degree in Finance, Business, or Economics. 2. Gain experience with internships in banks or financial institutions. 3. Pursue certifications like CFA for career growth.',
    		'costAnalyst': 'Steps to become a Cost Analyst: 1. Obtain a degree in Accounting, Finance, or Commerce. 2. Gain skills in cost estimation and financial analysis. 3. Work with manufacturing or service companies.',
    		'Management Accountant': 'Steps to become a Management Accountant: 1. Pursue a degree in Accounting, Commerce, or Finance. 2. Complete CMA certification. 3. Gain work experience in corporate accounting.',
    		'Financial Strategist': 'Steps to become a Financial Strategist: 1. Earn a degree in Finance, Economics, or Business. 2. Develop expertise in financial planning and analysis. 3. Work with investment firms or large corporations.',
    		'Business Development Executive': 'Steps to become a Business Development Executive: 1. Obtain a degree in Business Administration, Marketing, or Sales. 2. Gain experience in client handling and market research. 3. Build strong networking and communication skills.',
    		'Project Manager': 'Steps to become a Project Manager: 1. Pursue a degree in Business, Management, or Engineering. 2. Obtain project management certifications like PMP. 3. Gain work experience managing projects.',
    		'Sales Manager': 'Steps to become a Sales Manager: 1. Complete a degree in Marketing, Business, or Commerce. 2. Build experience in sales and client relations. 3. Develop leadership and team management skills.'
            
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
