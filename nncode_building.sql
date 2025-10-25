

SELECT * FROM GRADE_IDENTIFY
WHERE GRADEID = 5

SELECT * FROM GRADE_NAMES

SELECT * FROM GRADE_NAMES ORDER BY GRADEID

SELECT * FROM GROUPS
WHERE BRANCH = 'NEWTOWN'

SELECT * FROM course
WHERE BRANCH = 'nEWTOWN'


SELECT * FROM master_credentials_file_l2
where branch = 'KismatpuR Hyderabad'

---must do this after doing truncate master_credentials_file_l2

UPDATE MASTER_cREDENTIALS_FILE_L2
SET BRANCH = 'Sector 70 Gurugram'
Where Branch = 'Sec 70 gURUGRAM'

update course 
set section = 'Nursery'
where section = 'NNLP2'

update course 
set section = 'PP1'
where section = 'NNLP3'

DELETE FROM COURSE
WHERE COURSES = 'LL-LC-G2-25-26'  --- I DELETED THIS COURSES BUT 3 ROW AFFECTED NOW I NEED TO CHECK WHAT ARE DELETED AND I WANT TO
                            -- GET THOSE ROWS BACK 

INSERT INTO COURSE(courses , branch , section) 
VALUES
('LL-LC-G2-25-26' , 'Rajnagar Ghaziabad' , 'Grade 2'),
('LL-LC-G2-25-26' , 'Nehru Nagar Ghaziabad' , 'Grade 2'),
('LL-LC-G2-25-26' , 'Sector 89 B Gurugram' , 'Grade 2')

SELECT * FROM COURSE

INSERT INTO COURSE(courses , branch , section) 
VALUES
('LL-LC-NNLP 4-25-26'	,'Noida Sec 61'	,'PP2')

DELETE FROM COURSE
WHERE COURSES =  'LL-LC-PP2-25-26' AND BRANCH = 'Noida Sec 61' AND SECTION = 'PP2'


select * from master_credentials_file_l
where [First name] = 'Ivanshika' and [last name] = 'makhal'



with cte_count as 
	(	
	select 
		m.[First Name] as firstname , 
		m.[Last Name] as lastname , 
		m.Username as  username , 
		m.Password as password , 
		m.Username as email ,
		C.COURSES AS course1 , 
		m.branch , 
		m.[Class/Grade],
		m.section , 
		g.groups  as [group1] , ----i am working here 
		'student' as role1 , 
		'oauth2' as auth
	from master_credentials_file_l2 as m
		JOIN GROUPS AS G 
			ON G.BRANCH = M.BRANCH
			AND G.SECTION = M.SECTION  
			AND  lower(
				case 
					when g.grade = 'Pre Nursery' then REPLACE(g.grade, ' ' , '') 	else g.grade
				end ) = (
			select lower(
					case 
						when gradename = 'Pre Nursery' then replace(gradename, ' ' , '') else gradename 
		   		end 
		)
		from grade_names
		where gradeid =  (select gradeid  from grade_identify as gi
		where gi.gradeallnames = m.[class/grade])
		)			JOIN course AS c 
			ON c.branch = m.Branch
		   AND lower(case when c.section = 'Pre Nursery'  then replace(c.section , ' ' ,'') 			   else c.section 
			   end ) IN (select LOWER(
		case when gradename  = 'Pre Nursery'  then REPLACE(gradename, ' ' ,'') 
		else Gradename 
		end )
			from grade_names
			where gradeid IN  (select gradeid  from grade_identify as gi
			where gi.gradeallnames =  ltrim(rtrim(m.[class/grade])))
			)
) 
Select * from cte_count 




select * from course
where brANCH =  'VASUNDHRA SEC 11'

select * from groups
where brANCH =  'VASUNDHRA SEC 11'

DELETE FROM GROUPS 
WHERE BRANCH = 'Noida Sec 61' AND SECTION = '1' AND GRADE = 'GRADE 1' AND GROUPS = 'LL-LC-G1-25-26'

INSERT INTO GROUPS 
VALUES
('Noida Sec 61' , 'A' , 'PP2' , 'LL-Noida 61-UKG-A-25-26')

select * from master_Credentials_file_l2
select * from grade_identify
select * from grade_names
select * from groups
select * from course


update course
set branch = 'Gaur City2'
where branch = 'Gaur City 2'

UPDATE GROUPS 
SET BRANCH = 'Gaur City2'
where branch = 'Gaur City 2'


update master_Credentials_file_l
set branch = 'Gurugram Sec 15'
where branch = 'Gurugram Sec-15'


update master_Credentials_file_l2
set branch = 'Gurugram Sec 15'
where branch = 'Gurugram Sec-15'





