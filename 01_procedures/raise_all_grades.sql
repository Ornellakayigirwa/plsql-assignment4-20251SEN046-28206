CREATE OR REPLACE PROCEDURE raise_all_grades IS
    TYPE t_ids    IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    TYPE t_grades IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_ids    t_ids;
    v_grades t_grades;
BEGIN
    SELECT enrollment_id, NVL(grade, 0) + 3
    BULK COLLECT INTO v_ids, v_grades
    FROM enrollments;

    FORALL i IN 1 .. v_ids.COUNT
        UPDATE enrollments
        SET grade = v_grades(i)
        WHERE enrollment_id = v_ids(i);

    DBMS_OUTPUT.PUT_LINE('Grades updated in bulk.');
    DBMS_OUTPUT.PUT_LINE('Total rows updated: ' || SQL%ROWCOUNT);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Bulk update error: ' || SQLERRM);
END;
/