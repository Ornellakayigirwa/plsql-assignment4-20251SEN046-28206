# Implementation Notes

## 1. Records
- We used a user-defined RECORD in the procedure add_new_student to group the student data.
- We used %ROWTYPE in the procedure register_for_course to match the structure of the enrollments table.

## 2. Collections
- We used an associative array (INDEX BY PLS_INTEGER) in the raise_all_grades procedure to hold the enrolment IDs and new grades.

## 3. Cursors
- Implicit cursor: in the register_for_course procedure with SQL%FOUND and SQL%ROWCOUNT.
- Explicit cursor: used in show_dept_students with OPEN, FETCH and CLOSE.

## 4. Bulk Processing
- BULK COLLECT is used to fetch multiple rows into collections in one go.
- FORALL is used to perform the UPDATE in bulk.
- This is faster than updating the rows individually as it minimises the context switches between the PL/SQL and SQL engines.

## 5. Exception Handling
- `DUP_VAL_ON_INDEX` → when trying to insert a duplicate student
- `NO_DATA_FOUND` → when a student does not exist
- `OTHERS` → for any unexpected error

## 6. Performance Note
Using BULK COLLECT + FORALL is far more efficient than processing row by row, particularly when you're dealing with a large number of records.