
SET SERVEROUTPUT ON;

--Try to add a student with existing ID (should give error)
BEGIN
    add_new_student(1001, 'Leah', 'Teta', 'tetaleah@auca.ac.rw', 10);
END;
/

--Get name of a student that does not exist
DECLARE
    v_name VARCHAR2(80);
BEGIN
    v_name := get_full_name(9999);
    DBMS_OUTPUT.PUT_LINE(v_name);
END;
/

--Calculate average for a student with no grades
DECLARE
    v_avg NUMBER;
BEGIN
    v_avg := calc_average_grade(1003);
    DBMS_OUTPUT.PUT_LINE('Average grade: ' || NVL(TO_CHAR(v_avg), 'No grades found'));
END;
/