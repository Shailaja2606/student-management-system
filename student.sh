#!/bin/bash
FILE="students.csv"
#Function1:ADD STUDENT
add_student() {
   echo "Enter Student ID:"
   read -r id
   if awk -F',' -v id="$id" 'NR>1 && $1==id {found=1} END {exit ! found}' "$FILE" ; then
      echo "Student ID already exists!" 
        return
   fi
   echo "Enter Student Name:"
   read -r name
   echo "Enter Course:"
   read -r course
   echo "Enter Email:"
   read -r email
   echo "Enter Phone:"
   read -r phone 
   
   if [[ -z "$id" || -z "$name" || -z "$course" || -z "$email" || -z "$phone" ]] ; then
    echo "All fields are required!"
      return
   fi
   echo "$id,$name,$course,$email,$phone" >> "$FILE"
   echo "Student added successfully!"
 }
#FUNCTION 2: VIEW STUDENT
view_students() {
  echo "-----All Students-----"
  cat "$FILE"
}
#FUNCTION 3 :SEARCH STUDENT
search_student() {
  echo "Enter Student ID to search :"
  read -r id
  awk -F',' -v id="$id" 'NR==1 || $1==id {print}' "$FILE"
}
#FUNCTION 4 : UPDATE STUDENT
update_student() {
  echo "Enter Student ID to update:"
  read -r id
  if ! grep -q "^$id," "$FILE" ; then
      echo "Student not found" 
        return
  fi 
  echo "Enter New Name:"
  read -r name
  echo "Enter New Course:"
  read -r course
  echo "Enter New Email:"
  read -r email
  echo "Enter New Phone:"
  read -r phone
  if [[ -z "$name" || -z "$course" || -z "$email" || -z "$phone" ]] ; then
     echo "Invalid or empty details!"
     return
  fi
  awk -F',' -v id="$id" -v  name="$name" -v course="$course" -v email="$email" -v phone="$phone" ' BEGIN{OFS=","}  NR==1 {print; next}  $1==id {$2=name; $3=course; $4=email; $5=phone} { print } ' "$FILE" > temp.csv
  mv temp.csv "$FILE"
  echo "Student Updated Successfully!"
}
#FUNCTION 5: DELETE STUDENT

