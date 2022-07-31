USE School
/*Se inserta datos masivos para la tabla Person*/
/*SELECT * FROM Person
SET IDENTITY_INSERT Person ON
DELETE FROM Person DBCC CHECKIDENT ('Person', RESEED, 0)
*/
DECLARE @count INT;
SET @count=1;
BEGIN TRANSACTION
 WHILE(@count<=5000000)
 BEGIN
INSERT INTO Person(PersonID, LastName, FirstName,
	HireDate, EnrollmentDate, Discriminator) 
	VALUES (@count,'Apellido','Nombre',
	GETDATE(),GETDATE(), 'Discriminator');
SET @count = @count + 1;
END
IF(@@ERROR > 0)
BEGIN
 ROLLBACK TRANSACTION
END
ELSE
BEGIN
 COMMIT TRANSACTION
END
GO
/*SET IDENTITY_INSERT Person OFF*/

/*Se inserta datos masivos para la tabla Department*/
/*SELECT * FROM Department
SET IDENTITY_INSERT Department OFF
DELETE FROM Department DBCC CHECKIDENT ('Department', RESEED, 0)
*/
DECLARE @count INT;
SET @count=1;
BEGIN TRANSACTION
 WHILE(@count<=5000000)
 BEGIN
INSERT INTO Department(DepartmentID, Name, Budget,
	StartDate, Administrator) 
	VALUES (@count,'Departamento',RAND(9)*(10-1)+1,
	GETDATE(), FLOOR(RAND()*(20-10+1))+10);
SET @count = @count + 1;
END
IF(@@ERROR > 0)
BEGIN
 ROLLBACK TRANSACTION
END
ELSE
BEGIN
 COMMIT TRANSACTION
END
GO


/*Se inserta datos masivos para la tabla Course*/
/*SELECT * FROM Course
SET IDENTITY_INSERT Course ON
DELETE FROM Course DBCC CHECKIDENT ('Course', RESEED, 0)
*/
DECLARE @count INT;
SET @count=1;
BEGIN TRANSACTION
 WHILE(@count<=5000000)
 BEGIN
INSERT INTO Course(CourseID,Title,
	Credits,DepartmentID) 
	VALUES (@count,'Curso', FLOOR(RAND()*(60-1+1))+1,
	FLOOR(RAND()*(5000000-1+1))+1);
SET @count = @count + 1;
END
IF(@@ERROR > 0)
BEGIN
 ROLLBACK TRANSACTION
END
ELSE
BEGIN
 COMMIT TRANSACTION
END
GO


/*Se inserta datos masivos para la tabla CourseInstructor*/
/*SELECT * FROM CourseInstructor
SET IDENTITY_INSERT CourseInstructor ON
DELETE FROM CourseInstructor DBCC CHECKIDENT ('CourseInstructor', RESEED, 0)
*/
DECLARE @count INT;
SET @count=1;
BEGIN TRANSACTION
 WHILE(@count<=5000000)
 BEGIN
INSERT INTO CourseInstructor(CourseID, PersonID) 
	VALUES (FLOOR(RAND()*(5000000-1+1))+1, 
	FLOOR(RAND()*(5000000-1+1))+1);
SET @count = @count + 1;
END
IF(@@ERROR > 0)
BEGIN
 ROLLBACK TRANSACTION
END
ELSE
BEGIN
 COMMIT TRANSACTION
END
GO