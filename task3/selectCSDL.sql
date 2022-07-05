use QuanLyHocSinh;
select * from Student; 

select * from Student where Status = true ;

SELECT *
FROM Subject
WHERE Credit < 10;

SELECT S.StdID, S.StdName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID;

SELECT S.StdID , S.stdName , C.ClassName 
FROM Student S join Class C on S.ClassId = C.ClassId
where C.className = 'A1';

SELECT S.StdId, S.StdName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StdId = M.StudentId join Subject Sub on M.SubId = Sub.SubId;

select S.StdId, S.StdName, Sub.SubName, M.Mark
From Student S join Mark M on S.StdID = M.StudentID join Subject Sub on M.SubId = Sub.SubId
where Sub.SubName = 'CF';