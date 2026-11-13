Student Management System using Linux, Shell Scripting, Git, GitHub and AWS
1. Project Overview
The Student Management System is a student record management project developed using Linux, Bash Shell Scripting, Python Flask, Git, GitHub and AWS EC2.
The main objective of this project is to simplify the management of student information, attendance records, examination marks and academic performance.
The project provides two interfaces:
Command-Line Interface (CLI): A menu-driven application developed using Bash Shell Scripting.
Web-Based Interface: A browser-based application developed using Python Flask and hosted on AWS EC2.
The system uses CSV files for storing and managing student information, attendance and examination results.
2. Technologies Used
Technology
Purpose
Ubuntu Linux
Operating system
Bash Shell Scripting
Command-line application
Python
Web application programming
Flask
Web framework
HTML
Web page structure
CSS
Website styling
CSV
Data storage
Git
Version control
GitHub
Source code hosting
AWS EC2
Cloud deployment
3. Project Features
A. Command-Line Application
The Bash Shell Script application provides 13 operations:
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
The Flask website provides the following modules.
Student Management
Add new student details.
Enter student ID, name, gender, course, email and phone number.
View all registered students.
Search students by ID or name.
Update student information.
Delete student records.
Attendance Management
Mark attendance as Present or Absent.
View attendance records.
Validate student ID before marking attendance.
Prevent duplicate attendance for the same student on the same date.
Delete attendance records.
Calculate attendance percentage.
Examination Results
Enter up to three subjects and their marks in one submission.
Store subject-wise examination results.
Validate marks and maximum marks.
Prevent duplicate subject entries for the same student.
View examination records.
Delete examination records.
Individual Student Reports
Search reports using Student ID.
Display the selected student's personal details.
Display gender and course information.
Display subject-wise examination marks.
Calculate total marks obtained.
Calculate overall percentage.
Display academic grade and pass/fail result.
Display attendance summary and attendance percentage.
Print the individual student marksheet.
4. Project Structure
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
    ├── venv/
    └── app_backup*.py
Note: Backup files and the Python virtual environment are local development files and should not be uploaded to GitHub.
5. CSV Data Storage
The application uses three CSV files.
students.csv
Stores:
Student ID
Name
Gender
Course
Email
Phone Number
attendance.csv
Stores:
Student ID
Date
Attendance Status
results.csv
Stores:
Student ID
Subject
Marks Obtained
Maximum Marks
6. How to Run the Shell Script Application
Clone the repository:
git clone https://github.com/Shailaja2606/student-management-system.git
Navigate to the project directory:
cd student-management-system
Give execution permission:
chmod +x student.sh
Run the application:
./student.sh
Create the required CSV files with the appropriate column headers if they do not already exist.
7. How to Run the Flask Web Application
Navigate to the website directory:
cd website
Create a Python virtual environment:
python3 -m venv venv
Activate the virtual environment:
source venv/bin/activate
Install Flask:
pip install flask
Run the application:
python app.py
Open a web browser and visit:
http://localhost:5000
8. AWS EC2 Deployment
The Flask web application was deployed on an AWS EC2 Ubuntu instance.
Deployment process:
Created an AWS EC2 instance.
Selected Ubuntu as the operating system.
Connected to the instance using EC2 Instance Connect.
Installed Python and the required packages.
Cloned the project repository from GitHub.
Created and activated a Python virtual environment.
Installed Flask.
Started the Flask application.
Configured the required network access.
Accessed the website through the EC2 public IP address and port 5000.
Example URL:
http://YOUR-EC2-PUBLIC-IP:5000
The EC2 instance must be running for the website to be accessible.
9. Academic Performance Calculation
The overall academic percentage is calculated using:
Percentage = (Total Marks Obtained / Total Maximum Marks) * 100
Example:
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
Overall percentage:
(245 / 300) * 100 = 81.67%
The demonstration application uses the following grade ranges:
Percentage
Grade
75% and above
Distinction
60% to below 75%
First Class
50% to below 60%
Second Class
40% to below 50%
Pass
Below 40%
Fail
The demonstration pass rule also requires at least 40% in each subject. These rules can be modified according to institutional requirements.
10. Testing
The following operations were tested:
Adding and viewing student details.
Searching and updating student records.
Deleting student records.
Entering student gender.
Marking and viewing attendance.
Validating registered student IDs.
Entering multiple subject marks.
Calculating academic percentages.
Generating individual student marksheets.
Displaying attendance summaries.
Running the Flask application on AWS EC2.
11. Learning Outcomes
This project helped develop practical knowledge of:
Linux commands and file management.
Bash Shell Scripting.
Python programming.
Flask web application development.
HTML and CSS.
CSV file handling.
Git and GitHub version control.
AWS EC2 cloud deployment.
Basic web hosting and server configuration.
12. Future Enhancements
Secure login and authentication.
Database integration using MySQL or PostgreSQL.
Administrator and teacher roles.
PDF marksheet downloads.
Improved dashboard and charts.
More advanced student performance analysis.
Production-ready web hosting and security.
13. Conclusion
The Student Management System demonstrates the practical use of Linux, Shell Scripting, Python, Flask, Git, GitHub and AWS.
It provides both command-line and web-based interfaces for managing student details, attendance, examination results and academic reports.
The project demonstrates how a student management application can be developed, maintained using version control and deployed on a cloud server.
Project Name: Student Management System
Technologies: Linux, Bash, Python, Flask, HTML, CSS, Git, GitHub and AWS EC2.
GitHub Repository: https://github.com/Shailaja2606/student-management-system
