CREATE OR REPLACE PROCEDURE add_new_student (
    p_id          NUMBER,
    p_fname       VARCHAR2,
    p_lname       VARCHAR2,
    p_mail        VARCHAR2,
    p_department  NUMBER
) IS
    TYPE t_student IS RECORD (
        id         NUMBER,
        fname      VARCHAR2(30),
        lname      VARCHAR2(30),
        mail       VARCHAR2(50),
        department NUMBER
    );
    r_stud t_student;
BEGIN
    r_stud.id         := p_id;
    r_stud.fname      := p_fname;
    r_stud.lname      := p_lname;
    r_stud.mail       := p_mail;
    r_stud.department := p_department;

    INSERT INTO students (student_id, first_name, last_name, email, dept_id)
    VALUES (r_stud.id, r_stud.fname, r_stud.lname, r_stud.mail, r_stud.department);

    DBMS_OUTPUT.PUT_LINE('New student added successfully.');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('This student ID or email already exists.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Something went wrong: ' || SQLERRM);
END;
/