use customers ; 

select * from student ; 

call get_student_info(@record , 27) ;

select @record as Totalrecords  ;

-- CREATE PROCEDURE customers.get_student_info(in age int)
-- begin
-- select * from student where student.age = age ; 
-- end

-- CREATE PROCEDURE customers.get_student_info(out records int)
-- begin
-- select count(*) into records from student where student.age = 27 ; 
-- end

-- CREATE PROCEDURE customers.get_student_info(inout records int , in age int)
-- begin
-- select count(*) into records from student where student.age = age ; 
-- end
