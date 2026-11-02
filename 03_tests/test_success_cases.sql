-- Add a new student
BEGIN
    add_new_student(1006, 'Sarah', 'Ingabire', 'sarah2@auca.ac.rw', 10);
END;
/

-- Register student for a course
BEGIN
    register_for_course(7, 1006, 101);
END;
/

--show student in department
BEGIN
    show_dept_students(10);
END;
/

--Get full name
DECLARE
    v_name VARCHAR2(80);
BEGIN
    v_name := get_full_name(1001);
    DBMS_OUTPUT.PUT_LINE('Full name: ' || v_name);
END;
/

--Calculate average grade
DECLARE
    v_avg NUMBER;
BEGIN
    v_avg := calc_average_grade(1001);
    DBMS_OUTPUT.PUT_LINE('Average grade: ' || v_avg);
END;
/

--Bulk update grades
BEGIN
    raise_all_grades;
END;
/