delete_student() {
  echo "Student ID to delete:"
  read -r id
  if ! grep -q "^$id," "$FILE" ; then
      echo "Student not found!" 
        return
  fi 
  awk -F',' -v id="$id" 'BEGIN{OFS=","} NR==1 || $1!=id {print}' "$FILE" > temp.csv
   mv temp.csv "$FILE"
   echo "Student Deleted successfully!"
}
#MARK ATTENDANCE
mark_attendance() {
  echo "Enter Student ID:"
  read -r id
  if ! grep -q "^$id," "$FILE" ; then
    echo "Student not found!"
    return
  fi
  echo "Enter status (P/A):"
  read -r status
  status=$(echo "$status" | tr '[:lower:]' '[:upper:]')
  if [[ "$status" != "P" && "$status" != "A" ]] ; then
      echo "Enter P for present or A for Absent."
      return
  fi
  echo "$id,$(date +%Y-%m-%d), $status" >> attendance.csv
  echo "Attendance marked successfully!"
}
#VIEW ATTENDANCE
view_attendance() {
  echo "------ATTENDANCE RECORDS------"
  cat attendance.csv
}
#ATTENDANCE PERCENTAGE
attendance_percentage() {
  echo "Enter Student ID:"
  read -r id
  if ! grep "^$id," "$FILE" ; then
    echo "Student not found!"
    return
  fi
  total=0
  present=0
  {
  read -r
  while IFS=, read -r sid date status
  do
     status="${status//[[:space:]]/}"
     if [[ "$sid" == "$id" ]] ; then
          total=$((total + 1))
            if [[ "$status" == "P" ]] ; then
                present=$((present+1))
            fi
     fi
  done
  } < attendance.csv
  if [[ "$total" -eq 0 ]] ; then
    echo "No attendance records found."
  else
    percentage=$((present * 100 / total))
    echo "Attendance Percentage: $percentage%"
  fi
}
#ADD EXAMINATION RESULTS
add_result() {
  echo "Enter Student ID:"
  read -r id
  if ! grep -q "^$id," "$FILE" ; then
    echo "Student not found!"
    return
  fi
  echo "Enter Subject:"
  read -r subject
  echo "Enter Marks Obtained:"
  read -r marks
  echo "Enter Total Marks:" 
  read -r total
  if [[ ! "$marks" =~ ^[0-9]+$ || ! "$total" =~ ^[0-9]+$ ]] || (( total == 0 || marks > total )) ; then
     echo "Invalid marks! Please enter valid marks."
     return
  fi 
  echo "$id,$subject,$marks,$total" >> results.csv
  echo "Examination result saved succesfully!"
}
view_results() {
  echo "-----EXAMINATION RESULTS-----"
  cat results.csv
}
#ACADEMIC PERFORMANCE
academic_performance() {
  echo "Enter Student ID:"
  read -r id
  if ! grep -q "^$id," "$FILE" ; then
    echo "Student not found!"
    return
  fi
  total_marks=0
  obtained_marks=0
  while IFS=, read -r sid subject marks total
  do
    if [[ "$sid" == "$id" ]] ; then
       obtained_marks=$((obtained_marks + marks)) 
       total_marks=$((total_marks + total))
    fi
  done < <(tail -n +2 results.csv)
  if [[ "$total_marks" -eq 0 ]] ; then
    echo "No examination results found."
 else
    percentage=$((obtained_marks * 100 / total_marks))
    echo "Overall Percentage: $percentage%"
  fi
}
#COMPLETE STUDENT REPORT
student_report() {
 echo "Enter Student ID:"
  read -r id
  if ! grep -q "^$id," "$FILE" ; then
    echo "Student not found!"
    return
  fi
  echo "===== STUDENT DETAILS ====="
  grep "^$id," "$FILE"
  echo "===== ATTENDANCE ====="
  grep "^$id," attendance.csv
  echo "===== EXAMINATION RESULTS ====="
  grep "^$id," results.csv
  echo "==== ATTENDANCE PERCENTAGE ====="
  total=0
  present=0
  while IFS=, read -r sid date status
  do
    status=$(echo "$status" | tr -d '[:space:]' | tr '[:lower:]' '[:upper:]')
    if [[ "$sid" == "$id" ]] ; then
       total=$((total + 1))
      if [[ "$status" == "P" ]] ; then
       present=$((present + 1))
      fi
    fi
  done < <(tail -n +2 attendance.csv)
    if (( total > 0)) ; then
      echo "$((present * 100 / total))%"
    else
      echo "No attendance records found."
    fi
}
#MAIN MENU
while true
do
  echo ""

  echo "========================="
  echo "STUDENT MANAGEMENT SYSTEM"
  echo "========================="
  echo "1. Add Student"
  echo "2. View All Students"
  echo "3. Search Student"
  echo "4. Update Student"
  echo "5. Delete Student"
  echo "6. Mark Attendance"
  echo "7. View Attendance "
  echo "8. Attendance Percentage " 
  echo "9. Add Examination Results "
  echo "10. View Examination Results "
  echo "11. Academic Performance "
  echo "12. Complete Student Report "
  echo "13.  EXIT "
  echo "========================="
  echo "Enter your choice:"
  read -r choice
  case $choice in
    1) add_student ;;
    2) view_students ;;
    3) search_student ;;
    4) update_student ;;
    5) delete_student ;;
    6) mark_attendance ;;
    7) view_attendance ;;
    8) attendance_percentage ;;
    9) add_result ;;
   10) view_results ;;
   11) academic_performance ;;
   12) student_report ;;
   13) 
      echo "Thank You for using Student Management System!"
        exit 0 
        ;;
    *)
      echo "Invalid choice! Please try again."
      ;;
 esac 
done

   