SELECT * FROM GROUPS
SELECT * FROM COURSE
WHERE BRANCH IN  ('nEHRU nAGAR GHAZIABAD' , 'RAJNAGAR GHAZIABAD' , 'INDRAPURAM' , 'SEC 89 B GURUGRAM')


		
		with cte_buildingcsv as 
		(
		select 
		m.[First Name] as firstname ,                -- FirstName For CSV 
		m.[Last Name] as lastname ,                  -- Lastname For CSV
	CASE 
        WHEN  m.branch not in ('Faridabad Sec 89',
'Gaur City',
'Gaur City 2',
'Gurugram Sec 15', 
'Gurugram Sec 48',
'Gurugram Sec 54',
'Sector 70 Gurugram',
'Kalka Ji',
'Kismatpur Hyderabad',
'Madhavnagar Gwalior',
'Malviyanagar Delhi',
'Nehru Nagar Ghaziabad',
'Nirala Estate',
'Sector 95 A Gurugram',
'Noida Sec 116',
'Noida Sec 61',
'Rajnagar Extension',
'Rajnagar Ghaziabad',
'Vasundhra Sec 11',
'Sector 89 B Gurugram')  THEN 
        LOWER(m.[First Name] + RIGHT(m.[Admission Number / Unique Identification Number ] , 4)) else m.username
    END AS username,                                 -- Username i might need to create this part
			CASE 
        WHEN  m.branch not in ('Faridabad Sec 89',
'Gaur City',
'Gaur City 2',
'Gurugram Sec 15', 
'Gurugram Sec 48',
'Gurugram Sec 54',
'Sector 70 Gurugram',
'Kalka Ji',
'Kismatpur Hyderabad',
'Madhavnagar Gwalior',
'Malviyanagar Delhi',
'Nehru Nagar Ghaziabad',
'Nirala Estate',
'Sector 95 A Gurugram',
'Noida Sec 116',
'Noida Sec 61',
'Rajnagar Extension',
'Rajnagar Ghaziabad',
'Vasundhra Sec 11',
'Sector 89 B Gurugram' ) THEN 
        ltrim(rtrim(m.[First Name])) + '@123' else m.password
    END AS password,                                 -- Username i might need to create this part
                     -- Password i might need to create this part
		m.Username as email ,                        -- Same as Username
		C.COURSES AS course1 ,                       -- Course in which the object is need to enrolled
		g.groups  as [group1] ,                      -- Group where the object is need to assigned
		'student' as role1 ,  
		m.branch as branch , 
		m.[class/grade] as class , 
		m.section as section,
		[Admission Number / Unique Identification Number ] as admission_number , 
		-- Role of the access
		'oauth2' as auth                             
from master_credentials_file_l2 as m
	  -- joined the groups for group1
			JOIN GROUPS AS G                                          --
			ON G.BRANCH = M.BRANCH                                    --
			AND G.SECTION = M.SECTION                                 --   
			AND  g.grade =  (                                         -- 
select gradename                                                      --
from grade_names         
--    {  Groups code Execution } 
	where gradeid =                                                   --
(                                                                     --
 select gradeid                                                       --
 from grade_identify as gi                                            --
	where gi.gradeallnames = ltrim(rtrim(m.[class/grade])))           --
)
       -- joining the courses for course1

JOIN course AS c                                                      --
    ON c.branch = m.Branch                                            --
   AND c.section =                                                    --
 (                                                                    --
	select                                                            --
   gradename from grade_names                                      	--
		where gradeid =                                               --    {  Courses Code Execution  } 
		(                                                             --
			select gradeid                                            --
    from grade_identify as gi                                         --
	where gi.gradeallnames =  ltrim(rtrim(m.[class/grade])))          --
)
) 
	select * from cte_buildingcsv 
	where branch = 'Faridabad Sec 89'




	where branch IN ('Faridabad Sec 89',
'Gaur City',
'Gaur City 2',
'Gurugram Sec 15', 
'Gurugram Sec 48',
'Gurugram Sec 54',
'Sector 70 Gurugram',
'Kalka Ji',
'Kismatpur Hyderabad',
'Madhavnagar Gwalior',
'Malviyanagar Delhi',
'Nehru Nagar Ghaziabad',
'Nirala Estate',
'Sector 95 A Gurugram',
'Noida Sec 116',
'Noida Sec 61',
'Rajnagar Extension',
'Rajnagar Ghaziabad',
'Vasundhra Sec 11',
'Sector 89 B Gurugram')



SELECT * FROM MASTER_CREDENTIALS_FILE_L2
WHERE BRANCH = 'BEHRAMPORE'

	--where username is null 

--------------------------------------------------------------------------------------

---both these queries are for checking the count of the learners in the various branches 


----this is the real code i am executing and getting the total result so make copies of this code 
-- whenever need to generate the code from scratch 


with cte_count as 
	(	
	select 
		m.[First Name] as firstname , 
		m.[Last Name] as lastname , 
		m.Username as  username , 
		m.Password as password , 
		m.Username as email ,
		C.COURSES AS course1 , 
		m.branch , 
		m.[Class/Grade],
		m.section , 
		g.groups  as [group1] , ----i am working here 
		'student' as role1 , 
		'oauth2' as auth
	from master_credentials_file_l2 as m
		JOIN GROUPS AS G 
			ON G.BRANCH = M.BRANCH
			AND G.SECTION = M.SECTION  
			AND  lower(
				case 
					when g.grade = 'Pre Nursery' then REPLACE(g.grade, ' ' , '') 	else g.grade
				end ) = (
			select lower(
					case 
						when gradename = 'Pre Nursery' then replace(gradename, ' ' , '') else gradename 
		   		end 
		)
		from grade_names
		where gradeid =  (select gradeid  from grade_identify as gi
		where gi.gradeallnames = m.[class/grade])
		)			JOIN course AS c 
			ON c.branch = m.Branch
		   AND lower(case when c.section = 'Pre Nursery'  then replace(c.section , ' ' ,'') 			   else c.section 
			   end ) IN (select LOWER(
		case when gradename  = 'Pre Nursery'  then REPLACE(gradename, ' ' ,'') 
		else Gradename 
		end )
			from grade_names
			where gradeid IN  (select gradeid  from grade_identify as gi
			where gi.gradeallnames =  ltrim(rtrim(m.[class/grade])))
			) 
		)
SELECT * FROM CTE_COUNT


---This code wil find the total number of learners accordingly to the grades like the nnlp 2 , nnlp 3 , nnlp 4 
-- and give the total output as the garde ---->  and second coloum is count 
-- use this while checking the count of the learners in each school and each branch

