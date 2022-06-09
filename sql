use Univ;

--- (1) To find all instructors in Comp. Sci. dept
    select name
    from instructor	
    where dept_name = 'Comp. Sci.';
--- (2) To find all instructors in Comp. Sci. dept with salary > 80000
	select name
    from instructor	
    where dept_name = 'Comp. Sci.'and salary > 80000;

--- (3) Find the Cartesian product instructor X teaches
     select *	from instructor, teaches;

--- (4) Find the names of all instructors who have taught some course and the course_id
    select name, course_id from instructor, teaches  where   instructor.ID = teaches.ID;

--- (5) Find the names of all instructors in the Art  department who have taught some course and the course_id
     select name, course_id from instructor, teaches  where   instructor.ID = teaches.ID and dept_name='Art';
     
--- (6) Find the names of all instructors who have a higher salary than some instructor in 'Comp. Sci'.
# instroctor c 는 컴퓨터 교수님들만. 나머지는 a 로 / FROM 절에서 먼저 정의가 필요함!!!
select distinct A.name,A.dept_name,C.dept_name
 from instructor as C , instructor as A 
where A.salary > C.salary and C.dept_name = 'Comp. Sci.';


     select distinct T.name 
     from instructor as T,       instructor as S   #같은 instrucotor 테이블 이라도 속성으로 나눌수있다는것.
     where T.salary > S.salary and S.dept_name = 'Comp. Sci.';

--- (7) Find the names of all instructors whose name includes the substring “dar”.
     select name from instructor where name like '%dar%'; 

--- (8) Find the names of all instructors with salary between $90,000 and $100,000
    select name from instructor where salary between 90000 and 100000;

--- (9) Find courses that ran in spring 2010  and in Fall 2009
--- (select course_id from teaches where semester = 'Fall' and year = 2009) intersect (select course_id from teaches where semester = 'Spring' and year = 2010);
# where 속성 in (select : 앞에 속성과 같을것!!)
     select course_id,semester,year from teaches where semester = 'Fall' and year = 2009 and course_id in (select course_id from teaches where semester = 'Spring' and year = 2010);
     
--- (10) Find courses that ran in spring 2010 or in Fall 2009
# or 을 쓸경우엔 중복제거 distinct ! 
# union 합집합시엔 셀렉트가 같아야함!
     (select course_id from teaches where semester = 'Fall' and year = 2009) union (select course_id from teaches where semester = 'Spring' and year = 2010);
     
--- (11) Find courses that ran in all spring 2010 but not in Fall 2009
#not in 절 쓸때 where 조건이 2개인경우엔 and로 이어서 써주면 됨!!
#굳이 semester 속성 하나하고 또 낫인( year 이렇게 걸필요 xxx)
      select course_id from teaches where semester = 'Fall' and year = 2009 and course_id not in 
      (select course_id from teaches where semester = 'Spring' and year = 2010);
      #CS-347 바뀜. NOT IN 다음거 배제시킴
      select * FROM teaches;
      
--- (12) Find the average salary of instructors in the Computer Science department 
     select avg (salary) from instructor where dept_name= 'Comp. Sci.';

--- (13) Find the total number of instructors who teach a course in the Spring 2010 semester
     # id 중복을 제거하고 -> 숫자를 세야지요 ?? 
     select count(distinct ID) from teaches where semester = 'Spring' and year = 2010;

--- (14) Find the number of tuples in the course relation
#튜플은 행이고 , * 을 세면 된다.
      select count(*) from course;

--- (15) Find the average salary of instructors in each department
	select dept_name, avg (salary) from instructor group by dept_name;

--- (16) Find the names and average salaries of all departments whose average salary is greater than 42000
# 먼저 조건을 완성하고 그다음에 수식으로 찾을 조건이 남았다면 having
     select dept_name, avg (salary)
     from instructor
     group by dept_name
     having avg (salary) > 42000;

--- (17) Find the total number of (distinct) students who have taken course sections taught by the instructor with ID 10101
     #같은 테이블안에 있는거면 셀렉트와 웨어가 중복될 필요x 
     # in은 연결의 개념이 중요
     # course sections taught by the instructor with ID 10101 -> teaches 에서 모든 조건을 그대로 가져와서
     #  그 조건 그대로 take ID (학생수) 해당하는 개수를 가져오면 되지!
     select name
     from takes,student
     where takes.ID=student.ID and (course_id, sec_id, semester, year) in (select course_id, sec_id, semester, year from teaches where teaches.ID= 10101);

