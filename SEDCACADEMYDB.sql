
CREATE TABLE dbo.Students 
(
[Id] int identity(1,1),
[FirstName] nvarchar(100) NOT NULL,
[LastName] nvarchar(100) NOT NULL,
[DateOfBirth] date  NOT NULL,
[EnrolledDate] date NULL,
[Gender] nvarchar(100) NOT NULL,
[NationalIdNumber] bigint NULL,
[StudentCardNumber] smallint NULL
CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED(Id)
)

SELECT * FROM dbo.Students

INSERT INTO dbo.Students(FirstName, LastName, Gender)
VALUES('Martina', 'Vujovska', 'Female')
INSERT INTO dbo.Students(FirstName, LastName, Gender)
VALUES('John ', 'Doe', 'Male')
INSERT INTO dbo.Students(FirstName, LastName, Gender)
VALUES('Billy', 'Idol', 'Male')



CREATE TABLE dbo.Teacher
(
[Id] int identity(1,1),
[FirstName] nvarchar(100) NOT NULL,
[LastName] nvarchar(100) NOT NULL,
[DateOfBirth] date  NULL,
[AcademicRank] nvarchar(100) NULL,
[HireDate] date NOT NULL,
CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED(Id)
)

SELECT * FROM dbo.Teacher

INSERT INTO dbo.Teacher(FirstName, LastName, HireDate)
VALUES('Jane', 'Doe', '2020-02-25')



CREATE TABLE dbo.Grade
(
[Id] int identity (1,1),
[StudentId] nvarchar(10) NOT NULL,
[CourseId] nvarchar(100) NOT NULL,
[TeacherId] nvarchar(100) NOT NULL,
[Grade] smallint NOT NULL,
[Comment] nvarchar(100) NOT NULL,
[CreatedDate] date NULL,
CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED(Id)
)

SELECT * FROM dbo.Grade

INSERT INTO dbo.Grade(StudentId, CourseId, TeacherId, Grade, Comment)
VALUES('Martina12', 'English', 'Jane12', '5', 'Good Job!') --dava 2 rows so martina, znam kako da go sredam, mala greska bese bidejki pak napraviv execute--
INSERT INTO dbo.Grade(StudentId, CourseId, TeacherId, Grade, Comment)
VALUES('Nick', 'Maths', 'Jane12', '3', 'Work harder!')
INSERT INTO dbo.Grade(StudentId, CourseId, TeacherId, Grade, Comment)
VALUES('Rob', 'Chemistry', 'Jane12', '5', 'Good Job!')



CREATE TABLE dbo.Course
(
[Id] int identity (1,1),
[Name] nvarchar(100) NOT NULL,
[Credit] nvarchar(100) NULL,
[AcademicYear] nvarchar(10) NULL,
[Semester] nvarchar(20) NOT NULL,
CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED(Id)
)

SELECT * FROM dbo.Course

INSERT INTO dbo.Course(Name, Semester)
VALUES('Maths', '1st Semester')
INSERT INTO dbo.Course(Name, Semester)
VALUES('English', '2nd Semester')
INSERT INTO dbo.Course(Name, Semester)
VALUES('Chemistry', '3rd Semester')
INSERT INTO dbo.Course(Name, Semester)
VALUES('SQL', '3rd Semester')



CREATE TABLE dbo.GradeDetails
(
[Id] int identity (1,1),
[GradeId] nvarchar(100) NOT NULL,
[AchievmentTypeId] nvarchar(100) NULL,
[AchievmentPoints] smallint NOT NULL,
[AchievmentPointsMax] smallint NOT NULL,
[AchievmentDate] date NOT NULL,
CONSTRAINT [PK_GradeDetails] PRIMARY KEY CLUSTERED(Id)
)

SELECT * FROM dbo.GradeDetails

INSERT INTO dbo.GradeDetails(GradeId, AchievmentPoints, AchievmentPointsMax, AchievmentDate)
VALUES('233', '89', '100', '2022-12-20')
INSERT INTO dbo.GradeDetails(GradeId, AchievmentPoints, AchievmentPointsMax, AchievmentDate)
VALUES('234', '100', '100', '2022-12-22')
INSERT INTO dbo.GradeDetails(GradeId, AchievmentPoints, AchievmentPointsMax, AchievmentDate)
VALUES('223', '39', '100', '2022-12-15')


CREATE TABLE dbo.AchievementType
(
[Id] int identity(1,1),
[Name] nvarchar(100) NOT NULL,
[Description] nvarchar(200) NOT NULL,
[ParticipationRate] smallint NULL,
CONSTRAINT [PK_AchievementType] PRIMARY KEY CLUSTERED(Id)
)

SELECT * FROM dbo.AchievementType

INSERT INTO dbo.AchievementType(Name, Description)
VALUES('Scholarship','You will need 100 points to be able to get a scholarship.Take the exam now.')