WITH cte_count1 AS 
(	
	SELECT 
		m.[First Name] AS firstname, 
		m.[Last Name] AS lastname, 
		m.Username AS username, 
		m.Password AS password, 
		m.Username AS email,
		C.COURSES AS course1, 
		m.branch, 
		m.[Class/Grade],
		m.section, 
		COUNT(*) AS totalcount,
		g.groups AS [group1],
		'student' AS role1, 
		'oauth2' AS auth
	FROM master_credentials_file_l2 AS m
	JOIN GROUPS AS G 
		ON G.BRANCH = M.BRANCH
		AND G.SECTION = M.SECTION  
		AND LOWER(
			CASE 
				WHEN g.grade = 'Pre Nursery' THEN REPLACE(g.grade, ' ', '') 
				ELSE g.grade
			END
		) = (
			SELECT LOWER(
				CASE 
					WHEN gradename = 'Pre Nursery' THEN REPLACE(gradename, ' ', '') 
					ELSE gradename 
				END
			)
			FROM grade_names
			WHERE gradeid = (
				SELECT gradeid  
				FROM grade_identify AS gi
				WHERE gi.gradeallnames = m.[Class/Grade]
			)
		)
	JOIN course AS c 
		ON c.branch = m.Branch
		AND LOWER(
			CASE 
				WHEN c.section = 'Pre Nursery' THEN REPLACE(c.section , ' ', '')  
				ELSE c.section 
			END
		) IN (
			SELECT LOWER(
				CASE 
					WHEN gradename = 'Pre Nursery' THEN REPLACE(gradename, ' ', '') 
					ELSE gradename 
				END
			)
			FROM grade_names
			WHERE gradeid IN (
				SELECT gradeid  
				FROM grade_identify AS gi
				WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
			))
	GROUP BY 
		m.[First Name], 
		m.[Last Name],  
		m.Username,  
		m.Password,  
		m.Username, 
		C.COURSES, 
		m.branch, 
		m.[Class/Grade], 
		m.section, 
		g.groups
)
-- Final aggregation: group by class/grade
SELECT 
	[Class/Grade],
	COUNT(*) AS total_students
FROM cte_count1
WHERE branch = 'SODEPUR'
GROUP BY [Class/Grade]
ORDER BY [Class/Grade];




---TRYING TO  INSERT INTO THE NEW TABLE SO I ACN MANAGE THE CSV....AND CAN FILTER THE CREDENTIALS ACCORDINGLY 
--- SO THE PAL  IS TO CREATE A TABLE AND THEN INSERT ALL THE RECORD IN THAT WHICH ALREADY HAS THE CREDENTIALS GENERATED..
-- SO WHEN THE CODE RUN THAT WILL EXCLUEDE THOSE USERS



with cte_count as 
	(	
	select 
		m.[First Name] as firstname , 
		m.[Last Name] as lastname , 
		m.Username as  username , 
		m.Password as password , 
		m.Username as email ,
		C.COURSES AS course1 , 
		-- m.branch , 
	    --	m.[Class/Grade],
		-- m.section , 
		g.groups  as [group1] , ----i am working here 
		'student' as role1 , 
		'oauth2' as auth
	from master_credentials_file_l2 as m
		JOIN GROUPS AS G 
			ON G.BRANCH = M.BRANCH
			AND G.SECTION = M.SECTION  
			AND  lower(
				case 
					when g.grade = 'Pre Nursery' then REPLACE(g.grade, ' ' , '') 	else g.grade
				end ) = (
			select lower(
					case 
						when gradename = 'Pre Nursery' then replace(gradename, ' ' , '') else gradename 
		   		end 
		)
		from grade_names
		where gradeid =  (select gradeid  from grade_identify as gi
		where gi.gradeallnames = m.[class/grade])
		)			JOIN course AS c 
			ON c.branch = m.Branch
		   AND lower(case when c.section = 'Pre Nursery'  then replace(c.section , ' ' ,'') 			   else c.section 
			   end ) IN (select LOWER(
		case when gradename  = 'Pre Nursery'  then REPLACE(gradename, ' ' ,'') 
		else Gradename 
		end )
			from grade_names
			where gradeid IN  (select gradeid  from grade_identify as gi
			where gi.gradeallnames =  ltrim(rtrim(m.[class/grade])))
			) 
		)
   insert into newenrolls 
   select * from cte_count as cc
   where username is not null and 
   course1 is not null
   and group1 is not null
   and role1 is not null 
   and not exists( select 1 from testingtable as tt 
   where tt.username = cc.username 
   and tt.firstname = cc.firstname ) 



   TRUNCATE TABLE NEWENROLLS
   TRUNCATE  TABLE TESTINGTABLE

   select * from master_Credentials_file_l2 as m 
   left join school_branches as sc 
   on sc.branch = m.branch 

   delete from testingtable
   where firstname = 'prashantss'

      delete from newenrolls
   where firstname = 'prashantss'


   select * from testingtable
   where firstname = 'prashantss'
   select * from newenrolls
      where firstname = 'prashantss'

 TRUNCATE TABLE NEWENROLLS

   ----- now trying to add some usernmae filters 


WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
CASE 
    WHEN EXISTS (
        SELECT 1 
        FROM school_branches sb 
        WHERE sb.branch = m.branch
    ) THEN m.username
    ELSE LOWER(ISNULL(m.[First Name], m.[Last Name]) + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4))
END AS username,
CASE 
    WHEN EXISTS (
        SELECT 1 
        FROM school_branches sb 
        WHERE sb.branch = m.branch
    ) THEN m.password
    ELSE 
        UPPER(LEFT(ISNULL(m.[First Name], m.[Last Name]), 1)) + 
        LOWER(SUBSTRING(ISNULL(m.[First Name], m.[Last Name]), 2, LEN(ISNULL(m.[First Name], m.[Last Name])))) + 
        '@123'
