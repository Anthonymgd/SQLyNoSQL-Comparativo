INSERT INTO Department VALUES (generate_series(1, 5000000),'Nombre',
                               630.99, '2008-03-01','1');
	
INSERT INTO Course VALUES (generate_series(1, 5000000),
                           'Título', 50,
                           generate_series(1,5000000));

INSERT INTO Person VALUES (generate_series(1, 5000000),
                           'Apellido', 'Nombre', now(),
                          now(),'Discriminador');

INSERT INTO CourseInstructor VALUES (generate_series(1, 5000000),
                                      generate_series(1, 5000000));