Student Management System
Project Description
The Student Management System is a project developed using Linux, Bash Shell Scripting, Python Flask, Git, GitHub and AWS EC2.
The main objective of this project is to simplify student record management, including student details, attendance, examination marks and academic performance.
The project consists of two applications:
A command-line application developed using Bash Shell Scripting.
A web-based application developed using Python Flask and deployed on AWS EC2.
CSV files are used to store student information, attendance records and examination results.
Technologies Used
Ubuntu Linux
Bash Shell Scripting
Python
Flask
HTML
CSS
CSV
Git
GitHub
AWS EC2
Features
1. Command-Line Application
The Bash Shell Script application provides the following features:
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
2. Web-Based Application
The web application provides the following modules.
Student Management
Add new students.
Enter student ID, name, gender, course, email and phone number.
View all registered students.
Search students by ID or name.
Update student details.
Delete student records.
Attendance Management
Mark attendance as Present or Absent.
View attendance records.
Validate student ID before marking attendance.
Prevent duplicate attendance entries for the same student on the same date.
Delete attendance records.
Examination Results
Enter up to three subjects in one submission.
Enter marks obtained and maximum marks.
Validate examination marks.
Prevent duplicate subject entries for the same student.
View examination records.
Delete examination records.
Individual Student Reports
Search for a student using Student ID.
Display the selected student's personal details.
Display gender and course information.
Display subject-wise examination marks.
Calculate total marks and overall percentage.
Display academic grade and pass/fail result.
Display attendance summary and percentage.
Print individual student marksheets.
Project Structure
student-management-system/
|
|-- student.sh
|-- students.csv
|-- attendance.csv
|-- results.csv
|-- README.md
|-- .gitignore
|
|-- website/
    |-- app.py
    |-- requirements.txt
The CSV files store application data and are excluded from the public GitHub repository. The Python virtual environment and backup files are also excluded.
Installation and Execution
Running the Command-Line Application
Step 1: Clone the repository.
git clone https://github.com/Shailaja2606/student-management-system.git
Step 2: Navigate to the project directory.
cd student-management-system
Step 3: Give execution permission.
chmod +x student.sh
Step 4: Run the application.
./student.sh
Create the required CSV files with their appropriate headers if they do not already exist.
Running the Web Application
Step 1: Navigate to the website directory.
cd website
Step 2: Create a Python virtual environment.
python3 -m venv venv
Step 3: Activate the virtual environment.
source venv/bin/activate
Step 4: Install Flask.
pip install flask
Step 5: Run the application.
python app.py
Step 6: Open the browser and visit:
http://localhost:5000
AWS EC2 Deployment
The Flask web application was deployed on an AWS EC2 Ubuntu instance.
The deployment process included:
Creating an AWS EC2 instance.
Selecting Ubuntu as the operating system.
Connecting to the instance using EC2 Instance Connect.
Installing Python and the required packages.
Cloning the project repository from GitHub.
Creating and activating a Python virtual environment.
Installing Flask.
Running the Flask application.
Configuring network access.
Accessing the website through the EC2 public IP address.
Website URL format:
http://YOUR-EC2-PUBLIC-IP:5000
The EC2 instance must be running and the required network access must be configured to access the website.
Academic Performance Calculation
The overall academic percentage is calculated using the following formula:
Percentage = (Total Marks Obtained / Total Maximum Marks) * 100
Example:
Science       = 80/100
Mathematics   = 75/100
Computer      = 90/100

Total Marks   = 245/300
Percentage    = 81.67%
The application uses the following demonstration grade classification:
75% and above: Distinction
60% to below 75%: First Class
50% to below 60%: Second Class
40% to below 50%: Pass
Below 40%: Fail
The application also requires at least 40% in each subject to pass. These grading rules can be modified according to institutional requirements.
Testing
The following functionalities were tested:
Adding, viewing, searching and updating student records.
Deleting student records.
Adding and displaying gender information.
Marking and viewing attendance.
Calculating attendance percentage.
Entering multiple subject examination marks.
Calculating academic performance.
Generating individual student reports.
Displaying subject-wise marks and final results.
Running the Flask application on AWS EC2.
Conclusion
The Student Management System demonstrates the practical implementation of Linux, Bash Shell Scripting, Python, Flask, Git, GitHub and AWS EC2.
The project provides command-line and web-based interfaces for managing student details, attendance, examination results and academic performance.
It also demonstrates version control using Git and GitHub and cloud deployment using AWS EC2.
Future Enhancements
Implement secure user login and authentication.
Integrate a database such as MySQL.
Add administrator and teacher roles.
Provide PDF marksheet downloads.
Improve the dashboard with charts and statistics.
Enhance application security and deployment.
Project Information
Project Name: Student Management System
GitHub Repository: https://github.com/Shailaja2606/student-management-system
Technologies Used: Linux, Bash Shell Scripting, Python, Flask, HTML, CSS, Git, GitHub and AWS EC2.