END AS password,
        m.Username + '@naturenurture.online'  AS email,
        C.COURSES AS course1,
        g.groups AS [group1],
        'student' AS role1,
        'oauth2' AS auth
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
    JOIN groups AS g ON g.branch = m.branch 
                    AND g.section = m.section
                    AND LOWER(CASE 
                        WHEN g.grade = 'Pre Nursery' THEN REPLACE(g.grade, ' ', '') 
                        ELSE g.grade 
                    END) = (
                        SELECT LOWER(CASE 
                            WHEN gradename = 'Pre Nursery' THEN REPLACE(gradename, ' ', '') 
                            ELSE gradename 
                        END)
                        FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = m.[Class/Grade]
                        )
                    )
    JOIN course AS c ON c.branch = m.branch
                    AND LOWER(CASE 
                        WHEN c.section = 'Pre Nursery' THEN REPLACE(c.section, ' ', '') 
                        ELSE c.section 
                    END) IN (
                        SELECT LOWER(CASE 
                            WHEN gradename = 'Pre Nursery' THEN REPLACE(gradename, ' ', '') 
                            ELSE gradename 
                        END)
                        FROM grade_names
                        WHERE gradeid IN (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
                        )
                    )
)  
INSERT INTO newenrolls
SELECT * 
FROM cte_count AS cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );


  insert into testingtable 
  select * from newenrolls as n 
  where not exists ( select 1 from testingtable  as test 
  where test.firstname = n.firstname 
  and test.lastname = n.lastname 
  and test.username = n.username 
  and test.password = n.password 
  and test.email = n.email 
  and test.course1 = n.course1
  and test.group1 = n.group1 
  and test.role1 = n.role1
  and test.auth = n.auth )


  select
   branch , count(*) 
   from master_credentials_file_l2
   group by branch
   having count(*) > 1

truncate table newenrolls
truncate table testingtable

select * from newenrolls
where left(group1 , 2) = 'SH'

SELECT * FROM GROUPS 
WHERE BRANCH = 'allen kids bareilly'

SELECT * FROM course 
WHERE BRANCH = 'allen kids bareilly'

delete from course
where courses = 'SH-LC-Prep-25-26' 
and branch = 'Allen Kids Bareilly' 
and section = 'PP2'

insert into course values
('SH-LC-Prep-25-26' , 'Allen Kids Bareilly' , 'PP2' )

SELECT * FROM NEWENROLLS
where left(course1 , 2) = 'll'
and 

select * from master_credentials_file_l2
where remarks ='new'





WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
CASE 
    WHEN not EXISTS (
        SELECT 1 
        FROM school_branches sb 
        WHERE sb.branch = m.branch
    ) THEN LOWER(replace(ISNULL(m.[First Name], m.[Last Name]), ' ' , '') + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4))
ELSE m.username 
END AS username,
CASE 
    WHEN NOT EXISTS (
        SELECT 1 
        FROM school_branches sb 
        WHERE sb.branch = m.branch
    ) THEN 
UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
'@123'
		ELSE M.PASSWORD
END AS password,
       CASE 
	   WHEN NOT EXISTS (
	   SELECT 1 FROM SCHOOL_BRANCHES
	   WHERE 
	   SB.BRANCH = M.BRANCH ) THEN 
	   LOWER(replace(ISNULL(m.[First Name], m.[Last Name]), ' ', '') + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)) + '@naturenurture.online'
	   else m.username 
	   end as email , 
        C.COURSES AS course1,
        g.groups AS [group1],
        'student' AS role1,
		CASE 
		WHEN NOT EXISTS(
		SELECT 1 FROM SCHOOL_BRANCHES
		WHERE SB.BRANCH = M.BRANCH)
		THEN '' 
		ELSE 'oauth2'
		end 
         AS auth
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
    left JOIN groups AS g ON g.branch = m.branch 
                    AND g.section = m.section
                    AND  g.grade 
                         = (
                        SELECT GRADENAME FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = m.[Class/Grade]
                        )
                    )
    left JOIN course AS c ON c.branch = m.branch
                    AND c.section  = (
                        SELECT GRADENAME 
                        FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
                        )
                    )
)  
INSERT INTO newenrolls
SELECT * 
FROM cte_count AS cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );


  insert into testingtable 
  select * from newenrolls as n 
  where not exists ( select 1 from testingtable  as test 
  where test.firstname = n.firstname 
  and test.lastname = n.lastname 
  and test.username = n.username 
  and test.password = n.password 
  and test.email = n.email 
  and test.course1 = n.course1
  and test.group1 = n.group1 
  and test.role1 = n.role1
  and test.auth = n.auth )


  TRUNCATE TABLE NEWENROLLS
  TRUNCATE TABLE TESTINGTABLE

  SELECT * FROM MASTER_CREDENTIALS_FILE_L2
  WHERE BRANCH = 'ALLEN KIDS BAREILLY'

  SELECT * FROM NEWENROLLS
  SELECT * FROM GRADE_IDENTIFY
  SELECT * FROM GRADE_NAMES
  SELECT * FROM GROUPS
  where grade in ('NNLP 1' , 'PreNursery')
  SELECT * FROM COURSE

  begin transaction 

  UPDATE GROUPS
  SET GRADE = 'NNLP 1'
  WHERE GRADE = 'PreNursery'

    begin transaction 

  UPDATE GROUPS
  SET GRADE = 'NNLP 1'
  WHERE GRADE = 'PreNursery'

  begin transaction 

  UPDATE GROUPS
  SET GRADE = 'NNLP 2'
  WHERE GRADE = 'Nursery'

  begin transaction 

  UPDATE GROUPS
  SET GRADE = 'NNLP 3'
  WHERE GRADE = 'PP1'

  begin transaction 

  UPDATE GROUPS
  SET GRADE = 'NNLP 4'
  WHERE GRADE = 'PP2'


COMMIT
COMMIT
COMMIT

