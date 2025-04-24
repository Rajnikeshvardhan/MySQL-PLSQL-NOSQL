CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    admission_year INT
);

INSERT INTO students VALUES
(1, 'Aditi Sharma', 'Computer Science', 2022),
(2, 'Ravi Kumar', 'Electronics', 2021),
(3, 'Sneha Das', 'Mathematics', 2022);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO courses VALUES
(101, 'Data Structures', 'Computer Science'),
(102, 'Digital Electronics', 'Electronics'),
(103, 'Calculus', 'Mathematics');

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollments VALUES
(1, 101),
(2, 102),
(3, 103),
(1, 103);  -- Aditi is also taking Calculus

CREATE TABLE marks (
    student_id INT,
    course_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO marks VALUES
(1, 101, 88),
(1, 103, 70),
(2, 102, 45),
(3, 103, 90);

CREATE TABLE grades (
    student_id INT,
    course_id INT,
    grade VARCHAR(25),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    date DATE,
    status ENUM('Present', 'Absent'),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO attendance (student_id, date, status) VALUES
(1, '2025-04-01', 'Present'),
(1, '2025-04-02', 'Absent'),
(1, '2025-04-03', 'Present'),
(1, '2025-04-04', 'Present'),
(2, '2025-04-01', 'Absent'),
(3, '2025-04-01', 'Present');
