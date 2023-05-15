CREATE DATABASE [School]
GO

USE School
GO

CREATE TABLE Student
(
	student_id INT NOT NULL UNIQUE,
	student_fname VARCHAR(50) NOT NULL,
	student_lname VARCHAR(50) NOT NULL,
	student_email VARCHAR(50) NOT NULL,
	student_zipcode VARCHAR(50) NOT NULL,
	CONSTRAINT PK_student PRIMARY KEY (student_id)
);
GO

CREATE TABLE Instructor
(
	instructor_id INT NOT NULL UNIQUE,
	instructor_fname VARCHAR(50) NOT NULL,
	instructor_lname VARCHAR(50) NOT NULL,
	instructor_email VARCHAR(50) NOT NULL,
	instructor_status INT NOT NULL,
	CONSTRAINT PK_Instructor PRIMARY KEY (instructor_id)
);
GO

CREATE TABLE Course
(
	course_id INT NOT NULL UNIQUE,
	instructor_id INT NOT NULL UNIQUE,
	course_name VARCHAR(50) NOT NULL,
	course_subject VARCHAR(50) NOT NULL,
	course_price FLOAT NOT NULL,
	CONSTRAINT PK_Course PRIMARY KEY (course_id),
	CONSTRAINT FK_Shirt FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id)
);
GO

CREATE TABLE Assignment
(
	assign_id INT NOT NULL UNIQUE,
	course_id INT NOT NULL UNIQUE,
	assign_name VARCHAR(50) NOT NULL,
	student_id INT NOT NULL UNIQUE,
	assign_points INT NOT NULL,
	CONSTRAINT PK_Class PRIMARY KEY (assign_id),
	CONSTRAINT FK_Course FOREIGN KEY (course_id) REFERENCES Course(course_id),
	CONSTRAINT FK_Student FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
GO

INSERT [dbo].[Student] ([student_id], [student_fname], [student_lname], [student_email], [student_zipcode]) VALUES (1, N'Josh', N'Allen', N'jallen@email.com', N'55411')
INSERT [dbo].[Student] ([student_id], [student_fname], [student_lname], [student_email], [student_zipcode]) VALUES (2, N'Lamar', N'Jackson', N'ljackson@email.com', N'55412')
INSERT [dbo].[Student] ([student_id], [student_fname], [student_lname], [student_email], [student_zipcode]) VALUES (3, N'Joe', N'Burrow', N'jburrow@email.com', N'55413')
GO

INSERT [dbo].[Instructor] ([instructor_id], [instructor_fname], [instructor_lname], [instructor_email], [instructor_status]) VALUES (1, N'Matt', N'Patricia', N'mpatricia@email.com', 0)
INSERT [dbo].[Instructor] ([instructor_id], [instructor_fname], [instructor_lname], [instructor_email], [instructor_status]) VALUES (2, N'Dan', N'Campbell', N'dcampbell@email.com', 1)
INSERT [dbo].[Instructor] ([instructor_id], [instructor_fname], [instructor_lname], [instructor_email], [instructor_status]) VALUES (3, N'Andy', N'Reid', N'areid@email.com', 1)
GO

INSERT [dbo].[Course] ([course_id], [instructor_id], [course_name], [course_subject], [course_price]) VALUES (101, 3, N'Algebra', N'Math', 599.99)
INSERT [dbo].[Course] ([course_id], [instructor_id], [course_name], [course_subject], [course_price]) VALUES (102, 2, N'Spanish', N'Lang', 499.99)
GO

INSERT [dbo].[Assignment] ([assign_id], [course_id], [assign_name], [student_id], [assign_points]) VALUES (20, 101, N'Math Problems', 1, 0)
INSERT [dbo].[Assignment] ([assign_id], [course_id], [assign_name], [student_id], [assign_points]) VALUES (31, 102, N'Song Translation', 2, 0)
GO