SELECT * FROM COURSE

  begin transaction 

  UPDATE COURSE
  SET SECTION = 'NNLP 1'
  WHERE SECTION = 'PreNursery'

 
  begin transaction 

  UPDATE COURSE
  SET SECTION = 'NNLP 2'
  WHERE SECTION = 'Nursery'

  
  begin transaction 

  UPDATE COURSE
  SET SECTION = 'NNLP 3'
  WHERE SECTION = 'PP1'

  
  begin transaction 

  UPDATE COURSE
  SET SECTION = 'NNLP 4'
  WHERE SECTION = 'PP2'

  SELECT @@TRANCOUNT
  COMMIT 
  COMMIT 
  COMMIT
  SELECT @@TRANCOUNT

  SELECT * FROM MASTER_cREDENTIALS_FILE_L
  WHERE [FIRST NAME] = 'ATHARV' AND [LAST NAME] = 'JAISWAL' AND BRANCH = 'ANDAL'

  select * from NEWENROLLS


  select * from course


  WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
		CASE
    WHEN m.username IS NOT NULL AND LEN(LTRIM(RTRIM(m.username))) > 0 THEN
        m.username

    WHEN TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch)) THEN
        sup.username_initial +
        LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '') 
        + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4))

    ELSE
        LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '') 
        + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4))
END AS username,
CASE 
    WHEN NOT EXISTS (
        SELECT 1 
        FROM school_branches sb 
        WHERE sb.branch = m.branch
    ) THEN 
UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
'@123'
		ELSE M.PASSWORD
END AS password,
       CASE 
	   WHEN NOT EXISTS (
	   SELECT 1 FROM SCHOOL_BRANCHES
	   WHERE 
	   SB.BRANCH = M.BRANCH ) THEN 
	   LOWER(replace(ISNULL(m.[First Name], m.[Last Name]), ' ', '') + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)) + '@gmail.com'
	   else m.username 
	   end as email , 
        C.COURSES AS course1,
        g.groups AS [group1],
        'student' AS role1,
		CASE 
		WHEN NOT EXISTS(
		SELECT 1 FROM SCHOOL_BRANCHES
		WHERE SB.BRANCH = M.BRANCH)
		THEN '' 
		ELSE 'oauth2'
		end 
         AS auth
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
	left join superhouse as sup
	on trim(lower(sup.branch)) = trim(lower(m.branch))
    left JOIN groups AS g ON g.branch = m.branch 
                    AND g.section = m.section
                    AND  g.grade 
                         = (
                        SELECT GRADENAME FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = m.[Class/Grade]
                        )
                    )
    left JOIN course AS c ON c.branch = m.branch
                    AND c.section  = (
                        SELECT GRADENAME 
                        FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
                        )
                    )
)  
INSERT INTO newenrolls
SELECT * 
FROM cte_count AS cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );


  insert into testingtable 
  select * from newenrolls as n 
  where not exists ( select 1 from testingtable  as test 
  where test.firstname = n.firstname 
  and test.lastname = n.lastname 
  and test.username = n.username 
  and test.password = n.password 
  and test.email = n.email 
  and test.course1 = n.course1
  and test.group1 = n.group1 
  and test.role1 = n.role1
  and test.auth = n.auth )



select * from groups 
select * from course

select * from master_Credentials_file_l2 as m 
left join school_branches as sb 
on sb.branch = m.branch 
left join superhouse as s
on s.branch = m.branch 
left join groups as g
 on g.branch = m.branch 
 and g.section = m.section 
 and  g.grade 
                         = (
                        SELECT GRADENAME FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = m.[Class/Grade]
                        ))
	 left JOIN course AS c ON c.branch = m.branch 
                    AND c.section  = (
                        SELECT GRADENAME 
                        FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
                        )
                    )




	select * from school_branches
    select * from superhouse
	select * from groups
	select * from course
	select * from grade_identify
	select * from grade_names






	select * from newenrolls

	select * from testingtable

	
  WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
		CASE
    WHEN m.username IS NOT NULL AND LEN(LTRIM(RTRIM(m.username))) > 0 THEN
        m.username
    WHEN TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch)) THEN
        sup.username_initial +
        LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '') 
        + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4))

    ELSE
        LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '') 
        + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4))
END AS username,
CASE 
    WHEN NOT EXISTS (
        SELECT 1 
        FROM school_branches sb 
        WHERE sb.branch = m.branch
    ) THEN 
UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
'@123'
		ELSE M.PASSWORD
