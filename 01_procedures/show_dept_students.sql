CREATE OR REPLACE PROCEDURE show_dept_students (
    p_dept NUMBER
) IS
    CURSOR cur_dept_stud IS
        SELECT student_id, first_name, last_name
        FROM students
        WHERE dept_id = p_dept;

    v_id    students.student_id%TYPE;
    v_fname students.first_name%TYPE;
    v_lname students.last_name%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Students in department ' || p_dept);

    OPEN cur_dept_stud;
    LOOP
        FETCH cur_dept_stud INTO v_id, v_fname, v_lname;
        EXIT WHEN cur_dept_stud%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_id || ' : ' || v_fname || ' ' || v_lname);
    END LOOP;
    CLOSE cur_dept_stud;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error while listing students: ' || SQLERRM);
END;
/