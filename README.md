Student Management System
Using Linux, Shell Scripting, Python Flask, Git, GitHub and AWS
1. Project Overview
The Student Management System is a student record management application developed to simplify the management of student information, attendance, examination marks and academic performance.
The project provides two interfaces:
Command-Line Application: Developed using Bash Shell Scripting.
Web-Based Application: Developed using Python Flask and deployed on AWS EC2.
Student records are stored and managed using CSV files.
2. Technologies Used
Technology
Purpose
Ubuntu Linux
Operating System
Bash Shell Scripting
Command-Line Application
Python
Web Application Programming
Flask
Web Framework
HTML
Web Page Structure
CSS
Website Styling
CSV
Data Storage
Git
Version Control
GitHub
Source Code Hosting
AWS EC2
Cloud Deployment
🚀 3. Project Features
A. Command-Line Application
The Bash Shell Script application provides the following 13 operations:
Add Student
View All Students
Search Student
Update Student
Delete Student
Mark Attendance
View Attendance
Calculate Attendance Percentage
Add Examination Results
View Examination Results
Calculate Academic Performance
Generate Complete Student Report
Exit
B. Web-Based Application
The Flask web application provides five main sections.
1. Student Management
Add new student details.
Enter Student ID, Name, Gender, Course, Email and Phone Number.
View all registered students.
Search students by ID or Name.
Update student information.
Delete student records.
2. Attendance Management
Mark attendance as Present or Absent.
View attendance records.
Validate student ID before marking attendance.
Prevent duplicate attendance for the same student on the same date.
Delete attendance records.
3. Examination Results
Enter up to three subjects in one submission.
Enter marks obtained and maximum marks.
Validate marks.
Prevent duplicate subject entries for the same student.
View examination records.
Delete examination records.
4. Individual Student Reports
Search for a student using Student ID.
Display the selected student's personal details.
Display Gender and Course.
Show subject-wise examination marks.
Calculate total marks and percentage.
Display academic grade and pass/fail result.
Display attendance summary and percentage.
Print the student's individual marksheet.
5. Academic Performance
Calculate overall academic percentage.
Assign grades based on percentage.
Determine pass/fail status using the configured rules.
📂 4. Project Structure
student-management-system/
│
├── student.sh
├── students.csv
├── attendance.csv
├── results.csv
├── README.md
├── .gitignore
│
└── website/
    ├── app.py
    └── requirements.txt
Note: CSV files contain application data and are excluded from the public repository. The Python virtual environment and backup files are also excluded.
💾 5. CSV Data Storage
The project uses three CSV files.
File
Description
students.csv
Stores student personal details, including Gender
attendance.csv
Stores student attendance records
results.csv
Stores subject-wise examination marks
💻 6. Running the Command-Line Application
Step 1: Clone the repository
git clone https://github.com/Shailaja2606/student-management-system.git
Step 2: Navigate to the project directory
cd student-management-system
Step 3: Give execution permission
chmod +x student.sh
Step 4: Run the application
./student.sh
Create the required CSV files with the appropriate headers if they do not already exist.
🌐 7. Running the Web Application
Step 1: Navigate to the website directory
cd website
Step 2: Create a virtual environment
python3 -m venv venv
Step 3: Activate the virtual environment
source venv/bin/activate
Step 4: Install Flask
pip install flask
Step 5: Run the application
python app.py
Step 6: Open the website
Visit the following address in your browser:
http://localhost:5000
☁️ 8. AWS EC2 Deployment
The Flask web application was deployed on an AWS EC2 Ubuntu instance.
Deployment Steps
Created an AWS EC2 instance.
Selected Ubuntu as the operating system.
Connected using EC2 Instance Connect.
Installed Python and the required packages.
Cloned the project from GitHub.
Created and activated a Python virtual environment.
Installed Flask.
Started the Flask application.
Configured network access to the application.
Accessed the website using the EC2 public IP address.
Website URL format:
http://YOUR-EC2-PUBLIC-IP:5000
The EC2 instance must be running, and the required network access must be configured.
📊 9. Academic Performance Calculation
The overall academic percentage is calculated using:
Percentage = (Total Marks Obtained / Total Maximum Marks) × 100
Example
Subject
Marks Obtained
Maximum Marks
Science
80
100
Mathematics
75
100
Computer
90
100
Total
245
300
Overall Percentage:
(245 / 300) × 100 = 81.67%
Grade Classification
Percentage
Grade
75% and above
Distinction
60% – below 75%
First Class
50% – below 60%
Second Class
40% – below 50%
Pass
Below 40%
Fail
These are the demonstration application's grading rules. The pass rule also requires at least 40% in each subject.
🧪 10. Testing
The following functionalities were tested:
Student registration and record management.
Student search, update and deletion.
Gender entry and display.
Attendance marking and calculation.
Examination result entry for multiple subjects.
Academic percentage and grade calculation.
Individual student report generation.
Attendance summary in student reports.
Flask website deployment on AWS EC2.
🎯 11. Learning Outcomes
Through this project, practical knowledge was gained in:
Linux commands and file management.
Bash Shell Scripting.
Python and Flask development.
HTML and CSS.
CSV file handling.
Git and GitHub.
AWS EC2 cloud deployment.
Basic web hosting and server configuration.
🔮 12. Future Enhancements
User authentication and secure login.
MySQL or PostgreSQL database integration.
Administrator and teacher roles.
PDF marksheet downloads.
Dashboard with charts and statistics.
Advanced academic performance analysis.
Production-ready web hosting and security.
🏁 13. Conclusion
The Student Management System demonstrates the practical implementation of Linux, Shell Scripting, Python, Flask, Git, GitHub and AWS.
It provides both command-line and web-based interfaces to manage student details, attendance, examination results and individual academic reports.
The project demonstrates the development, version control and cloud deployment of a student management application.
👩‍💻 Project Information
Project Name: Student Management System
Technologies: Linux, Bash, Python, Flask, HTML, CSS, Git, GitHub and AWS EC2.
GitHub Repository: Student Management System