END AS password,
       CASE 
	   WHEN NOT EXISTS (
	   SELECT 1 FROM SCHOOL_BRANCHES
	   WHERE 
	   SB.BRANCH = M.BRANCH ) THEN 
	   LOWER(replace(ISNULL(m.[First Name], m.[Last Name]), ' ', '') + '_' + RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)) + '@gmail.com'
	   else m.username 
	   end as email , 
        C.COURSES AS course1,
        g.groups AS [group1],
        'student' AS role1,
		CASE 
		WHEN NOT EXISTS(
		SELECT 1 FROM SCHOOL_BRANCHES
		WHERE SB.BRANCH = M.BRANCH)
		THEN '' 
		ELSE 'oauth2'
		end 
         AS auth , 
		m.[Class/Grade]  , 
		m.Section	 , 
		m.Branch	 , 
		m.[Admission Number / Unique Identification Number]  , 
		m.remarks 
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
	left join superhouse as sup
	on trim(lower(sup.branch)) = trim(lower(m.branch))
    left JOIN groups AS g ON g.branch = m.branch 
                    AND g.section = m.section
                    AND  g.grade 
                         = (
                        SELECT GRADENAME FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = m.[Class/Grade]
                        )
                    )
    left JOIN course AS c ON c.branch = m.branch
                    AND c.section  = (
                        SELECT GRADENAME 
                        FROM grade_names
                        WHERE gradeid = (
                            SELECT gradeid 
                            FROM grade_identify AS gi 
                            WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
                        )
                    )
) 
INSERT INTO newenrolls
SELECT * 
FROM cte_count AS cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );


  insert into testingtable 
  select * from newenrolls as n 
  where not exists ( select 1 from testingtable  as test 
  where test.firstname = n.firstname 
  and test.lastname = n.lastname 
  and test.username = n.username 
  and test.password = n.password 
  and test.email = n.email 
  and test.course1 = n.course1
  and test.group1 = n.group1 
  and test.role1 = n.role1
  and test.auth = n.auth )

  insert into csv_handle
  select firstname , lastname , username , password , email , 
  course1 , group1 , role1 , auth 
  from newenrolls


  select * from csv_handle


  create table csv_handle
  (firstname varchar (100) , 
  lastname varchar (100) , 
  username varchar (100) , 
  password varchar (100) , 
  email varchar (100) , 
  course1 varchar (100) , 
  group1 varchar (100) , 
  role1 varchar (100) , 
  auth varchar (100) )

  SELECT * FROM GROUPS 
  WHERE BRANCH = 'KRISHNANAGAR' 

  truncate table newenrolls

  select * from csv_handle
  select * from newenrolls
  select * from testingtable

  -- 1️⃣ First insert into newenrolls from the computed CTE

  select  *  from GROUPS
  
  SELECT * FROM COURSE
  WHERE BRANCH = 'NGS-(WB) -  Andal'
  update GROUPS 
  set branch = 'Andal'
  where branch = 'NGS-(WB) -  Andal'


  select * from course
from newenrolls

select * from newenrolls
select * from csv_handle

delete from newenrolls
where left(firstname , 3 )   != 'pra'

delete from newenrolls
where firstname in(select top 250 firstname from newenrolls)

----working here with out the branchname table added



gradeid , replace(gradeallnames , ' ' ,'') from grade_identify

WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
        CASE
            WHEN m.username IS NOT NULL AND LEN(LTRIM(RTRIM(m.username))) > 0 THEN m.username
            WHEN TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch)) THEN
                sup.username_initial +
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
            ELSE
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
        END AS username,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
                LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
                '@123'
            ELSE 
                m.password
        END AS password,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4) + '@gmail.com'
            ELSE 
                m.username
        END AS email,
        c.courses AS course1,
        g.groups AS group1,
        'student' AS role1,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN ''
            ELSE 'oauth2'
        END AS auth,
        m.[Class/Grade],
        m.Section,
        m.Branch,
        m.[Admission Number / Unique Identification Number],
        m.remarks , 
        m.branch as branchname
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
    LEFT JOIN superhouse AS sup ON TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch))
    LEFT JOIN groups AS g 
        ON g.branch = m.branch 
        AND g.section = m.section
        AND g.grade = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM grade_identify AS gi 
                WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
            )
        )
    LEFT JOIN course AS c 
        ON c.branch = m.branch
        AND c.section = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM grade_identify AS gi 
                WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
            )
        )
) 

select * from ctE_count
-- Insert into newenrolls
INSERT INTO newenrolls (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks , branchname
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks , branchname
FROM cte_count as cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );

-- 2️⃣ Insert from newenrolls into testingtable (excluding createdat)
INSERT INTO testingtable (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
FROM newenrolls AS n 
WHERE NOT EXISTS (
    SELECT 1 
    FROM testingtable AS test 
    WHERE test.firstname = n.firstname 
      AND test.lastname = n.lastname 
      AND test.username = n.username 
      AND test.password = n.password 
      AND test.email = n.email 
      AND test.course1 = n.course1
      AND test.group1 = n.group1 
      AND test.role1 = n.role1
      AND test.auth = n.auth
) insert into csv_handle 
select 
        firstname , lastname , username , password , 
        email , course1 , group1 , role1 , auth 
     from newenrolls 



     select * from csv_handle

    truncate table csv_handle

     select * from newenrolls




     delete from newenrolls
     where left(course1 , 3 ) = 'ngs'


     update newenrolls 
     set branchname = 'Allen Kids Rooma'
     where firstname = 'alina'

     alter table newenrolls
     add  branchname varchar(150);

ALTER TABLE csv_handle
DROP COLUMN branchname;

select * from groups
where right(branch , 5 ) = 'lines'

----code testing after creating branchname table from auto fetch the branch under the school sheets

WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
        CASE
            WHEN m.username IS NOT NULL AND LEN(LTRIM(RTRIM(m.username))) > 0 THEN m.username
            WHEN TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch)) THEN
                sup.username_initial +
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
            ELSE
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
        END AS username,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
                LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
                '@123'
            ELSE 
                m.password
        END AS password,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4) + '@gmail.com'
            ELSE 
                m.username
        END AS email,
        c.courses AS course1,
        g.groups AS group1,
        'student' AS role1,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN ''
            ELSE 'oauth2'
        END AS auth,
        m.[Class/Grade],
        m.Section,
        m.Branch,
        m.[Admission Number / Unique Identification Number],
        m.remarks ,
        bn.schoolbranch
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
    LEFT JOIN superhouse AS sup ON TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch))
    left join branchname as bn
    on bn.credentialsbranch = m.branch 
    LEFT JOIN groups AS g 
        ON g.branch = m.branch 
        AND g.section = m.section
        AND g.grade = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM grade_identify AS gi 
                WHERE gi.gradeallnames = m.[Class/Grade]
            )
        )
    LEFT JOIN course AS c 
        ON c.branch = m.branch
        AND c.section = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM grade_identify AS gi 
                WHERE gi.gradeallnames = LTRIM(RTRIM(m.[Class/Grade]))
            )
        )
) 
select * from cte_count
where firstname ='dhruv'  and lastname ='jain'