--- (18) Find names of instructors with salary greater than that of some (at least one) instructor in the Comp. Sci. department.
	#문제해석 : 컴퓨터 교수님들중 최소금액 한분보다 큰 모든 교수님
    # some 절에 제일 낮은 조건을 기준으로 
    select name,salary from instructor where salary > some (select salary from instructor where dept_name = 'Comp. Sci.');



--- (19) Find the names of all instructors whose salary is greater than the salary of all instructors in the Comp. Sci. department.
   #문제해석 : 컴퓨터과 교수님의 모든 급여보다 더 큰 교수님의 성함!
   select name from instructor where salary > all (select salary from instructor where dept_name = 'Comp. Sci.');
select name from instrucro where salart > all(select salary from instrucro where de='cm');

--- (20) Find all students who have taken all courses offered in the Biology department.
     select S.ID,dept_name
     from student as S
     where not exists (select course_id
                                 from course
                                 where dept_name = 'Biology' and course_id not in (select T.course_id from takes as T where S.ID = T.ID));

--- (21) Delete all instructors from the Finance department
     delete from instructor   where dept_name= 'Finance';
delete from ins where d ;
--- (22) Delete all instructors whose salary is less than the average salary of instructors 
     delete from instructor where salary< (select avg (salary) from instructor);
delete from instructor where salary ;

--- (23) Increase salaries of instructors whose salary is over $100,000 by 3%, and all others by a 5% 
      set sql_safe_updates=0;
                 update instructor set salary = salary * 1.03  where salary > 100000;
                 update instructor set salary = salary * 1.05  where salary <= 100000;
update 테이블 set 속성=바꾸고싶은값 where 조건;

select * from instructor;

--- (24) Add a new tuple to student  with tot_creds set to null
                 insert into student  values ('3003', 'Green', 'Finance', null);
		 
		 
		 
		 
		 
		 
		 
		 
----------------

#복합질의
4. 진료금액이 5만원 이상인 동물의 보호자 명을 구해라. 
SELECT patient.name
FROM patient , medical
WHERE  patient.patientnumber = medical.patientnumber
 and medical.price > 50000;



5. 진료금액이 15000원이나온 보호자의 이름과 질병을 구해라    
select patient.name , medical.disease
from patient,medical
where patient.patientnumber = medical.patientnumber
and price=15000 ;


6. 보호자 천수정의 담당의사 이름은?  *스칼라복합질의사용 (select 안에 select 문 사용 : 보통 어그리게이션 함수에 대해 많이 사용하긴함)
select p.patientnumber , p.name ,(select d.name 
from doctor d 
where d.doctor_number=p.doctor_number)'담당의'
from patient p
group by p.patientnumber
having p.name like '천수정'; 	#having 그룹조건절로 groub by 연산값에만 사용이 가능한줄알았는데 , 연결된 다른 애트리뷰트에 대해서도 적용이 가능하다!!

**** 스칼라 부속질의란? ****
select 에 서로 다른 테이블의 값을 엮어서 가져올때 쓰는 질의.
어그리게이션 함수중 max , sum 과 같은 함수는 계산후 사라져버리는데 그계산값에 대한 정보를 추가적으로 가져오고싶을때 
셀렉트안에 셀렉트를 넣어서 값의 테이블과 추가정보의 테이블을 조인해서 쓰면된다.




# aggregation 함수질의 
7. 가장 비싼 진료비를 낸 동물의 종류는
select animal.animaltype 
from  medical , animal
where medical.patientnumber = animal.patientnumber and
medical.price = (select max(price)
from medical) ;

    

8. 장염에 평균 진료금액은?
select disease, avg (price) as '평균진료비'
from medical
where disease LIKE '장염'
group by disease ;


9. 평균 진료비용보다 작은비용의 병명과 비용
SELECT 	disease , price  
FROM 	medical
WHERE 	price <= (SELECT AVG(price)
					FROM medical);
                    
10. 진료를 2번 이상 받은 환자의 번호와 이름은
select patient.patientnumber , patient.name
from patient
where patient.patientnumber = (select patientnumber
from medical
group by patientnumber
HAVING COUNT(patientnumber)>=2 ) ; 

12. 동물병원의 10주년 이벤트를 위해 각 개업으로부터 10주년뒤에 날짜를 구하여라.
select name, opendate, adddate(opendate, interval 10 year)
from hospital;


