# Student Registration and Grading System
### Oracle PL/SQL - Assignment IV (Records, Collections, Cursors, Bulk Processing, Procedures, Functions, Exceptions)

### Group members

- Kayigirwa Ornella - 20251SEN046
- Turinimana Emmanuel - 28206


## ⚡Overview
Student registration and grade recording system for a university. Students are in different departments,
take courses and get grades for each course.

### Features
- Add new students
- Register students in courses
- List students by department
- Calculate average grades
- Update grades in bulk

### 💡Rules
- Student ID, Email, Course Code should be unique.
- A student should not be enrolled twice in the same course.
- Grades should be between 0 and 100.
- A student should be a part of an existing department, and enrollment should refer to an existing student and an existing course.
- All errors will be reported by proper messages.

**Relationships:** one department has many students; one student has many enrollments;
one course has many enrollments (`students` and `courses` have a many-to-many relationship through `enrollments`).

The application demonstrates the use of:
- Records (user-defined and %ROWTYPE)
- Collections (associative arrays)
- Implicit and Explicit cursors
- BULK COLLECT and FORALL
- Stored procedures and functions
- Exception handling

## ▶  How to run

**Requirements:** 
The command `SET SERVEROUTPUT ON` should be executed before the message is printed.

1. Execute `00_schema/01_create_tables.sql`
2. Execute `00_schema/02_insert_sample_data.sql`
3. Compile functions located in `02_functions/` (functions should be compiled first, if some procedure uses them)
4. Compile procedures in `01_procedures/`
5. Execute `03_tests/test_success_cases.sql`
6. Execute `03_tests/test_error_cases.sql`
7. Compare the results with screenshots in `screenshots/`

## 8. Testing
- `test_success_cases.sql` shows normal operation of every procedure and function.
- `test_error_cases.sql` triggers each handled error (duplicates, missing records, invalid grades, bulk failures).
- Screenshots for each test are in screenshots



