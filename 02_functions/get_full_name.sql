CREATE OR REPLACE FUNCTION get_full_name (
    p_stud_id NUMBER
) RETURN VARCHAR2 IS
    v_name VARCHAR2(80);
BEGIN
    SELECT first_name || ' ' || last_name
    INTO v_name
    FROM students
    WHERE student_id = p_stud_id;

    RETURN v_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No student found';
    WHEN OTHERS THEN
        RETURN 'Error';
END;
/

declare 