-- Insert into newenrolls
INSERT INTO newenrolls (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
FROM cte_count as cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );

-- 2️⃣ Insert from newenrolls into testingtable (excluding createdat)
INSERT INTO testingtable (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
FROM newenrolls AS n 
WHERE NOT EXISTS (
    SELECT 1 
    FROM testingtable AS test 
    WHERE test.firstname = n.firstname 
      AND test.lastname = n.lastname 
      AND test.username = n.username 
      AND test.password = n.password 
      AND test.email = n.email 
      AND test.course1 = n.course1
      AND test.group1 = n.group1 
      AND test.role1 = n.role1
      AND test.auth = n.auth
) insert into csv_handle 
select 
        firstname , lastname , username , password , 
        email , course1 , group1 , role1 , auth 
     from newenrolls 

     select * from newenrolls
     where firstname = 'vani' and lastname = 'aps'
     select * from csv_handle


     select * from master_credentials_file_l2
     where [first name] = 'vani' and [last name] = 'aps'


     select * from master_credentials_file_l2

     select * from master_credentials_file_l2
     where [first name] = 'dhruv'
     and [last name] = 'jain'


     select * from course
     where right(branch , 5)= 'Lines'

     select * from branchname



          select * from COURSE

    select * from grade_identify
    select * from grade_names

    select * from superhouse



    update 
    SELECT * FROM GROUPS
    WHERE RIGHT(BRANCH , 6) = 'JHANSI'


        SELECT * FROM course
    WHERE RIGHT(BRANCH , 6) = 'JHANSI'

    update course
    set branch = 'Allenhouse Public School Jhansi'
    where branch = 'Allen Kids Jhansi'

    DELETE FROM GROUPS
    WHERE BRANCH = 'Allen Kids Jhansi' AND GRADE = 'Grade 2'

    update groups 
    set 


    SELECT * FROM BRANCHNAME


    ----here the try for the m.brnach = branchnames table to 


    SELECT * FROM GRADE_IDENTIFY 

WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
        CASE
            WHEN m.username IS NOT NULL AND LEN(LTRIM(RTRIM(m.username))) > 0 THEN m.username
            WHEN TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch)) THEN
                sup.username_initial +
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
            ELSE
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
        END AS username,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
                LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
                '@123'
            ELSE 
                m.password
        END AS password,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4) + '@gmail.com'
            ELSE 
                m.username
        END AS email,
        c.courses AS course1,
        g.groups AS group1,
        'student' AS role1,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN ''
            ELSE 'oauth2'
        END AS auth,
        m.[Class/Grade],
        m.Section,
        m.Branch,
        m.[Admission Number / Unique Identification Number],
        m.remarks ,
        bn.schoolbranch
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
    LEFT JOIN superhouse AS sup ON TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch))
    left join branchname as bn
    on bn.credentialsbranch = m.branch 

LEFT JOIN grade_identify gi
    ON gi.gradeallnames = ltrim(rtrim(m.[Class/Grade]))

LEFT JOIN grade_names gn
    ON gn.gradeid = gi.gradeid

LEFT JOIN groups g
    ON g.branch = bn.schoolbranch
    AND g.section = m.section
    AND g.grade = gn.GRADENAME


LEFT JOIN course c
    ON c.branch = bn.schoolbranch
    AND c.section = gn.GRADENAME
   )
   select * from cte_count
   where firstname = 'rewant' and lastname = 'mishra' 


-- Insert into newenrolls
INSERT INTO newenrolls (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
FROM cte_count as cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );

