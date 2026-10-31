CREATE OR REPLACE FUNCTION calc_average_grade (
    p_stud_id NUMBER
) RETURN NUMBER IS
    v_avg NUMBER;
BEGIN
    SELECT AVG(grade)
    INTO v_avg
    FROM enrollments
    WHERE student_id = p_stud_id
      AND grade IS NOT NULL;

    RETURN v_avg;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
    WHEN OTHERS THEN
        RETURN NULL;
END;
/