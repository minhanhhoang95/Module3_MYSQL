use quanlyhocsinh;
SELECT Address, COUNT(StdId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;

SELECT S.StdID,S.StdName,AVG(Mark)
FROM Student S join Mark M on S.StdId = M.StudentID
GROUP BY S.StdId, S.StdName;

SELECT S.StdId,S.StdName, AVG(Mark)
FROM Student S join Mark M on S.StdId = M.StudentId
GROUP BY S.StdId, S.StdName
HAVING AVG(Mark) > 15;

SELECT S.StdId, S.StdName, AVG(Mark)
FROM Student S join Mark M on S.StdId = M.StudentId
GROUP BY S.StdId, S.StdName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);