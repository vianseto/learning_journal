#Membuat table teachers dan courses
CREATE TABLE teachers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(25) NOT NULL,
    last_name varchar(50),
    school varchar(50) NOT NULL,
    hire_date date,
    salary numeric
    );
    
CREATE TABLE courses (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(20),
    teachers_id INT,
    total_students INT
    );
    
#Memasukan data kedalam tabel teachers
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
    VALUES ('Janet', 'Smith', 'MIT', '2011-10-30', 36200),
           ('Lee', 'Reynolds', 'MIT', '1993-05-22', 65000),
           ('Samuel', 'Cole', 'Cambridge University', '2005-08-01', 43500),
           ('Samantha', 'Bush', 'Cambridge University', '2011-10-30', 36200),
           ('Betty', 'Diaz', 'Cambridge University', '2005-08-30', 43500),
           ('Kathleen', 'Roush', 'MIT', '2010-10-22', 38500),
           ('James', 'Diaz', 'Harvard University', '2003-07-18', 61000),
           ('Zack', 'Smith', 'Harvard University', '2000-12-29', 55500),
           ('Luis', 'Gonzales', 'Standford University', '2002-12-01', 50000),
           ('Frank', 'Abbers', 'Standford University', '1999-01-30', 66000),
           ('Samuel', 'Abbers', 'Standford University', '2006-01-30', 32000),
           ('Jessica', 'Abbers', 'Standford University', '2005-01-30', 33000),
           ('Tom', 'Massi', 'Harvard University', '1999-09-09', 39500),
           ('Esteban', 'Brown', 'MIT', '2007-01-30', 36000),
           ('Carlos', 'Alonso', 'Standford University', '2001-01-30', 44000);
           
#Memasukan data ke tabel courses
INSERT INTO courses (name, teachers_id, total_students)
    VALUES  ('Calculus', 2, 20),
            ('Physics', 2, 10),
            ('Calculus', 1, 30),
            ('Computer Science', 1, 20),
            ('Politic', 13, 15),
            ('Algebra', 2, 10),
            ('Algebra', 13, 30),
            ('Computer Science', 10, 35),
            ('Life Science', 11, 20),
            ('Chemistry', 9, 22),
            ('Chemistry', 8, 16),
            ('Calculus', 5, 19),
            ('Politic', 4, 17),
            ('Biology', 6, 22),
            ('Physics', 3, 29),
            ('Biology', 8, 28),
            ('Calculus', 12, 34),
            ('Physics', 13, 34),
            ('Biology', 14, 25),
            ('Calculus', 15, 20);

#Menampilkan semua atribut dosen dan mata kuliah, untuk dosen yang memiliki gaji tertinggi per masing-masing mata kuliah
#Hasil diurutkan berdasar nama mata kuliahnya secara ascending (A-Z).

SELECT * FROM teachers
JOIN courses on teachers.id = courses.teachers_id
GROUP by courses.name
order by courses.name asc