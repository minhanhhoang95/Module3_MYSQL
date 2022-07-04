use quanlyhocsinh;
create table class(
ClassID int primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null ,
Status bit 
); 
create table Student(
StdID int not null Primary key auto_increment ,
StdName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit ,
ClassID int not null,
FOREIGN KEY (ClassID) REFERENCES Class (ClassID)
);
create table Subject(
SubID int not null Primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1  check (Credit  >1),
Status bit default 1
);
create table Mark(
MarkID int not null Primary key auto_increment,
SubID int not null,
StudentID int not null,
Mark float default 0 check(Mark between 0 and 100 ),
ExamTimes tinyint default 1 ,
unique(SubID,StudentID),
 FOREIGN KEY (SubID) REFERENCES Subject(SubID),
 FOREIGN KEY (StudentID) REFERENCES Student(StdID)
);