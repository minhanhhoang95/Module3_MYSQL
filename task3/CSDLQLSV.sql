USE quanlyhocsinh;
insert into class values (1,'A1','2008-12-20',1);
insert into class values (2,'A2','2008-12-22',1);
insert into class values (3,'B3',current_date,0);

INSERT INTO Student (StdName, Address, Phone, Status, ClassID)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StdName, Address, Phone, Status, ClassID)
VALUES ('Hoa', 'Hai phong', null, 1,1);
INSERT INTO Student (StdName, Address, Phone, Status, ClassID)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject values (1,'CF',5,1),(2,'C',6,1),(3,'HDJ',5,1),(4,'RDBMS',10,1);

INSERT INTO Mark (SubID,StudentID,Mark,ExamTimes) values (1,1,8,1),(1,2,10,2),(2,1,12,1);