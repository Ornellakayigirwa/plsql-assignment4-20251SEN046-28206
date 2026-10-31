
INSERT INTO departments VALUES (10, 'Computer Science');
INSERT INTO departments VALUES (20, 'Business');
INSERT INTO departments VALUES (30, 'Engineering');

INSERT INTO students VALUES (1001, 'Alice', 'Mukamana', 'alice@auca.ac.rw', 10);
INSERT INTO students VALUES (1002, 'Jean', 'Uwimana', 'jean@auca.ac.rw', 10);
INSERT INTO students VALUES (1003, 'Grace', 'Niyonsaba', 'grace@auca.ac.rw', 20);
INSERT INTO students VALUES (1004, 'Eric', 'Habimana', 'eric@auca.ac.rw', 30);

INSERT INTO courses VALUES (101, 'CS101', 'Introduction to Programming', 3);
INSERT INTO courses VALUES (102, 'CS201', 'Database Systems', 4);
INSERT INTO courses VALUES (103, 'BUS101', 'Principles of Accounting', 3);
INSERT INTO courses VALUES (104, 'ENG101', 'Applied Mathematics', 4);

INSERT INTO enrollments VALUES (1, 1001, 101, 85);
INSERT INTO enrollments VALUES (2, 1001, 102, 78);
INSERT INTO enrollments VALUES (3, 1002, 101, 92);
INSERT INTO enrollments VALUES (4, 1003, 103, NULL);   
INSERT INTO enrollments VALUES (5, 1004, 104, 67);

COMMIT;