-- 2️⃣ Insert from newenrolls into testingtable (excluding createdat)
INSERT INTO testingtable (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
FROM newenrolls AS n 
WHERE NOT EXISTS (
    SELECT 1 
    FROM testingtable AS test 
    WHERE test.firstname = n.firstname 
      AND test.lastname = n.lastname 
      AND test.username = n.username 
      AND test.password = n.password 
      AND test.email = n.email 
      AND test.course1 = n.course1
      AND test.group1 = n.group1 
      AND test.role1 = n.role1
      AND test.auth = n.auth
) insert into csv_handle 
select 
        firstname , lastname , username , password , 
        email , course1 , group1 , role1 , auth 
     from newenrolls select * from branchname


     update branchname
     set schoolbranch = 'Gaur City2'
     where schoolbranch = 'Gaur city 2'

     select * from 


     select * from groups
     select  * from course


     ----trying the cod with #gradeidentify_copy temp table

     ---make  a new table with gradae_identify with space 


-- This is a perfectly working script to generate csv and to put learners details to the credentials sheet 


     select * 
into #gradeidentify_copy 
from grade_identify 


WITH DuplicatesCTE AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY gradeid, REPLACE(gradeallnames, ' ', '')
               ORDER BY (SELECT 0)
           ) AS rn
    FROM #gradeidentify_copy
)
DELETE FROM DuplicatesCTE
WHERE rn > 1;

     
WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
        CASE
            WHEN m.username IS NOT NULL AND LEN(LTRIM(RTRIM(m.username))) > 0 THEN m.username
            WHEN TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch)) THEN
                sup.username_initial +
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
            ELSE
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
        END AS username,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
                LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
                '@123'
            ELSE 
                m.password
        END AS password,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4) + '@gmail.com'
            ELSE 
                m.username
        END AS email,
        c.courses AS course1,
        g.groups AS group1,
        'student' AS role1,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN ''
            ELSE 'oauth2'
        END AS auth,
        m.[Class/Grade],
        m.Section,
        m.Branch,
        m.[Admission Number / Unique Identification Number],
        m.remarks , 
        m.branch as branchname
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
    LEFT JOIN superhouse AS sup ON TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch))
    LEFT JOIN groups AS g 
        ON g.branch = m.branch 
        AND g.section = m.section
        AND g.grade = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM #gradeidentify_copy AS gi 
                WHERE replace(gi.gradeallnames, ' ' , '')  = replace(LTRIM(RTRIM(m.[Class/Grade])) , ' ', '') 
            )
        )
    LEFT JOIN course AS c 
        ON c.branch = m.branch
        AND c.section = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM #gradeidentify_copy AS gi 
                WHERE replace(gi.gradeallnames , ' ' , '') = replace(LTRIM(RTRIM(m.[Class/Grade])) , ' ', '') 
            )
        )
) 
-- Insert into newenrolls
INSERT INTO newenrolls (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks , branchname
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks , branchname
FROM cte_count as cc
WHERE username IS NOT NULL 
  AND course1 IS NOT NULL 
  AND group1 IS NOT NULL 
  AND role1 IS NOT NULL 
  AND NOT EXISTS (
      SELECT 1 
      FROM testingtable AS tt 
      WHERE tt.username = cc.username 
        AND tt.firstname = cc.firstname
  );

-- 2️⃣ Insert from newenrolls into testingtable (excluding createdat)
INSERT INTO testingtable (
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
)
SELECT 
    firstname, lastname, username, password, email, 
    course1, group1, role1, auth, 
    [Class/Grade], Section, Branch, 
    [Admission Number / Unique Identification Number], remarks
FROM newenrolls AS n 
WHERE NOT EXISTS (
    SELECT 1 
    FROM testingtable AS test 
    WHERE test.firstname = n.firstname 
      AND test.lastname = n.lastname 
      AND test.username = n.username 
      AND test.password = n.password 
      AND test.email = n.email 
      AND test.course1 = n.course1
      AND test.group1 = n.group1 
      AND test.role1 = n.role1
      AND test.auth = n.auth
) insert into csv_handle 
select 
        firstname , lastname , username , password , 
        email , course1 , group1 , role1 , auth 
     from newenrolls 

 ---(There are some branches as well which are still hiding the branch column thats why in the query result we are 
 -- getting sections in the branch column add some values in the branch saction in those schools)

--- BGT branch name have no course and grade add to the course and grade 
--BTM , BGT , SH(DPS ALL BRANCHES ARE PENIDNG) , DPS-H (HALDVANI) , HORAMAVU , JANAKPURI , 
-- MPS KALWAR ROAD  GROUPS , KANCHIPURAM ,  KOTLA , MAHASAMUND , MAHESHTALA , MAIN CAMPUS , 
--  Mettupalayam  , MPS (Mgps sanskriti ) , MPS ( MPSPN) , MTP , NAMBIYUR ,  ramnagar , 
--  Rps , RWS , SAIBABA COLONY , School of Excellence , Shoinghur , SILIGURI (Some learner are missing course and grades )
-- SOE , SSVM KIDS CASA- CAMPUS 2 ,SSVM World school , TIRUPPUR , TVS ,Uppal , Warangal , WHITEFIELD , World School , 

     SELECT * FROM MASTER_cREDENTIALS_FILE_L2
     WHERE BRANCH = 'PARK CIRCUS'

     SELECT * FORM GROUPS

WITH cte_count AS (
    SELECT 
        m.[First Name] AS firstname,
        m.[Last Name] AS lastname,
        CASE
            WHEN m.username IS NOT NULL AND LEN(LTRIM(RTRIM(m.username))) > 0 THEN m.username
            WHEN TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch)) THEN
                sup.username_initial +
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
            ELSE
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4)
        END AS username,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                UPPER(LEFT(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 1)) + 
                LOWER(SUBSTRING(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', ''), 2, LEN(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')))) + 
                '@123'
            ELSE 
                m.password
        END AS password,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN 
                LOWER(REPLACE(ISNULL(m.[First Name], m.[Last Name]), ' ', '')) + '_' +
                RIGHT('0000' + ISNULL(m.[Admission Number / Unique Identification Number], ''), 4) + '@gmail.com'
            ELSE 
                m.username
        END AS email,
        c.courses AS course1,
        g.groups AS group1,
        'student' AS role1,
        CASE 
            WHEN NOT EXISTS (
                SELECT 1 FROM school_branches sb WHERE sb.branch = m.branch
            ) THEN ''
            ELSE 'oauth2'
        END AS auth,
        m.[Class/Grade],
        m.Section,
        m.Branch,
        m.[Admission Number / Unique Identification Number],
        m.remarks , 
        m.branch as branchname
    FROM master_credentials_file_l2 AS m
    LEFT JOIN school_branches AS sb ON m.branch = sb.branch
    LEFT JOIN superhouse AS sup ON TRIM(LOWER(sup.branch)) = TRIM(LOWER(m.branch))
    LEFT JOIN groups AS g 
        ON g.branch = m.branch 
        AND g.section = m.section
        AND g.grade = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM #gradeidentify_copy AS gi 
                WHERE replace(gi.gradeallnames, ' ' , '')  = replace(LTRIM(RTRIM(m.[Class/Grade])) , ' ', '') 
            )
        )
    LEFT JOIN course AS c 
        ON c.branch = m.branch
        AND c.section = (
            SELECT GRADENAME 
            FROM grade_names 
            WHERE gradeid = (
                SELECT gradeid 
                FROM #gradeidentify_copy AS gi 
                WHERE replace(gi.gradeallnames , ' ' , '') = replace(LTRIM(RTRIM(m.[Class/Grade])) , ' ', '') 
            )
        )
) select * from cte_Count 
WHERE BRANCH = 'dps-h'

SELECT * FROM MASTER_CREDENTIALS_FILE_L
WHERE BRANCH = 'SEC 70 GURUGRAM'

select 
