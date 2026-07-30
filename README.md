SQL Course and Enrollment Database Analysis

Project Overview

This project demonstrates fundamental SQL querying, data manipulation, and relational database management. It simulates a simple academic system featuring Course and Enrollment tables, showcasing how to link relational data and extract actionable business and academic insights using standard SQL operations.

Database Schema

1. course Table
Stores information regarding the available subjects or classes within the institution.

id: A unique numerical identifier serving as the primary key for each course.

name: The title or name of the course, constrained to a maximum of 15 characters.

2. enrollment Table
   
Tracks academic engagement by mapping students to the courses they are taking along with their performance metrics.

student_id: A unique numerical identifier representing an individual student.

course_id: A foreign key reference linking the enrollment record back to the specific course identifier.

grade: The numerical score or grade achieved by the student in that particular course.

Key Analysis & Insights
The project answers several critical analytical questions using database queries:

Course Enrollment Mapping

Combines the course directory with student enrollment records to provide a comprehensive view of who is taking which class, ensuring clear visibility across all active subjects.

Average Performance Per Course

Calculates the mean grade for each individual subject by grouping the enrollment data by course. This helps evaluate the overall difficulty or student performance trends per class.

Top Performing Students

Identifies the highest-achieving students across the entire institution by calculating their overall average grades in descending order and filtering for the top performers.
