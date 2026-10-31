CREATE OR REPLACE PROCEDURE register_for_course (
    p_enroll_id  NUMBER,
    p_stud_id    NUMBER,
    p_course     NUMBER
) IS
    r_enroll enrollments%ROWTYPE;   
BEGIN
    r_enroll.enrollment_id := p_enroll_id;
    r_enroll.student_id    := p_stud_id;
    r_enroll.course_id     := p_course;
    r_enroll.grade         := NULL;

    INSERT INTO enrollments VALUES r_enroll;

   
    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Registration successful.');
        DBMS_OUTPUT.PUT_LINE('Number of rows affected: ' || SQL%ROWCOUNT);
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Registration failed: ' || SQLERRM);
END;
/