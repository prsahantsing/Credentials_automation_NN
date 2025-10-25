
---- This file is only for learners credentials automation 


---creating the table to hold the details of learners in server


---creating table master_credentials_file_l (for all learners details) 

Create table master_credentials_file_l
( [First Name] varchar (250) , 
[Last Name] varchar (250) , 
Username varchar (250) , 
Password varchar (250) , 
[Class/Grade] varchar (250) , 
Section varchar (250) , 
Branch varchar (250) ,  
[Admission Number / Unique Identification Number ] varchar (250) ,  
Remarks varchar (250) )

Create table master_credentials_file_l2
( [First Name] varchar (250) , 
[Last Name] varchar (250) , 
Username varchar (250) , 
Password varchar (250) , 
[Class/Grade] varchar (250) , 
Section varchar (250) , 
Branch varchar (250) ,  
[Admission Number / Unique Identification Number ] varchar (250) ,  
Remarks varchar (250) )



create table school_branches
( schoolname varchar(150) , branch varchar(200) ) 


create table superhouse
( branch varchar(150) , username_initial varchar(150))


drop table newenrolls
drop table testingtable




    create table testingtable 
    (firstname varchar(100) , 
    lastname varchar(100) , 
    username  varchar(100) , 
    password  varchar(100) ,  
    email varchar (100) ,
    course1  varchar(100) , 
    group1  varchar(100) , 
    role1  varchar(100) , 
    auth varchar (100), 
	[Class/Grade] varchar (100) , 
Section	varchar (100) , 
Branch	varchar (100) , 
[Admission Number / Unique Identification Number] varchar (100),
remarks varchar (250) , 
Createdat datetime default getdate() 
) 



create table branchname
(schoolbranch varchar (150) 
, credentialsbranch varchar (150))


select * from newenrolls
select * from testingtable



insert into Branchname
values
('Allen Kids Bareilly','AK Bareilly'),
('Allen Kids Kakadeo','AK Kakadeo'),
('Allen Kids Mukherjee Vihar','AK Mukherjee'),
('Allen Kids Rooma','AK Rooma'),
('Allen Kids Swaroop Nagar','AK Swaroop Nagar'),
('Allen Kids Vrindavan/Lucknow','AK Vrindavan'),
('Allenhouse Public School Agra','AH Agra'),
('Allenhouse Public School Ghaziabad','AH Ghaziabad'),
('Allenhouse Public School Jhansi','AK Jhansi'),
('Allenhouse Public School Khalasi Lines','AH Khalasi Lines'),
('Allenhouse Public School Panki','AH PANKI')


SELECT  * FROM BRANCHNAME
WHERE SCHOOLBRANCH  LIKE '%,%'

UPDATE branchname
SET SCHOOLBRANCH = REPLACE(SCHOOLBRANCH , ',','')
WHERE SCHOOLBRANCH LIKE '%,%'



INSERT INTO BRANCHNAME
VALUES
('Faridabad Sec 89 ','Faridabad Sec 89 '),
('Gaur City','Gaur City'),
('Gaur City 2','Gaur City2'),
('Gurugram Sec 15','Gurugram Sec 15'),
('Gurugram Sec 48','Gurugram Sec 48'),
('Gurugram Sec 54','Gurugram Sec 54'),
('Sector 70, Gurugram','Sec 70 Gurugram'),
('Kalka Ji','Kalka ji'),
('Kismatpur, Hyderabad','Kismatpur Hyderabad'),
('Madhavnagar Gwalior','Madhavnagar Gwalior'),
('Malviyanagar Delhi','Malviyanagar Delhi'),
('Nehru Nagar Ghaziabad','Nehru Nagar Ghaziabad'),
('Nirala Estate','Nirala Estate'),
('Sector 95 A, Gurugram','Sector 95 A Gurugram'),
('Noida Sec 116','Noida Sec 116'),
('Noida Sec 61','Noida Sec 61'),
('Rajnagar Extension','Rajnagar Extension'),
('Rajnagar Ghaziabad','Rajnagar Ghaziabad'),
('Vasundhra Sec 11','Vasundhra Sec 11'),
('Manikonda (HYD)','Manikonda (HYD)'),
('Sector 89 B, Gurugram','Sector 89 B Gurugram'),
('DPS Amrapali','DPS Amrapali'),
('DPS Bareilly','DPS Bareilly'),
('DPS Eldeco','DPS Eldeco'),
('DPS Gomti Nagar','DPS Gomti Nagar'),
('DPS Indira Nagar','DPS Indira Nagar'),
('DPS Jankipuram','DPS Jankipuram'),
('DPS Kalyanpur','DPS Kalyanpur'),
('DPS Saharanpur','DPS Sharanpur'),
('DPS Unnao','DPS UNNAO'),
('NGS-(WB) -  Andal','Andal'),
('NGS-(WB) -  Andul','Andul '),
('NGS-(WB) -  Asansol','Asansol'),
('NGS-(WB) -  Bally','Bally'),
('NGS-(WB) -  Barasat','Barasat'),
('NGS-(WB) -  Burdwan','Burdwan'),
('NGS-(WB) -  Contai','Contai'),
('NGS-(WB) -  Fulbari','Fulbari'),
('NGS-(WB) -  Haldia','Haldia'),
('NGS-(WB) -  Howrah','Howrah'),
('NGS-(WB) -  Kalimpong 1','Kalimpong'),
('NGS-(WB) -  Kalyani town ','Kalyani town'),
('NGS-(WB) -  Krishnanagar','Krishnanagar'),
('NGS-(WB) -  Mahestala ','Mahestala'),
('NGS-(WB) -  Newtown ','Newtown'),
('NGS-(WB) -  Park Circus','Park Circus '),
('NGS-(WB) -  Raghunathpur','Raghunathpur'),
('NGS-(WB) -  Raiganj','Raiganj'),
('NGS-(WB) -  Rishra','Rishra'),
('NGS-(WB) -  Siliguri','Siliguri '),
('NGS-(WB) -  Sodepur (kalyani Express)','Sodepur'),
('NGS-(WB) -  Sonarpur','Sonarpur'),
('NGS-(WB) - Berhampore','Berhampore '),
('NGS-(WB) - Basirhat','BASIRHAT'),
('NGS-(WB) -Darjeeling','Darjeeling '),
('NGS-(WB) - Durgapur','Durgapur'),
('NGS-(WB) - Kalimpong 2','KALIMPONG 2'),
('NGS-(WB) - Ranaghat','RANAGHAT')
 
 ---this was the old table with limited columns i drop it and make a new version for the same to better execution


     /*create table NEWENROLLS 
    (firstname varchar(100) , 
    lastname varchar(100) , 
    username  varchar(100) , 
    password  varchar(100) ,  
    email varchar (100) ,
    course1  varchar(100) , 
    group1  varchar(100) , 
    role1  varchar(100) , 
    auth varchar (100)) */

 
 create table newenrolls
     (firstname varchar(100) , 
    lastname varchar(100) , 
    username  varchar(100) , 
    password  varchar(100) ,  
    email varchar (100) ,
    course1  varchar(100) , 
    group1  varchar(100) , 
    role1  varchar(100) , 
    auth varchar (100), 
	[Class/Grade] varchar (100) , 
Section	varchar (100) , 
Branch	varchar (100) , 
[Admission Number / Unique Identification Number] varchar (100) , 
remarks varchar (250) 
) 


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


insert into superhouse
values
('Allen Kids Bareilly','akbly.'),
('Allen Kids Kakadeo','akk.'),
('Allen Kids Mukherjee Vihar','apsmkv.'),
('Allen Kids Rooma','apsrm.'),
('Allen Kids Swaroop Nagar','aksn.'),
('Allen Kids Vrindavan/Lucknow','apsvv.'),
('Allenhouse Public School Agra','apsa.'),
('Allenhouse Public School Ghaziabad','apszb.'),
('Allenhouse Public School Jhansi','apsjh.'),
('Allenhouse Public School Khalasi Lines','ahk.'),
('Allenhouse Public School Panki','apspn.'),
('DPS Amrapali','dpsap.'),
('DPS Bareilly','dpsbly.'),
('DPS Eldeco','dpseld.'),
('DPS Gomti Nagar','dpsgn.'),
('DPS Indira Nagar','dpsin.'),
('DPS Jankipuram','dpsjkp.'),
('DPS Kalyanpur','dpskp.'),
('DPS Saharanpur','dpssre.'),
('DPS Unnao','dpsun')

insert into school_branches
values 
('Little_leaders','Faridabad Sec 89'),
('Little_leaders','Gaur City'),
('Little_leaders','Gaur City 2'),
('Little_leaders','Gurugram Sec 15'),
('Little_leaders','Gurugram Sec 48'),
('Little_leaders','Gurugram Sec 54'),
('Little_leaders','Sector 70 Gurugram'),
('Little_leaders','Kalka Ji'),
('Little_leaders','Kismatpur Hyderabad'),
('Little_leaders','Madhavnagar Gwalior'),
('Little_leaders','Malviyanagar Delhi'),
('Little_leaders','Nehru Nagar Ghaziabad'),
('Little_leaders','Nirala Estate'),
('Little_leaders','Sector 95 A Gurugram'),
('Little_leaders','Indrapuram'),
('Little_leaders','Noida Sec 116'),
('Little_leaders','Noida Sec 61'),
('Little_leaders','Rajnagar Extension'),
('Little_leaders','Rajnagar Ghaziabad'),
('Little_leaders','Vasundhra Sec 11'),
('Little_leaders','Manikonda (HYD)'),
('Little_leaders','Sector 89 B Gurugram')


insert into groups
values
( 'MANESAR','A','NNLP 2','BBPS-LC-BV-1-A-25-26'),
( 'MANESAR','B','NNLP 2','BBPS-LC-BV-1-B-25-26'),
( 'MANESAR','A','NNLP 3','BBPS-LC-BV-2-A-25-26'),
( 'MANESAR','B','NNLP 3','BBPS-LC-BV-2-B-25-26'),
( 'MANESAR','C','NNLP 3','BBPS-LC-BV-2-C-25-26'),
( 'MANESAR','A','NNLP 4','BBPS-LC-BV-3-A-25-26'),
( 'MANESAR','B','NNLP 4','BBPS-LC-BV-3-B-25-26'),
( 'MANESAR','C','NNLP 4','BBPS-LC-BV-3-C-25-26'),
( 'MANESAR','D','NNLP 4','BBPS-LC-BV-3-D-25-26'),
( 'Bhavan Vidyalaya','CORAL','NNLP 2','BV-LC-NNLP 2-CORAL-25-26'),
( 'Bhavan Vidyalaya','GARNET','NNLP 2','BV-LC-NNLP 2-GARNET-25-26'),
( 'Bhavan Vidyalaya','PEARL','NNLP 2','BV-LC-NNLP 2-PEARL-25-26'),
( 'Bhavan Vidyalaya','RUBY','NNLP 2','BV-LC-NNLP 2-RUBY-25-26'),
( 'Bhavan Vidyalaya','Coral','NNLP 3','BV-LC-LKG-Coral-25-26'),
( 'Bhavan Vidyalaya','Garnet','NNLP 3','BV-LC-LKG-Garnet-25-26'),
( 'Bhavan Vidyalaya','Pearl','NNLP 3','BV-LC-LKG-Pearl-25-26'),
( 'Bhavan Vidyalaya','Ruby','NNLP 3','BV-LC-LKG-Ruby-25-26'),
( 'Bhavan Vidyalaya','Sapphire','NNLP 3','BV-LC-NNLP 3-Sapphire-25-26'),
( 'Bhavan Vidyalaya','Coral','NNLP 4','BV-LC-UKG-Coral-25-26'),
( 'Bhavan Vidyalaya','Garnet','NNLP 4','BV-LC-UKG-Garnet-25-26'),
( 'Bhavan Vidyalaya','Pearl','NNLP 4','BV-LC-UKG-Pearl-25-26'),
( 'Bhavan Vidyalaya','Ruby','NNLP 4','BV-LC-UKG-Ruby-25-26'),
( 'Bhavan Vidyalaya','Sapphire','NNLP 4','BV-LC-UKG-Sapphire-25-26'),
( 'Bhavan Vidyalaya','SANGAM','Grade 1','BV-LC-G1-SANGAM-25-26'),
( 'Bhavan Vidyalaya','SATYAM','Grade 1','BV-LC-G1-SATYAM-25-26'),
( 'Bhavan Vidyalaya','SHIVAM','Grade 1','BV-LC-G1-SHIVAM-25-26'),
( 'Bhavan Vidyalaya','SHUBHAM','Grade 1','BV-LC-G1-SHUBHAM-25-26'),
( 'Bhavan Vidyalaya','SUNDARAM','Grade 1','BV-LC-G1-SUNDARAM-25-26'),
( 'Bhavan Vidyalaya','SANGAM','Grade 2','BV-LC-G2-SANGAM-25-26'),
( 'Bhavan Vidyalaya','SATYAM','Grade 2','BV-LC-G2-SATYAM-25-26'),
( 'Bhavan Vidyalaya','SHIVAM','Grade 2','BV-LC-G2-SHIVAM-25-26'),
( 'Bhavan Vidyalaya','SHUBHAM','Grade 2','BV-LC-G2-SHUBHAM-25-26'),
( 'Bhavan Vidyalaya','SUNDARAM','Grade 2','BV-LC-G2-SUNDARAM-25-26'),
( 'Attapur','ALPHA','NNLP 2','BPS-Attapur-LC-NNLP 2-ALPHA-25-26'),
( 'Attapur','PIONEER','NNLP 2','BPS-Gurramguda-LC-NNLP 2-PIONEER-25-26'),
( 'Attapur','VISIONARY','NNLP 2','BPS-Gurramguda-LC-NNLP 2-VISIONARY-25-26'),
( 'Attapur','ALPHA','NNLP 3','BPS-Attapur-LC-NNLP 3-ALPHA-25-26'),
( 'Attapur','PIONEER','NNLP 3','BPS-Gurramguda-LC-NNLP 3-PIONEER-25-26'),
( 'Attapur','VISIONARY','NNLP 3','BPS-Gurramguda-LC-NNLP 3-VISIONARY-25-26'),
( 'Attapur','ALPHA','NNLP 4','BPS-Attapur-LC-NNLP 4-ALPHA-25-26'),
( 'Attapur','BETA','NNLP 4','BPS-Attapur-LC-NNLP 4-BETA-25-26'),
( 'Attapur','PIONEER','NNLP 4','BPS-Gurramguda-LC-NNLP 4-PIONEER-25-26'),
( 'Attapur','VISIONARY','NNLP 4','BPS-Gurramguda-LC-NNLP 4-VISIONARY-25-26'),
( 'Kanchipur','A','NNLP 2','BHIS-KP-LC-Pre KG-A-25-26'),
( 'Kanchipur','B','NNLP 3','BHIS-KP-LC-Jr KG-B-25-26'),
( 'Kanchipur','A','NNLP 3','BHIS-KP-LC-Jr KG-A-25-26'),
( 'Kanchipur','A','NNLP 4','BHIS-KP-LC-Sr KG-A-25-26'),
( 'Kanchipur','B','NNLP 4','BHIS-KP-LC-Sr KG-B-25-26'),
( 'Kanchipur','C','NNLP 4','BHIS-KP-LC-Sr KG-C-25-26'),
( 'Kanchipur','D','NNLP 4','BHIS-KP-LC-Sr KG-D-25-26'),
( 'Tiruttani','A','NNLP 2','BHIS-TRT-LC-Pre KG-A-25-26'),
( 'Tiruttani','A','NNLP 3','BHIS-TRT-LC-Jr KG-A-25-26'),
( 'Tiruttani','A','NNLP 4','BHIS-TRT-LC-Sr KG-A-25-26'),
( 'Sec-29','Jerry','NNLP 2','HCPS Sec-29-Nursery-Jerry-25-26'),
( 'Sec-29','Pikachu','NNLP 2','HCPS Sec-29-Nursery-Pikachu-25-26'),
( 'Sec-29','Tom','NNLP 2','HCPS Sec-29-Nursery-Tom-25-26'),
( 'Sec-29','Blue','NNLP 3','HCPS Sec-29-LKG-Blue-25-26'),
( 'Sec-29','Green','NNLP 3','HCPS Sec-29-LKG-Green-25-26'),
( 'Sec-29','Jerry','NNLP 3','HCPS Sec-29-LKG-Jerry-25-26'),
( 'Sec-29','Pink','NNLP 3','HCPS Sec-29-LKG-Pink-25-26'),
( 'Sec-29','Tom','NNLP 3','HCPS Sec-29-LKG-Tom-25-26'),
( 'Sec-29','Blue','NNLP 4','HCPS Sec-29-UKG-Blue-25-26'),
( 'Sec-29','Donald','NNLP 4','HCPS Sec-29-UKG-Donald-25-26'),
( 'Sec-29','Mickey','NNLP 4','HCPS Sec-29-UKG-Mickey-25-26'),
( 'Sec-29','Noddy','NNLP 4','HCPS Sec-29-UKG-Noddy-25-26'),
( 'Sec-29','Pink','NNLP 4','HCPS Sec-29-UKG-Pink-25-26'),
( 'Sec-29','Pluto','NNLP 4','HCPS Sec-29-UKG-Pluto-25-26'),
( 'Sec-29','Tweety','NNLP 4','HCPS Sec-29-UKG-Tweety-25-26'),
( 'Sec-75','Nemo','NNLP 2','HCPS Sec-75-Nursery-Nemo-25-26'),
( 'Sec-75','Oswald','NNLP 2','HCPS Sec-75-Nursery-Oswald-25-26'),
( 'Sec-75','Otter','NNLP 2','HCPS Sec-75-Nursery-Otter-25-26'),
( 'Sec-75','Cuckoo','NNLP 3','HCPS Sec-75-LKG-Cuckoo-25-26'),
( 'Sec-75','Dove','NNLP 3','HCPS Sec-75-LKG-Dove-25-26'),
( 'Sec-75','Flamingo','NNLP 3','HCPS Sec-75-LKG-Flamingo-25-26'),
( 'Sec-75','Swan','NNLP 3','HCPS Sec-75-LKG-Swan-25-26'),
( 'Sec-75','Daisy','NNLP 4','HCPS Sec-75-UKG-Daisy-25-26'),
( 'Sec-75','Lavender','NNLP 4','HCPS Sec-75-UKG-Lavender-25-26'),
( 'Sec-75','Lilac','NNLP 4','HCPS Sec-75-UKG-Lilac-25-26'),
( 'Sec-75','Tulip','NNLP 4','HCPS Sec-75-UKG-Tulip-25-26'),
( 'Lotus Valley Intt. School','Coral','NNLP 2','LVIS-LC-NNLP 2-Coral-25-26'),
( 'Lotus Valley Intt. School','Indigo','NNLP 2','LVIS-LC-NNLP 2-Indigo-25-26'),
( 'Lotus Valley Intt. School','Lavender','NNLP 2','LVIS-LC-NNLP 2-Lavender-25-26'),
( 'Lotus Valley Intt. School','Scarlet','NNLP 2','LVIS-LC-NNLP 2-Scarlet-25-26'),
( 'Lotus Valley Intt. School','Tangerine','NNLP 2','LVIS-LC-NNLP 2-Tangerine-25-26'),
( 'Lotus Valley Intt. School','Turquoise','NNLP 2','LVIS-LC-NNLP 2-Turquoise-25-26'),
( 'Lotus Valley Intt. School','Amethyst','NNLP 3','LVIS-LC-NNLP 3-Amethyst-25-26'),
( 'Lotus Valley Intt. School','Garnet','NNLP 3','LVIS-LC-NNLP 3-Garnet-25-26'),
( 'Lotus Valley Intt. School','Jade','NNLP 3','LVIS-LC-NNLP 3-Jade-25-26'),
( 'Lotus Valley Intt. School','Pearl','NNLP 3','LVIS-LC-NNLP 3-Pearl-25-26'),
( 'Lotus Valley Intt. School','Peridot','NNLP 3','LVIS-LC-NNLP 3-Peridot-25-26'),
( 'Lotus Valley Intt. School','Ruby','NNLP 3','LVIS-LC-NNLP 3-Ruby-25-26'),
( 'Lotus Valley Intt. School','Sapphire','NNLP 3','LVIS-LC-NNLP 3-Sapphire-25-26'),
( 'Lotus Valley Intt. School','Topaz','NNLP 3','LVIS-LC-NNLP 3-Topaz-25-26'),
( 'Lotus Valley Intt. School','Daffodil','NNLP 4','LVIS-LC-NNLP 4-Daffodil-25-26'),
( 'Lotus Valley Intt. School','Hibiscus','NNLP 4','LVIS-LC-NNLP 4-Hibiscus-25-26'),
( 'Lotus Valley Intt. School','Jade','NNLP 4','LVIS-LC-NNLP 4-Jade-25-26'),
( 'Lotus Valley Intt. School','Jasmine','NNLP 4','LVIS-LC-NNLP 4-Jasmine-25-26'),
( 'Lotus Valley Intt. School','Marigold','NNLP 4','LVIS-LC-NNLP 4-Marigold-25-26'),
( 'Lotus Valley Intt. School','Orchid','NNLP 4','LVIS-LC-NNLP 4-Orchid-25-26'),
( 'Lotus Valley Intt. School','Pearl','NNLP 4','LVIS-LC-NNLP 4-Pearl-25-26'),
( 'Lotus Valley Intt. School','Rose','NNLP 4','LVIS-LC-NNLP 4-Rose-25-26'),
( 'Lotus Valley Intt. School','Sunflower','NNLP 4','LVIS-LC-NNLP 4-Sunflower-25-26'),
( 'Lotus Valley Intt. School','Tulip','NNLP 4','LVIS-LC-NNLP 4-Tulip-25-26'),
( 'Love Dale Central School (LDCS)','A','NNLP 2','LDCS-LC-NNLP 2-A-25-26'),
( 'Love Dale Central School (LDCS)','Aura','NNLP 3','LDCS-LC-NNLP 3-Aura-25-26'),
( 'Love Dale Central School (LDCS)','Aura','NNLP 4','LDCS-LC-NNLP 4-Aura-25-26'),
( 'Mahara Foundational Years','A','NNLP 1','MFY-LC-NNLP 1-A-25-26'),
( 'Mahara Foundational Years','A','NNLP 2','MFY-LC-NNLP 2-A-25-26'),
( 'Mahara Foundational Years','A','NNLP 3','MFY-LC-NNLP 3-A-25-26'),
( 'Mahara Foundational Years','A','NNLP 4','MFY-LC-NNLP 4-A-25-26')


insert into course
values
('BBPS-LC-NNLP 2-25-26' , 'MANESAR' , 'NNLP 2' ),
('BBPS-LC-NNLP 2-25-26' , 'MANESAR' , 'NNLP 2' ),
('BBPS-LC-NNLP 3-25-26' , 'MANESAR' , 'NNLP 3' ),
('BBPS-LC-NNLP 3-25-26' , 'MANESAR' , 'NNLP 3' ),
('BBPS-LC-NNLP 3-25-26' , 'MANESAR' , 'NNLP 3' ),
('BBPS-LC-NNLP 4-25-26' , 'MANESAR' , 'NNLP 4' ),
('BBPS-LC-NNLP 4-25-26' , 'MANESAR' , 'NNLP 4' ),
('BBPS-LC-NNLP 4-25-26' , 'MANESAR' , 'NNLP 4' ),
('BBPS-LC-NNLP 4-25-26' , 'MANESAR' , 'NNLP 4' ),
('BV-LC-NNLP 2-25-26' , 'Bhavan Vidyalaya' , 'NNLP 2' ),
('BV-LC-NNLP 2-25-26' , 'Bhavan Vidyalaya' , 'NNLP 2' ),
('BV-LC-NNLP 2-25-26' , 'Bhavan Vidyalaya' , 'NNLP 2' ),
('BV-LC-NNLP 2-25-26' , 'Bhavan Vidyalaya' , 'NNLP 2' ),
('BV-LC-NNLP 3-25-26' , 'Bhavan Vidyalaya' , 'NNLP 3' ),
('BV-LC-NNLP 3-25-26' , 'Bhavan Vidyalaya' , 'NNLP 3' ),
('BV-LC-NNLP 3-25-26' , 'Bhavan Vidyalaya' , 'NNLP 3' ),
('BV-LC-NNLP 3-25-26' , 'Bhavan Vidyalaya' , 'NNLP 3' ),
('BV-LC-NNLP 3-25-26' , 'Bhavan Vidyalaya' , 'NNLP 3' ),
('BV-LC-NNLP 4-25-26' , 'Bhavan Vidyalaya' , 'NNLP 4' ),
('BV-LC-NNLP 4-25-26' , 'Bhavan Vidyalaya' , 'NNLP 4' ),
('BV-LC-NNLP 4-25-26' , 'Bhavan Vidyalaya' , 'NNLP 4' ),
('BV-LC-NNLP 4-25-26' , 'Bhavan Vidyalaya' , 'NNLP 4' ),
('BV-LC-NNLP 4-25-26' , 'Bhavan Vidyalaya' , 'NNLP 4' ),
('BV-LC-G1-25-26' , 'Bhavan Vidyalaya' , 'Grade 1' ),
('BV-LC-G1-25-26' , 'Bhavan Vidyalaya' , 'Grade 1' ),
('BV-LC-G1-25-26' , 'Bhavan Vidyalaya' , 'Grade 1' ),
('BV-LC-G1-25-26' , 'Bhavan Vidyalaya' , 'Grade 1' ),
('BV-LC-G1-25-26' , 'Bhavan Vidyalaya' , 'Grade 1' ),
('BV-LC-G2-25-26' , 'Bhavan Vidyalaya' , 'Grade 2' ),
('BV-LC-G2-25-26' , 'Bhavan Vidyalaya' , 'Grade 2' ),
('BV-LC-G2-25-26' , 'Bhavan Vidyalaya' , 'Grade 2' ),
('BV-LC-G2-25-26' , 'Bhavan Vidyalaya' , 'Grade 2' ),
('BV-LC-G2-25-26' , 'Bhavan Vidyalaya' , 'Grade 2' ),
('BPS-LC-NNLP 2-25-26' , 'Attapur' , 'NNLP 2' ),
('BPS-LC-NNLP 2-25-26' , 'Attapur' , 'NNLP 2' ),
('BPS-LC-NNLP 2-25-26' , 'Attapur' , 'NNLP 2' ),
('BPS-LC-NNLP 3-25-26' , 'Attapur' , 'NNLP 3' ),
('BPS-LC-NNLP 3-25-26' , 'Attapur' , 'NNLP 3' ),
('BPS-LC-NNLP 3-25-26' , 'Attapur' , 'NNLP 3' ),
('BPS-LC-NNLP 4-25-26' , 'Attapur' , 'NNLP 4' ),
('BPS-LC-NNLP 4-25-26' , 'Attapur' , 'NNLP 4' ),
('BPS-LC-NNLP 4-25-26' , 'Attapur' , 'NNLP 4' ),
('BPS-LC-NNLP 4-25-26' , 'Attapur' , 'NNLP 4' ),
('BPS-LC-NNLP 2-25-26' , 'Gurramguda' , 'NNLP 2' ),
('BPS-LC-NNLP 2-25-26' , 'Gurramguda' , 'NNLP 2' ),
('BPS-LC-NNLP 2-25-26' , 'Gurramguda' , 'NNLP 2' ),
('BPS-LC-NNLP 3-25-26' , 'Gurramguda' , 'NNLP 3' ),
('BPS-LC-NNLP 3-25-26' , 'Gurramguda' , 'NNLP 3' ),
('BPS-LC-NNLP 3-25-26' , 'Gurramguda' , 'NNLP 3' ),
('BPS-LC-NNLP 4-25-26' , 'Gurramguda' , 'NNLP 4' ),
('BPS-LC-NNLP 4-25-26' , 'Gurramguda' , 'NNLP 4' ),
('BPS-LC-NNLP 4-25-26' , 'Gurramguda' , 'NNLP 4' ),
('BPS-LC-NNLP 4-25-26' , 'Gurramguda' , 'NNLP 4' ),
('BHIS-LC-NNLP 2-25-26' , 'Kanchipur' , 'NNLP 2' ),
('BHIS-LC-NNLP 3-25-26' , 'Kanchipur' , 'NNLP 3' ),
('BHIS-LC-NNLP 3-25-26' , 'Kanchipur' , 'NNLP 3' ),
('BHIS-LC-NNLP 4-25-26' , 'Kanchipur' , 'NNLP 4' ),
('BHIS-LC-NNLP 4-25-26' , 'Kanchipur' , 'NNLP 4' ),
('BHIS-LC-NNLP 4-25-26' , 'Kanchipur' , 'NNLP 4' ),
('BHIS-LC-NNLP 4-25-26' , 'Kanchipur' , 'NNLP 4' ),
('BHIS-LC-NNLP 2-25-26' , 'Tiruttani' , 'NNLP 2' ),
('BHIS-LC-NNLP 3-25-26' , 'Tiruttani' , 'NNLP 3' ),
('BHIS-LC-NNLP 4-25-26' , 'Tiruttani' , 'NNLP 4' ),
('HCPS-LC-NNLP 2-25-26' , 'Sec-29' , 'NNLP 2' ),
('HCPS-LC-NNLP 2-25-26' , 'Sec-29' , 'NNLP 2' ),
('HCPS-LC-NNLP 2-25-26' , 'Sec-29' , 'NNLP 2' ),
('HCPS-LC-NNLP 3-25-26' , 'Sec-29' , 'NNLP 3' ),
('HCPS-LC-NNLP 3-25-26' , 'Sec-29' , 'NNLP 3' ),
('HCPS-LC-NNLP 3-25-26' , 'Sec-29' , 'NNLP 3' ),
('HCPS-LC-NNLP 3-25-26' , 'Sec-29' , 'NNLP 3' ),
('HCPS-LC-NNLP 3-25-26' , 'Sec-29' , 'NNLP 3' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-29' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-29' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-29' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-29' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-29' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-29' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-29' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('HCPS-LC-NNLP 4-25-26' , 'Sec-75' , 'NNLP 4' ),
('LVIS-LC-NNLP 2-25-26' , 'Lotus Valley Intt. School' , 'NNLP 2' ),
('LVIS-LC-NNLP 2-25-26' , 'Lotus Valley Intt. School' , 'NNLP 2' ),
('LVIS-LC-NNLP 2-25-26' , 'Lotus Valley Intt. School' , 'NNLP 2' ),
('LVIS-LC-NNLP 2-25-26' , 'Lotus Valley Intt. School' , 'NNLP 2' ),
('LVIS-LC-NNLP 2-25-26' , 'Lotus Valley Intt. School' , 'NNLP 2' ),
('LVIS-LC-NNLP 2-25-26' , 'Lotus Valley Intt. School' , 'NNLP 2' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 3-25-26' , 'Lotus Valley Intt. School' , 'NNLP 3' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LVIS-LC-NNLP 4-25-26' , 'Lotus Valley Intt. School' , 'NNLP 4' ),
('LDCS-LC-NNLP 2-25-26' , 'Love Dale Central School (LDCS)' , 'NNLP 2' ),
('LDCS-LC-NNLP 3-25-26' , 'Love Dale Central School (LDCS)' , 'NNLP 3' ),
('LDCS-LC-NNLP 4-25-26' , 'Love Dale Central School (LDCS)' , 'NNLP 4' ),
('MFY-LC-NNLP 1-25-26' , 'Mahara Foundational Years' , 'NNLP 1' ),
('MFY-LC-NNLP 2-25-26' , 'Mahara Foundational Years' , 'NNLP 2' ),
('MFY-LC-NNLP 3-25-26' , 'Mahara Foundational Years' , 'NNLP 3' ),
('MFY-LC-NNLP 4-25-26' , 'Mahara Foundational Years' , 'NNLP 4' )


insert into course
values
('Cedar-LC-NNLP 2-25-26' , 'Basmat' , 'NNLP 2' ),
('Cedar-LC-NNLP 3-25-26' , 'Basmat' , 'NNLP 3' ),
('Cedar-LC-NNLP 4-25-26' , 'Basmat' , 'NNLP 4' ),
('Cedar-LC-G1-25-26' , 'Basmat' , 'Grade 1' ),
('Cedar-LC-G2-25-26' , 'Basmat' , 'Grade 2' ),
('Cedar-LC-G3-25-26' , 'Basmat' , 'Grade 3' ),
('Cedar-LC-G4-25-26' , 'Basmat' , 'Grade 4' ),
('Cedar-LC-G5-25-26' , 'Basmat' , 'Grade 5' ),
('Cedar-LC-G6-25-26' , 'Basmat' , 'Grade 6' )

insert into groups
values
( 'Basmat','A' , 'NNLP 2' , 'Cedar|NNLP-2|A|2025-26' ),
( 'Basmat','A' , 'NNLP 3' , 'Cedar|NNLP-3|A|2025-26' ),
( 'Basmat','A' , 'NNLP 4' , 'Cedar|NNLP-4|A|2025-26' ),
( 'Basmat','A' , 'Grade 1' , 'Cedar|G1|A|2025-26' ),
( 'Basmat','A' , 'Grade 2' , 'Cedar|G2|A|2025-26' ),
( 'Basmat','A' , 'Grade 3' , 'Cedar|G3|A|2025-26' ),
( 'Basmat','A' , 'Grade 4' , 'Cedar|G4|A|2025-26' ),
( 'Basmat','A' , 'Grade 5' , 'Cedar|G5|A|2025-26' ),
( 'Basmat','A' , 'Grade 6' , 'Cedar|G6|A|2025-26' ),
( 'Basmat','B' , 'NNLP 2' , 'Cedar|NNLP-2|B|2025-26' ),
( 'Basmat','B' , 'NNLP 3' , 'Cedar|NNLP-3|B|2025-26' ),
( 'Basmat','B' , 'NNLP 4' , 'Cedar|NNLP-4|B|2025-26' ),
( 'Basmat','B' , 'Grade 1' , 'Cedar|G1|B|2025-26' ),
( 'Basmat','B' , 'Grade 2' , 'Cedar|G2|B|2025-26' ),
( 'Basmat','B' , 'Grade 3' , 'Cedar|G3|B|2025-26' ),
( 'Basmat','B' , 'Grade 4' , 'Cedar|G4|B|2025-26' ),
( 'Basmat','B' , 'Grade 5' , 'Cedar|G5|B|2025-26' ),
( 'Basmat','B' , 'Grade 6' , 'Cedar|G6|B|2025-26' )


INSERT INTO COURSE
VALUES
('DIS D-LC-NNLP 2-25-26' , 'Dehradun' , 'NNLP 2' ),
('DIS D-LC-NNLP 3-25-26' , 'Dehradun' , 'NNLP 3' ),
('DIS D-LC-NNLP 4-25-26' , 'Dehradun' , 'NNLP 4' ),
('DIS D-LC-G1-25-26' , 'Dehradun' , 'Grade 1' )



INSERT INTO GROUPS
VALUES
( 'Dehradun','LILY' , 'NNLP 2' , 'DIS D|NNLP 2|LILY|2025-26' ),
( 'Dehradun','ROSE' , 'NNLP 2' , 'DIS D|NNLP 2|ROSE|2025-26' ),
( 'Dehradun','DAISY' , 'NNLP 3' , 'DIS D|NNLP 3|DAISY|2025-26' ),
( 'Dehradun','LILY' , 'NNLP 3' , 'DIS D|NNLP 3|LILY|2025-26' ),
( 'Dehradun','MARIGOLD' , 'NNLP 3' , 'DIS D|NNLP 3|MARIGOLD|2025-26' ),
( 'Dehradun','ROSE' , 'NNLP 3' , 'DIS D|NNLP 3|ROSE|2025-26' ),
( 'Dehradun','DAISY' , 'NNLP 4' , 'DIS D|NNLP 4|DAISY|2025-26' ),
( 'Dehradun','LILY' , 'NNLP 4' , 'DIS D|NNLP 4|LILY|2025-26' ),
( 'Dehradun','MARIGOLD' , 'NNLP 4' , 'DIS D|NNLP 4|MARIGOLD|2025-26' ),
( 'Dehradun','ROSE' , 'NNLP 4' , 'DIS D|NNLP 4|ROSE|2025-26' ),
( 'Dehradun','TULIP' , 'NNLP 4' , 'DIS D|NNLP 4|TULIP|2025-26' ),
( 'Dehradun','DAISY' , 'Grade 1' , 'DIS D|G1|DAISY|2025-26' ),
( 'Dehradun','LILY' , 'Grade 1' , 'DIS D|G1|LILY|2025-26' ),
( 'Dehradun','MARIGOLD' , 'Grade 1' , 'DIS D|G1|MARIGOLD|2025-26' ),
( 'Dehradun','ROSE' , 'Grade 1' , 'DIS D|G1|ROSE|2025-26' ),
( 'Dehradun','TULIP' , 'Grade 1' , 'DIS D|G1|TULIP|2025-26' )


INSERT INTO COURSE
VALUES
('DIS M&CH-LC-NNLP 1-25-26' , 'Mohali' , 'NNLP 1' ),
('DIS M&CH-LC-NNLP 2-25-26' , 'Mohali' , 'NNLP 2' ),
('DIS M&CH-LC-NNLP 3-25-26' , 'Mohali' , 'NNLP 3' ),
('DIS M&CH-LC-NNLP 4-25-26' , 'Mohali' , 'NNLP 4' ),
('DIS M&CH-LC-G1-25-26' , 'Mohali' , 'Grade 1' ),
('DIS M&CH-LC-G2-25-26' , 'Mohali' , 'Grade 2' )


INSERT INTO GROUPS
VALUES
( 'Mohali','Daffodil' , 'NNLP1' , 'DIS-M-NNLP1-Daffodil-25-26' ),
( 'Mohali','Carnation' , 'NNLP1' , 'DIS-M-NNLP1-Carnation-25-26' ),
( 'Mohali','Zinnia' , 'NNLP1' , 'DIS-M-NNLP1-Zinnia-25-26' ),
( 'Mohali','Sunflower' , 'NNLP1' , 'DIS-M-NNLP1-Sunflower-25-26' ),
( 'Mohali','Sunflower' , 'NNLP2' , 'DIS-M-NNLP2-Sunflower-25-26' ),
( 'Mohali','Daffodil' , 'NNLP2' , 'DIS-M-NNLP2-Daffodil-25-26' ),
( 'Mohali','Carnation' , 'NNLP2' , 'DIS-M-NNLP2-Carnation-25-26' ),
( 'Mohali','Zinnia' , 'NNLP2' , 'DIS-M-NNLP2-Zinnia-25-26' ),
( 'Mohali','Daffodil' , 'NNLP3' , 'DIS-M-NNLP3-Daffodil-25-26' ),
( 'Mohali','Carnation' , 'NNLP3' , 'DIS-M-NNLP3-Carnation-25-26' ),
( 'Mohali','Sunflower' , 'NNLP3' , 'DIS-M-NNLP3-Sunflower-25-26' ),
( 'Mohali','Zinnia' , 'NNLP3' , 'DIS-M-NNLP3-Zinnia-25-26' ),
( 'Mohali','Daffodil' , 'NNLP4' , 'DIS-M-NNLP4-Daffodil-25-26' ),
( 'Mohali','Sunflower' , 'NNLP4' , 'DIS-M-NNLP4-Sunflower-25-26' ),
( 'Mohali','Carnation' , 'NNLP4' , 'DIS-M-NNLP4-Carnation-25-26' ),
( 'Mohali','Zinnia' , 'NNLP4' , 'DIS-M-NNLP4-Zinnia-25-26' ),
( 'Chandigarh','Daffodil' , 'NNLP1' , 'DIS-CH-NNLP1-Daffodil-25-26' ),
( 'Chandigarh','Carnation' , 'NNLP1' , 'DIS-CH-NNLP1-Carnation-25-26' ),
( 'Chandigarh','Zinnia' , 'NNLP1' , 'DIS-CH-NNLP1-Zinnia-25-26' ),
( 'Chandigarh','Sunflower' , 'NNLP1' , 'DIS-CH-NNLP1-Sunflower-25-26' ),
( 'Chandigarh','Carnation' , 'NNLP2' , 'DIS-CH-NNLP2-Carnation-25-26' ),
( 'Chandigarh','Daffodil' , 'NNLP2' , 'DIS-CH-NNLP2-Daffodil-25-26' ),
( 'Chandigarh','Sunflower' , 'NNLP2' , 'DIS-CH-NNLP2-Sunflower-25-26' ),
( 'Chandigarh','Daffodil' , 'NNLP3' , 'DIS-CH-NNLP3-Daffodil-25-26' ),
( 'Chandigarh','Sunflower' , 'NNLP3' , 'DIS-CH-NNLP3-Sunflower-25-26' ),
( 'Chandigarh','Carnation' , 'NNLP3' , 'DIS-CH-NNLP3-Carnation-25-26' ),
( 'Chandigarh','Daffodil' , 'NNLP4' , 'DIS-CH-NNLP4-Daffodil-25-26' ),
( 'Chandigarh','Carnation' , 'NNLP4' , 'DIS-CH-NNLP4-Carnation-25-26' ),
( 'Chandigarh','Sunflower' , 'NNLP4' , 'DIS-CH-NNLP4-Sunflower-25-26' ),
( 'Chandigarh','Jasmine' , 'G1' , 'DIS-CH-G1-Jasmine-25-26' ),
( 'Chandigarh','Rose' , 'G1' , 'DIS-CH-G1-Rose-25-26' ),
( 'Chandigarh','Jasmine' , 'G2' , 'DIS-CH-G2-Jasmine-25-26' ),
( 'Chandigarh','Rose' , 'G2' , 'DIS-CH-G2-Rose-25-26' )

---Doon toddler and dis-h courses and groups

INSERT INTO course
VALUES
('DIS M&CH-LC-NNLP 1-25-26' , 'Mohali' , 'NNLP 1' ),
('DIS M&CH-LC-NNLP 2-25-26' , 'Mohali' , 'NNLP 2' ),
('DIS M&CH-LC-NNLP 3-25-26' , 'Mohali' , 'NNLP 3' ),
('DIS M&CH-LC-NNLP 4-25-26' , 'Mohali' , 'NNLP 4' ),
('DIS M&CH-LC-G1-25-26' , 'Mohali' , 'Grade 1' ),
('DIS M&CH-LC-G2-25-26' , 'Mohali' , 'Grade 2' ),
('DT-LC-NNLP 1-25-26' , 'Toddler' , 'NNLP 1' ),
('DT-LC-NNLP 2-25-26' , 'Toddler' , 'NNLP 2' ),
('DT-LC-NNLP 3-25-26' , 'Toddler' , 'NNLP 3' ),
('DT-LC-NNLP 4-25-26' , 'Toddler' , 'NNLP 4' )

INSERT INTO GROUPS
VALUES
( 'Toodler','Beginners-1' , 'NNLP 1' , 'DT|NNLP-1|Beginners-1|2025-26' ),
( 'Toodler','Beginners-2' , 'NNLP 1' , 'DT|NNLP-1|Beginners-2|2025-26' ),
( 'Toodler','Beginners-3' , 'NNLP 1' , 'DT|NNLP-1|Beginners-3|2025-26' ),
( 'Toodler','Beginners-4' , 'NNLP 1' , 'DT|NNLP-1|Beginners-4|2025-26' ),
( 'Toodler','Starters-1' , 'NNLP 2' , 'DT|NNLP-2|Starters-1|2025-26' ),
( 'Toodler','Movers-1' , 'NNLP 3' , 'DT|NNLP-3|Movers-1|2025-26' ),
( 'Toodler','Shakers-1' , 'NNLP 4' , 'DT|NNLP-4|Shakers-1|2025-26' ),
( 'Haldwani','A' , 'NNLP 1' , 'DIS H-LC-NNLP 1-A-25-26' ),
( 'Haldwani','B' , 'NNLP 1' , 'DIS H-LC-NNLP 1-B-25-26' ),
( 'Haldwani','A' , 'NNLP 2' , 'DIS H-LC-NNLP 2-A-25-26' ),
( 'Haldwani','B' , 'NNLP 2' , 'DIS H-LC-NNLP 2-B-25-26' ),
( 'Haldwani','A' , 'NNLP 3' , 'DIS H-LC-NNLP 3-A-25-26' ),
( 'Haldwani','B' , 'NNLP 3' , 'DIS H-LC-NNLP 3-B-25-26' ),
( 'Haldwani','A' , 'NNLP 4' , 'DIS H-LC-NNLP 4-A-25-26' ),
( 'Haldwani','B' , 'NNLP 4' , 'DIS H-LC-NNLP 4-B-25-26' )


INSERT INTO COURSE
VALUES
('HCPS-LC-NNLP 2-25-26' , 	'Sec-75' , 	'NNLP 2') , 
('HCPS-LC-NNLP 3-25-26' , 	'Sec-75' , 	'NNLP 3')


INSERT INTO GROUPS
VALUES
( 'LDCS','A' , 'NNLP 2' , 'LDCS-LC-NNLP 2-A-25-26' ),
( 'LDCS','Aura' , 'NNLP 3' , 'LDCS-LC-NNLP 3-Aura-25-26' ),
( 'LDCS','Aura' , 'NNLP 4' , 'LDCS-LC-NNLP 4-Aura-25-26' )

INSERT INTO COURSE
VALUES
('LDCS-LC-NNLP 2-25-26' , 'LDCS' , 'NNLP 2' ),
('LDCS-LC-NNLP 3-25-26' , 'LDCS' , 'NNLP 3' ),
('LDCS-LC-NNLP 4-25-26' , 'LDCS' , 'NNLP 4' )


INSERT INTO COURSE
VALUES
('QGS-LC-G1-25-26' , 'QGS' , 'G1' ),
('QGS-LC-G2-25-26' , 'QGS' , 'G2' ),
('QGS-LC-G3-25-26 ' , 'QGS' , 'G3' ),
('QGS-LC-G4-25-26 ' , 'QGS' , 'G4' ),
('QGS-LC-G5-25-26' , 'QGS' , 'G5' ),
('QGS-LC-G6-25-26' , 'QGS' , 'G6' ),
('DIS M&CH-LC-NNLP 1-25-26' , 'DIS M&CH' , 'NNLP 1' ),
('DIS M&CH-LC-NNLP 2-25-26' , 'DIS M&CH' , 'NNLP 2' ),
('DIS M&CH-LC-NNLP 3-25-26' , 'DIS M&CH' , 'NNLP 3' ),
('DIS M&CH-LC-NNLP 4-25-26' , 'DIS M&CH' , 'NNLP 4' ),
('DIS M&CH-LC-G1-25-26' , 'DIS M&CH' , 'G1' ),
('DIS M&CH-LC-G2-25-26' , 'DIS M&CH' , 'G2' ),
('OGS-LC-NNLP 2-25-26' , 'OGS' , 'NNLP 2' ),
('OGS-LC-NNLP 3-25-26' , 'OGS' , 'NNLP 3' ),
('OGS-LC-NNLP 3-25-26' , 'OGS' , 'NNLP 3' ),
('OGS-LC-NNLP 4-25-26' , 'OGS' , 'NNLP 4' ),
('OGS-LC-NNLP 4-25-26' , 'OGS' , 'NNLP 4' ),
('OGS-LC-G1-25-26' , 'OGS' , 'G1' ),
('OGS-LC-G1-25-26' , 'OGS' , 'G1' ),
('OGS-LC-G1-25-26' , 'OGS' , 'G1' ),
('OGS-LC-G2-25-26' , 'OGS' , 'G2' ),
('OGS-LC-G2-25-26' , 'OGS' , 'G2' ),
('OGS-LC-G2-25-26' , 'OGS' , 'G2' ),
('OGS-LC-G3-25-26' , 'OGS' , 'G3' ),
('OGS-LC-G3-25-26' , 'OGS' , 'G3' ),
('OGS-LC-G3-25-26' , 'OGS' , 'G3' ),
('OGS-LC-G4-25-26' , 'OGS' , 'G4' ),
('OGS-LC-G4-25-26' , 'OGS' , 'G4' ),
('OGS-LC-G5-25-26' , 'OGS' , 'G5' ),
('OGS-LC-G5-25-26' , 'OGS' , 'G5' ),
('OGS-LC-G5-25-26' , 'OGS' , 'G5' ),
('RPS-C-LC-G1-2025-26' , 'RPS-C' , 'G1' ),
('RPS-C-LC-G1-2025-26' , 'RPS-C' , 'G1' ),
('RPS-C-LC-G1-2025-26' , 'RPS-C' , 'G1' ),
('RPS-C-LC-G2-2025-26' , 'RPS-C' , 'G2' ),
('RPS-C-LC-G2-2025-26' , 'RPS-C' , 'G2' ),
('RPS-C-LC-G2-2025-26' , 'RPS-C' , 'G2' ),
('RPS-C-LC-G3-2025-26' , 'RPS-C' , 'G3' ),
('RPS-C-LC-G3-2025-26' , 'RPS-C' , 'G3' ),
('RPS-C-LC-G4-2025-26' , 'RPS-C' , 'G4' ),
('RPS-C-LC-G4-2025-26' , 'RPS-C' , 'G4' ),
('RPS-C-LC-G5-2025-26' , 'RPS-C' , 'G5' ),
('RPS-C-LC-G5-2025-26' , 'RPS-C' , 'G5' ),
('RPS-C-LC-G6-2025-26' , 'RPS-C' , 'G6' ),
('RPS-C-LC-G6-2025-26' , 'RPS-C' , 'G6' ),
('RPS-C-LC-G7-2025-26' , 'RPS-C' , 'G7' ),
('RPS-C-LC-G7-2025-26' , 'RPS-C' , 'G7' ),
('RPS-C-LC-G8-2025-26' , 'RPS-C' , 'G8' )



INSERT INTO GROUPS
VALUES
( 'QGS','A' , 'G1' , 'QGS|G1|A|2025-26' ),
( 'QGS','A' , 'G2' , 'QGS|G2|A|2025-26' ),
( 'QGS','A' , 'G3' , 'QGS|G3|A|2025-26' ),
( 'QGS','A' , 'G4' , 'QGS|G4|A|2025-26' ),
( 'QGS','A' , 'G5' , 'QGS|G5|A|2025-26' ),
( 'OGS','JAL' , 'Nursery' , 'OGS-LC-Nursery-JAL-25-26' ),
( 'OGS','JAL' , 'KG1' , 'OGS-LC-KG1-JAL-25-26' ),
( 'OGS','PRITHVI' , 'KG1' , 'OGS-LC-KG1-PRITHVI-25-26' ),
( 'OGS','JAL' , 'KG2' , 'OGS-LC-KG2-JAL-25-26' ),
( 'OGS','PRITHVI' , 'KG2' , 'OGS-LC-KG2-PRITHVI-25-26' ),
( 'OGS','JAL' , 'G1' , 'OGS-LC-G1-JAL-25-26' ),
( 'OGS','PRITHVI' , 'G1' , 'OGS-LC-G1-PRITHVI-25-26' ),
( 'OGS','VAYU' , 'G1' , 'OGS-LC-G1-VAYU-25-26' ),
( 'OGS','JAL' , 'G2' , 'OGS-LC-G2-JAL-25-26' ),
( 'OGS','VAYU' , 'G2' , 'OGS-LC-G2-VAYU-25-26' ),
( 'OGS','PRITHVI' , 'G2' , 'OGS-LC-G2-PRITHVI-25-26' ),
( 'OGS','JAL' , 'G3' , 'OGS-LC-G3-JAL-25-26' ),
( 'OGS','PRITHVI' , 'G3' , 'OGS-LC-G3-PRITHVI-25-26' ),
( 'OGS','VAYU' , 'G3' , 'OGS-LC-G3-VAYU-25-26' ),
( 'OGS','JAL' , 'G4' , 'OGS-LC-G4-JAL-25-26' ),
( 'OGS','PRITHVI' , 'G4' , 'OGS-LC-G4-PRITHVI-25-26' ),
( 'OGS','JAL' , 'G5' , 'OGS-LC-G5-JAL-25-26' ),
( 'OGS','PRITHVI' , 'G5' , 'OGS-LC-G5-PRITHVI-25-26' ),
( 'OGS','VAYU' , 'G5' , 'OGS-LC-G5-VAYU-25-26' ),
( 'RPS','A' , 'G1' , 'RPS-C-LC-G1-A-2025-26' ),
( 'RPS','B' , 'G1' , 'RPS-C-LC-G1-B-2025-26' ),
( 'RPS','C' , 'G1' , 'RPS-C-LC-G1-C-2025-26' ),
( 'RPS','A' , 'G2' , 'RPS-C-LC-G2-A-2025-26' ),
( 'RPS','B' , 'G2' , 'RPS-C-LC-G2-B-2025-26' ),
( 'RPS','C' , 'G2' , 'RPS-C-LC-G2-C-2025-26' ),
( 'RPS','A' , 'G3' , 'RPS-C-LC-G3-A-2025-26' ),
( 'RPS','B' , 'G3' , 'RPS-C-LC-G3-B-2025-26' ),
( 'RPS','A' , 'G4' , 'RPS-C-LC-G4-A-2025-26' ),
( 'RPS','B' , 'G4' , 'RPS-C-LC-G4-B-2025-26' ),
( 'RPS','A' , 'G5' , 'RPS-C-LC-G5-A-2025-26' ),
( 'RPS','B' , 'G5' , 'RPS-C-LC-G5-B-2025-26' ),
( 'RPS','A' , 'G6' , 'RPS-C-LC-G6-A-2025-26' ),
( 'RPS','B' , 'G6' , 'RPS-C-LC-G6-B-2025-26' ),
( 'RPS','A' , 'G7' , 'RPS-C-LC-G7-A-2025-26' ),
( 'RPS','B' , 'G7' , 'RPS-C-LC-G7-B-2025-26' )


INSERT INTO groups
values
( 'Imemory','A' , 'NNLP 2' , 'Imemory-LC-NNLP 2-A-2025-26' ),
( 'Imemory','B' , 'NNLP 2' , 'Imemory-LC-NNLP 2-B-2025-26' ),
( 'Imemory','A' , 'NNLP 3' , 'Imemory-LC-NNLP 3-A-2025-26' ),
( 'Imemory','B' , 'NNLP 3' , 'Imemory-LC-NNLP 3-B-2025-26' ),
( 'Imemory','C' , 'NNLP 3' , 'Imemory-LC-NNLP 3-C-2025-26' ),
( 'Imemory','A' , 'NNLP 4' , 'Imemory-LC-NNLP 4-A-2025-26' ),
( 'Imemory','B' , 'NNLP 4' , 'Imemory-LC-NNLP 4-B-2025-26' ),
( 'Imemory','A' , 'G1' , 'Imemory-LC-G1-A-2025-26' ),
( 'Imemory','B' , 'G1' , 'Imemory-LC-G1-B-2025-26' ),
( 'Imemory','A' , 'G2' , 'Imemory-LC-G2-A-2025-26' ),
( 'Imemory','B' , 'G2' , 'Imemory-LC-G2-B-2025-26' ),
( 'The Conroy School','A' , 'NNLP 2' , 'TCS-LC-NNLP 2-A-25-26' ),
( 'The Conroy School','A' , 'NNLP 3' , 'TCS-LC-NNLP 3-A-25-26' ),
( 'The Conroy School','A' , 'NNLP 4' , 'TCS-LC-NNLP 4-A-25-26' ),
( 'The Conroy School','A' , 'G1' , 'TCS-LC-G1-A-25-26' ),
( 'The Conroy School','A' , 'G2' , 'TCS-LC-G2-A-25-26' ),
( 'The Conroy School','A' , 'G3' , 'TCS-LC-G3-A-25-26' ),
( 'The Conroy School','A' , 'G4' , 'TCS-LC-G4-A-25-26' ),
( 'The Conroy School','A' , 'G5' , 'TCS-LC-G5-A-25-26' ),
( 'The Conroy School','A' , 'G6' , 'TCS-LC-G6-A-25-26' ),
( 'The Vedanya School','A' , 'Nursery' , 'TVS-LC-Nursery-A-25-26' ),
( 'The Vedanya School','B' , 'Nursery' , 'TVS-LC-Nursery-B-25-26' ),
( 'The Vedanya School','A' , 'UKG' , 'TVS-LC-UKG-A-25-26' ),
( 'The Vedanya School','A' , 'G1' , 'TVS-LC-G1-A-25-26' ),
( 'The Vedanya School','A' , 'G2' , 'TVS-LC-G2-A-25-26' )


INSERT INTO COURSE
VALUES
('Imemory-LC-NNLP 2-2025-26' , 'Imemory' , 'NNLP 2' ),
('Imemory-LC-NNLP 3-2025-26' , 'Imemory' , 'NNLP 3' ),
('Imemory-LC-NNLP 4-2025-26' , 'Imemory' , 'NNLP 4' ),
('Imemory-LC-G1-2025-26' , 'Imemory' , 'G1' ),
('Imemory-LC-G2-2025-26' , 'Imemory' , 'G2' ),
('TCS-LC-NNLP 2-25-26' , 'TCS' , 'NNLP 2' ),
('TCS-LC-NNLP 3-25-26' , 'TCS' , 'NNLP 3' ),
('TCS-LC-NNLP 4-25-26' , 'TCS' , 'NNLP 4' ),
('TCS-LC-G1-25-26' , 'TCS' , 'G1' ),
('TCS-LC-G2-25-26' , 'TCS' , 'G2' ),
('TCS-LC-G3-25-26' , 'TCS' , 'G3' ),
('TCS-LC-G4-25-26' , 'TCS' , 'G4' ),
('TCS-LC-G5-25-26' , 'TCS' , 'G5' ),
('TCS-LC-G6-25-26' , 'TCS' , 'G6' ),
('TVS-LC-Nursery-25-26' , 'TVS' , 'Nursery' ),
('TVS-LC-UKG-25-26' , 'TVS' , 'UKG' ),
('TVS-LC-G1-25-26' , 'TVS' , 'G1' ),
('TVS-LC-G2-25-26' , 'TVS' , 'G2' )



insert into groups
values
( 'Allen Kids Bareilly','A' , 'NNLP 1' , 'SH-Allen Bareilly-PG-1-A-25-26' ),
( 'Allen Kids Kakadeo','A' , 'NNLP 1' , 'SH-Allen Kakadeo-PG1-25-26' ),
( 'Allen Kids Mukherjee Vihar','A' , 'NNLP 1' , 'SH-Allen Mukherjee Vihar-PG1-Pooh-25-26' ),
( 'Allen Kids Swaroop Nagar','Sapling' , 'NNLP 1' , 'SH-Allen Swaroop Nagar-PG-1-Sapling-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','A' , 'NNLP 1' , 'SH-Allen Vrindavan/Lucknow-PG-1-25-26' ),
( 'Allenhouse Ghaziabad','A' , 'NNLP 1' , 'SH-Allen Ghaziabad-PG-1-25-26' ),
( 'Allen Kids Bareilly','A' , 'NNLP 2' , 'SH-Allen Bareilly-PG2-A-25-26' ),
( 'Allen Kids Bareilly','B' , 'NNLP 2' , 'SH-Allen Bareilly-PG2-B-25-26' ),
( 'Allen Kids Kakadeo','Goofy' , 'NNLP 2' , 'SH-Allen Kakadeo-PG2-Goofy-25-26' ),
( 'Allen Kids Mukherjee Vihar','A' , 'NNLP 2' , 'SH-Allen Mukherjee Vihar-PG2-25-26' ),
( 'Allen Kids Rooma','A' , 'NNLP 2' , 'SH-Allen Rooma-PG2-25-26' ),
( 'Allen Kids Swaroop Nagar','Iris' , 'NNLP 2' , 'SH-Allen Swaroop Nagar-PG-2-Iris-25-26' ),
( 'Allen Kids Swaroop Nagar','Marigold' , 'NNLP 2' , 'SH-Allen Swaroop Nagar-PG-2-Marigold-25-26' ),
( 'Allen Kids Swaroop Nagar','Orchid' , 'NNLP 2' , 'SH-Allen Swaroop Nagar-PG-2-Orchid-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','A' , 'NNLP 2' , 'SH-Allen Vrindavan/Lucknow-PG-2-A-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','B' , 'NNLP 2' , 'SH-Allen Vrindavan/Lucknow-PG-2-B-25-26' ),
( 'Allenhouse Agra','A' , 'NNLP 2' , 'SH-Allen Agra-PG-2-A-25-26' ),
( 'Allenhouse Ghaziabad','A' , 'NNLP 2' , 'SH-Allen Ghaziabad-PG-2-25-26' ),
( 'Allen Kids Jhansi','A' , 'NNLP 2' , 'SH-Allen Jhansi-PG-2-A-25-26' ),
( 'Allen Kids Panki','Pansy' , 'NNLP 2' , 'SH-Allen Panki-PG-2-PANSY-25-26' ),
( 'Allen Kids Bareilly','A' , 'NNLP 3' , 'SH-Allen Bareilly-Nursery-A-25-26' ),
( 'Allen Kids Bareilly','B' , 'NNLP 3' , 'SH-Allen Bareilly-Nursery-B-25-26' ),
( 'Allen Kids Kakadeo','Donald' , 'NNLP 3' , 'SH-Allen Kakadeo-Nursery-Donald-25-26' ),
( 'Allen Kids Mukherjee Vihar','A' , 'NNLP 3' , 'SH-Allen Mukherjee Vihar-Nursery-25-26' ),
( 'Allen Kids Rooma','A' , 'NNLP 3' , 'SH-Allen Rooma-Nursery-25-26' ),
( 'Allen Kids Swaroop Nagar','Bluebell' , 'NNLP 3' , 'SH-Allen Swaroop Nagar-Nursery-Bluebell-25-26' ),
( 'Allen Kids Swaroop Nagar','Daffodil' , 'NNLP 3' , 'SH-Allen Swaroop Nagar-Nursery-Daffodil-25-26' ),
( 'Allen Kids Swaroop Nagar','Tulip' , 'NNLP 3' , 'SH-Allen Swaroop Nagar-Nursery-Tulip-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','A' , 'NNLP 3' , 'SH-Allen Vrindavan/Lucknow-Nursery-25-26' ),
( 'Allenhouse Public School Agra','A' , 'NNLP 3' , 'SH-Allen Agra-Nursery-A-2025-26' ),
( 'Allenhouse Public School Agra','B' , 'NNLP 3' , 'SH-Allen Agra-Nursery-B-2025-26' ),
( 'Allenhouse Public School Ghaziabad','A' , 'NNLP 3' , 'SH-Allen Ghaziabad-Nursery-25-26' ),
( 'Allenhouse Public School Jhansi','A' , 'NNLP 3' , 'SH-Allen Jhansi-Nursery-A-25-26' ),
( 'Allenhouse Public School Jhansi','B' , 'NNLP 3' , 'SH-Allen Jhansi-Nursery-B-25-26' ),
( 'Allenhouse Public School Panki','A' , 'NNLP 3' , 'SH-Allen Panki-Nursery-A-25-26' ),
( 'Allenhouse Public School Panki','B' , 'NNLP 3' , 'SH-Allen Panki-Nursery-B-25-26' ),
( 'Allen Kids Bareilly','A' , 'NNLP 4' , 'SH-Allen Bareilly-Prep-A-25-26' ),
( 'Allen Kids Bareilly','B' , 'NNLP 4' , 'SH-Allen Bareilly-Prep-B-25-26' ),
( 'Allen Kids Kakadeo','Muffin' , 'NNLP 4' , 'SH-Allen Kakadeo-Prep-Muffin-25-26' ),
( 'Allen Kids Mukherjee Vihar','A' , 'NNLP 4' , 'SH-Allen Mukherjee Vihar-Prep-25-26' ),
( 'Allen Kids Rooma','A' , 'NNLP 4' , 'SH-Allen Rooma-Prep-25-26' ),
( 'Allen Kids Swaroop Nagar','Periwinkle' , 'NNLP 4' , 'SH-Allen Swaroop Nagar-Prep-Periwinkle-25-26' ),
( 'Allen Kids Swaroop Nagar','Poppy' , 'NNLP 4' , 'SH-Allen Swaroop Nagar-Prep-Poppy-25-26' ),
( 'Allen Kids Swaroop Nagar','Primrose' , 'NNLP 4' , 'SH-Allen Swaroop Nagar-Prep-Primrose-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','A' , 'NNLP 4' , 'SH-Allen Vrindavan/Lucknow-Prep-25-26' ),
( 'Allenhouse Public School Agra','A' , 'NNLP 4' , 'SH-Allen Agra-Prep-A-2025-26' ),
( 'Allenhouse Public School Ghaziabad','Poppy' , 'NNLP 4' , 'SH-Allen Ghaziabad-Prep-Poppy -25-26' ),
( 'Allenhouse Public School Ghaziabad','Petunia' , 'NNLP 4' , 'SH-Allen Ghazibad-Prep-Petunia -25-26' ),
( 'Allenhouse Public School Jhansi','A' , 'NNLP 4' , 'SH-Allen Jhansi-Prep-A-25-26' ),
( 'Allenhouse Public School Jhansi','B' , 'NNLP 4' , 'SH-Allen Jhansi-Prep-B-25-26' ),
( 'Allenhouse Public School Panki','A' , 'NNLP 4' , 'SH-Allen Panki-Prep-A-25-26' ),
( 'Allenhouse Public School Panki','B' , 'NNLP 4' , 'SH-Allen Panki-Prep-B-25-26' ),
( 'Allen Kids Bareilly','A' , 'Grade 1' , 'SH-Allen Bareilly-G1-A-25-26' ),
( 'Allen Kids Kakadeo','Daffodils' , 'Grade 1' , 'SH-Allen Kakadeo-G1-Daffodils-25-26' ),
( 'Allen Kids Mukherjee Vihar','Petunia' , 'Grade 1' , 'SH-Allen Mukherjee Vihar-G1-Petunia-25-26' ),
( 'Allen Kids Rooma','A' , 'Grade 1' , 'SH-Allen Rooma-G1-A-25-26' ),
( 'Allen Kids Rooma','B' , 'Grade 1' , 'SH-Allen Rooma-G1-B-25-26' ),
( 'Allen Kids Swaroop Nagar','Petunia' , 'Grade 1' , 'SH-Allen Swaroop Nagar-G1-Petunia-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','A' , 'Grade 1' , 'SH-Allen Vrindavan/Lucknow-G1-A-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','B' , 'Grade 1' , 'SH-Allen Vrindavan/Lucknow-G1-B-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','C' , 'Grade 1' , 'SH-Allen Vrindavan/Lucknow-G1-C-25-26' ),
( 'Allenhouse Public School Agra','A' , 'Grade 1' , 'SH-Allen Agra-G1-A-25-26' ),
( 'Allenhouse Public School Ghaziabad','A' , 'Grade 1' , 'SH-Allen Ghazibad-G1-A-25-26' ),
( 'Allenhouse Public School Ghaziabad','B' , 'Grade 1' , 'SH-Allen Ghazibad-G1-B-25-26' ),
( 'Allenhouse Public School Ghaziabad','C' , 'Grade 1' , 'SH-Allen Ghazibad-G1-C-25-26' ),
( 'Allenhouse Public School Jhansi','A' , 'Grade 1' , 'SH-Allen Jhansi-G1- A-25-26' ),
( 'Allenhouse Public School Jhansi','B' , 'Grade 1' , 'SH-Allen Jhansi-G1- B-25-26' ),
( 'Allenhouse Public School Khalasi Lines','A' , 'Grade 1' , 'SH-Allen Khalasi Lines-G1-A-25-26' ),
( 'Allenhouse Public School Khalasi Lines','B' , 'Grade 1' , 'SH-Allen Khalasi Lines-G1-B-25-26' ),
( 'Allenhouse Public School Khalasi Lines','C' , 'Grade 1' , 'SH-Allen Khalasi Lines-G1-C-25-26' ),
( 'Allenhouse Public School Khalasi Lines','D' , 'Grade 1' , 'SH-Allen Khalasi Lines-G1-D-25-26' ),
( 'Allenhouse Public School Panki','A' , 'Grade 1' , 'SH-Allen Panki-G1-A-25-26' ),
( 'Allen Kids Bareilly','A' , 'Grade 2' , 'SH-Allen Bareilly-G2-A-25-26' ),
( 'Allen Kids Kakadeo','A' , 'Grade 2' , 'SH-Allen Kakadeo-G2-A-25-26' ),
( 'Allen Kids Mukherjee Vihar','A' , 'Grade 2' , 'SH-Allen Mukherjee Vihar-G2-A-25-26' ),
( 'Allen Kids Rooma','A' , 'Grade 2' , 'SH-Allen Rooma-G2-A-25-26' ),
( 'Allen Kids Rooma','B' , 'Grade 2' , 'SH-Allen Rooma-G2-B-25-26' ),
( 'Allen Kids Swaroop Nagar','A' , 'Grade 2' , 'SH-Allen Swaroop Nagar-G2-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','A' , 'Grade 2' , 'SH-Allen Vrindavan/Lucknow-G2-A-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','B' , 'Grade 2' , 'SH-Allen Vrindavan/Lucknow-G2-B-25-26' ),
( 'Allen Kids Vrindavan/Lucknow','C' , 'Grade 2' , 'SH-Allen Vrindavan/Lucknow-G2-C-25-26' ),
( 'Allenhouse Public School Agra','A' , 'Grade 2' , 'SH-Allen Agra-G2-A-25-26' ),
( 'Allenhouse Public School Ghaziabad','A' , 'Grade 2' , 'SH-Allen Ghazibad-G2-A-25-26' ),
( 'Allenhouse Public School Ghaziabad','B' , 'Grade 2' , 'SH-Allen Ghazibad-G2-B-25-26' ),
( 'Allenhouse Public School Ghaziabad','C' , 'Grade 2' , 'SH-Allen Ghazibad-G2-C-25-26' ),
( 'Allenhouse Public School Ghaziabad','D' , 'Grade 2' , 'SH-Allen Ghazibad-G2-D-25-26' ),
( 'Allenhouse Public School Jhansi','A' , 'Grade 2' , 'SH-Allen Jhansi-G2-A-25-26' ),
( 'Allenhouse Public School Jhansi','B' , 'Grade 2' , 'SH-Allen Jhansi-G2-B-25-26' ),
( 'Allenhouse Public School Khalasi Lines','A' , 'Grade 2' , 'SH-Allen Khalasi Lines-G2-A-25-26' ),
( 'Allenhouse Public School Khalasi Lines','B' , 'Grade 2' , 'SH-Allen Khalasi Lines-G2-B-25-26' ),
( 'Allenhouse Public School Khalasi Lines','C' , 'Grade 2' , 'SH-Allen Khalasi Lines-G2-C-25-26' ),
( 'Allenhouse Public School Khalasi Lines','D' , 'Grade 2' , 'SH-Allen Khalasi Lines-G2-D-25-26' ),
( 'Allenhouse Public School Panki','A' , 'Grade 2' , 'SH-Allen Panki-G2-A-25-26' ),
( 'Allenhouse Public School Panki','B' , 'Grade 2' , 'SH-Allen Panki-G2-B-25-26' )


INSERT INTO GROUPS
VALUES
( 'Sec 70 Gurugram','A' , 'Grade 1' , 'LL-LC-Sec-70 Gurugram-G1-A-25-26' ),
( 'Sec 70 Gurugram','B' , 'Nursery' , 'LL-Sec-70 Gurugram-Nursery-B-25-27' ),
( 'Sec 70 Gurugram','A' , 'LKG' , 'LL-Sec-70 Gurugram-LKG-A-25-26' ),
( 'Sec 70 Gurugram','B' , 'LKG' , 'LL-Sec-70 Gurugram-LKG-B-25-26' ),
( 'Sec 70 Gurugram','A' , 'UKG' , 'LL-Sec-70 Gurugram-UKG-A-25-26' ),
( 'Sec 70 Gurugram','B' , 'UKG' , 'LL-Sec-70 Gurugram-UKG-B-25-26' ),
( 'Sec 70 Gurugram','A' , 'Grade 1' , 'LL-LC-Sec-70 Gurugram-G1-A-25-26' ),
( 'Sec 70 Gurugram','B' , 'Grade 1' , 'LL-LC-Sec-70 Gurugram-G1-B-25-26' )








select * from master_credentials_file_l
select * from master_credentials_file_l2
TRUNCATE TABLE master_credentials_file_l
TRUNCATE TABLE  master_credentials_file_l2




----CAUTION __ Execute below code from this insert statement in the master_Credentials_file_l2 
--this is related to the grade change in the superhouse branch so it is must to execute with the insert statement 
--under the master_credentiasl_file_l2

select * from grade_identify 
where gradeid = 3

insert into master_credentials_file_l2
select * 
from master_credentials_file_l
where (Section is not null and LTRIM(RTRIM(Section)) <> '')
   and ([Class/Grade] is not null and LTRIM(RTRIM([Class/Grade])) <> '')
   and  (Branch is not null and LTRIM(RTRIM(Branch)) <> '')
      and  ([Admission Number / Unique Identification Number ] is not null and LTRIM(RTRIM([Admission Number / Unique Identification Number ])) <> '');
update master_credentials_file_l2 
set [Class/Grade] = 'NNLP 3'
where [class/grade] IN (
replace(replace(trim(lower('Nursery')) , ' ' , ''),'.','') ,
replace(replace(trim(lower( 'nur')),' ',''),'.','')
) 
and branch IN 
( 
'AH Agra',
'AH Ghaziabad',
'AH Khalasi Lines',
'AK Panki',
'AK Bareilly',
'AK Jhansi',
'AK Kakadeo',
'AK Mukherjee',
'AK Rooma',
'AK Swaroop Nagar',
'AK Vrindavan',
'AH Ghaziabad')



update master_credentials_file_l2 
set [Class/Grade] = 'NNLP 2'
where [class/grade] IN (SELECT GRADEALLNAMES FROM GRADE_IDENTIFY  WHERE GRADEID = '2' ) 
and branch IN 
( 
'AH Agra',
'AH Ghaziabad',
'AH Khalasi Lines',
'AK Panki',
'AK Bareilly',
'AK Jhansi',
'AK Kakadeo',
'AK Mukherjee',
'AK Rooma',
'AK Swaroop Nagar',
'AK Vrindavan',
'AH Ghaziabad')

update master_credentials_file_l2 
set [Class/Grade] = 'NNLP 1'
where [class/grade] IN (SELECT gradEALLNAMES FROM grade_identify 
WHERE GRADEID = '1' ) 
and branch IN 
( 
'AH Agra',
'AH Ghaziabad',
'AH Khalasi Lines',
'AK Panki',
'AK Bareilly',
'AK Jhansi',
'AK Kakadeo',
'AK Mukherjee',
'AK Rooma',
'AK Swaroop Nagar',
'AK Vrindavan',
'AH Ghaziabad')






select * from course
where branch = 'RAIGANJ'


select * from groups
where branch = 'RISHRA'

insert into groups 
values
('Mahestala' , 'D', 'Grade 2' , 'NGS WB-Mahestala-G2-D-25-26')

select * from grade_identify
WHERE GRADEID = 2


insert into grade_identify 
values
(2 , 'Bal-vatika-1') ,
(2 , 'Bal-vatika 1') ,
(2 , 'Bal-vatika1') ,
(2 , 'Bal-vatika-I') ,
(2 , 'Bal-vatikaI') ,
(2 , 'Bal-vatika I') ,
(2 , 'Bal vatika-1') ,
(2 , 'Bal vatika 1') ,
(2 , 'Bal vatika1') ,
(3 , 'Bal-vatika-2') ,
(3 , 'Bal-vatika 2') ,
(3 , 'Bal-vatika2') ,
(3 , 'Bal-vatika-II') ,
(3 , 'Bal-vatikaII') ,
(3 , 'Bal-vatika II') ,
(3 , 'Bal vatika-2') ,
(3 , 'Bal vatika 2') ,
(3 , 'Bal vatika2') 


INSERT INTO GRADE_IDENTIFY 
VALUES
(4 , 'Bal-vatika-3') ,
(4 , 'Bal-vatika 3') ,
(4 , 'Bal-vatika3') ,
(4 , 'Bal-vatika-III') ,
(4 , 'Bal-vatikaIII') ,
(4 , 'Bal-vatika III') ,
(4 , 'Bal vatika-3') ,
(4 , 'Bal vatika 3') ,
(4 , 'Bal vatika3') 


SELECT * FROM GRADE_IDENTIFY 
WHERE GRADEALLNAMES = 'kgi'

INSERT INTO GRADE_IDENTIFY
VALUES
( 3 , 'KGI'),
(3 , 'KG I'),
(4 , 'KG II') 



INSERT INTO grade_identify
VALUES
( 2 , 'E-KIDZ-N') ,
( 2 , 'E-KIDZN' ) ,
( 2 , 'EKIDZ-N') ,
( 2 , 'E-KIDZ- N') 

insert into grade_identify
values( 3 , 'PP-1') ,
(3 , 'PP I') ,
(3 , 'PP-I') ,
(4 ,'PP-2') ,
(4, 'PP II') ,
(4 , 'PP-II')


insert into grade_identify
values(3 , 'E-KIDZ-PP1'),
(4, 'E-KIDZ-PP2') , 
(5 , 'E-CHAMPS-1') , 
(6 , 'II')

insert into grade_identify
values(3 , 'EKIDZ-PP1'),
(3 , 'EKIDZPP1'),
(3 , 'E-KIDZPP1')


INSERT INTO GRADE_IDENTIFY
VALUES
(2 , 'CEY-1') , 
(2 , 'CEY1') ,
(2 , 'CEY 1') ,
(2 , 'CEY-I') , 
(2 , 'CEYI') ,
(2 , 'CEY I') ,
(3 , 'CEY-2') ,
(3 , 'CEY2') ,
(3 , 'CEY 2') ,
(3 , 'CEY-II') ,
(3 , 'CEYII') ,
(3 , 'CEY II') , 
(4 , 'CEY 3') ,
(4 , 'CEY3') ,
(4 , 'CEY-3') ,
(4 , 'CEY-III') ,
(4 , 'CEYIII') ,
(4 , 'CEY III') 



	insert into grade_identify 
	values
	(7 , '3' ) , 
	(8 , '4' ) , 
	(9 , '5' ) , 
	(10 , '6' ) ,
	(11 , '7' ) ,
	( 12 , '8')

	INSERT INTO GROUPS 
	VALUES
	( 'CMIS'  , 'C' , 'NNLP 2' , 'CMIS-LC-NNLP 2-C-25-26' )

	update groups
	set groups = 'CMIS-LC-NNLP 2-B-25-26'
	where branch = 'CMIS' 
	and Section = 'B' 
	and grade = 'NNLP 2'
	And groups = 'CMIS-LC-NNLP 2-A-25-26'


	select * from groups


insert into grade_identify
values(5 , 'I')



SELECT * FROM grade_identify
WHERE GRADEID = 05


insert into grade_identify
values(5 , 'i')

insert into grade_identify
values(6 , 'ii')

insert into grade_identify
values(7, 'iii')


insert into grade_identify
values(8, 'iv')


insert into grade_identify
values(9, 'v')


insert into grade_identify
values(10, 'vi')

insert into grade_identify
values(11, 'vii')


insert into grade_identify
values(12, 'viii')

insert into grade_identify
values(2, 'EE')


insert into grade_identify
values(3, 'EE1')

insert into grade_identify
values(3, 'EE 1')

insert into grade_identify
values(3, 'EE-1')

insert into grade_identify
values(3, 'EE I')

insert into grade_identify
values(3, 'EE-I')

insert into grade_identify
values(3, 'EEI')





insert into grade_identify
values(4, 'EE2')


insert into grade_identify
values(4, 'EE 2')


insert into grade_identify
values(4, 'EE-2')


insert into grade_identify
values(4, 'EE-II')


insert into grade_identify
values(4, 'EEII')


insert into grade_identify
values(4, 'EE II')








update groups
set grade = 'PP1'
WHERE GRADE = 'LKG'

update groups
set grade = 'PP2'
WHERE GRADE = 'UKG'


INSERT INTO GROUPS
VALUES
('Raghunathpur' , 'A' , 'PP1' , 'NGS WB-Raghunathpur-PP1-A-25-26'),
('Raghunathpur' , 'B' , 'PP1' , 'NGS WB-Raghunathpur-PP1-B-25-26')

  update course 
  set branch= 'AWS-HYD'
  where branch = 'AWS-Heydrabad'
  
    update groups 
  set branch= 'AWS-HYD'
  where branch = 'AWS-Heydrabad'

    update course 
  set branch= 'AWS-VJA'
  where branch = 'AWS-Vijaywada'

      update groups 
  set branch= 'AWS-VJA'
  where branch = 'AWS-Vijaywada'

    update course 
  set branch= 'AKW-HYD'
  where branch = 'AKW-Heydrabad'

      update groups 
  set branch= 'AKW-HYD'
  where branch = 'AKW-Heydrabad'


update grade_identify
set gradeallnames = 'PP1'
where GRADEname = 'NNLP 3'

insert into grade_identify 
VALUES
( 6 ,  'E-CHAMPS-2' )

    INSERT INTO GRADE_IDENTIFY 
    VALUES
    (3, 'E-KIDS-PP1') , 
    (4 , 'E-KIDS-PP2')




SELECT * FROM COURSE
WHERE BRANCH = 'RAGHUNATHPUR' 

SELECT * from groups
WHERE BRANCH = 'RAGHUNATHPUR'

select *, LEN(GRADEALLNAMES)  from grade_identify

Insert into grade_identify 
values( 3 , 'LKG')

INSERT INTO grade_identify
values( 2 , 'Nur' )


INSERT INTO grade_identify
values( 5 , 'CLASS 1' ) ,
( 5 , 'CLASS1' ) , 
( 5 , 'CLASS-1' ) ,
( 5 , 'CLASS I' ) ,
( 5 , 'CLASS-I' ), 
( 5 , 'CLASSI' ) ,
( 6 , 'CLASS 2' ) , 
( 6 , 'CLASS2' ) , 
( 6 , 'CLASS-2' ) ,
( 6 , 'CLASS II' ) , 
( 6 , 'CLASS-II' ) ,
( 6 , 'CLASSII' ) 



select * from groups

UPDATE Groups
set grade = 'NNLP 3'
WHERE GRADE = 'PP1'

UPDATE Groups
set grade = 'NNLP 4'
WHERE GRADE = 'PP2'


update groups 
set grade = 'Grade 1'
where grade = 'G1'

update groups 
set grade = 'Grade 2'
where grade = 'G2'

update groups 
set grade = 'Grade 3'
where grade = 'G3'

update groups 
set grade = 'Grade 4'
where grade = 'G4'

update groups 
set grade = 'Grade 5'
where grade = 'G5'

update groups 
set grade = 'Grade 6'
where grade = 'G6'

update groups 
set grade = 'Grade 7'
where grade = 'G7'

update groups 
set grade = 'Grade 8'
where grade = 'G8'

update groups
set branch = 'Gurramguda'
where groups = 'BPS-Gurramguda-LC-NNLP 2-PIONEER-25-26'
and section = 'pioneer' 
and grade = 'nnlp 2'
and branch  = 'attapur'

update groups
set branch = 'Gurramguda'
where groups = 'BPS-Gurramguda-LC-NNLP 2-VISIONARY-25-26'
and section = 'VISIONARY' 
and grade = 'nnlp 2'
and branch  = 'attapur'


update groups
set branch = 'Gurramguda'
where groups = 'BPS-Gurramguda-LC-NNLP 3-PIONEER-25-26'
and section = 'pioneer' 
and grade = 'nnlp 3'
and branch  = 'attapur'

update groups
set branch = 'Gurramguda'
where groups = 'BPS-Gurramguda-LC-NNLP 3-VISIONARY-25-26'
and section = 'VISIONARY' 
and grade = 'nnlp 3'
and branch  = 'attapur'

update groups
set branch = 'Gurramguda'
where groups = 'BPS-Gurramguda-LC-NNLP 4-PIONEER-25-26'
and section = 'pioneer' 
and grade = 'nnlp 4'
and branch  = 'attapur'

update groups
set branch = 'Gurramguda'
where groups = 'BPS-Gurramguda-LC-NNLP 4-VISIONARY-25-26'
and section = 'VISIONARY' 
and grade = 'nnlp 4'
and branch  = 'attapur'

update groups
set branch = 'Tirutani'
where branch = 'Tiruttani'

  SELECT * FROM GROUPS 
  WHERE BRANCH  = 'basmat'
  or branch = 'gurramguda'



  select * from groups
 select * from groups

 --andal

 update groups 
 set branch = 'NGS-(WB) -  Andal'
 where branch = 'Andal'

 update course 
 set branch = 'NGS-(WB) -  Andal'
 where branch = 'Andal'


 begin transaction 

-- Andul
UPDATE groups SET branch = 'NGS-(WB) -  Andul' WHERE branch = 'Andul';
UPDATE course SET branch = 'NGS-(WB) -  Andul' WHERE branch = 'Andul';

-- Asansol
UPDATE groups SET branch = 'NGS-(WB) -  Asansol' WHERE branch = 'Asansol';
UPDATE course SET branch = 'NGS-(WB) -  Asansol' WHERE branch = 'Asansol';

-- Bally
UPDATE groups SET branch = 'NGS-(WB) -  Bally' WHERE branch = 'Bally';
UPDATE course SET branch = 'NGS-(WB) -  Bally' WHERE branch = 'Bally';

-- Barasat
UPDATE groups SET branch = 'NGS-(WB) -  Barasat' WHERE branch = 'Barasat';
UPDATE course SET branch = 'NGS-(WB) -  Barasat' WHERE branch = 'Barasat';

-- Basirhat (from Bashirhaat)
UPDATE groups SET branch = 'NGS-(WB) - Basirhat' WHERE branch = 'Bashirhaat';
UPDATE course SET branch = 'NGS-(WB) - Basirhat' WHERE branch = 'Bashirhaat';

-- Berhampore (from Baharampur)
UPDATE groups SET branch = 'NGS-(WB) - Berhampore' WHERE branch = 'Baharampur';
UPDATE course SET branch = 'NGS-(WB) - Berhampore' WHERE branch = 'Baharampur';

-- Burdwan
UPDATE groups SET branch = 'NGS-(WB) -  Burdwan' WHERE branch = 'Burdwan';
UPDATE course SET branch = 'NGS-(WB) -  Burdwan' WHERE branch = 'Burdwan';

-- Contai
UPDATE groups SET branch = 'NGS-(WB) -  Contai' WHERE branch = 'Contai';
UPDATE course SET branch = 'NGS-(WB) -  Contai' WHERE branch = 'Contai';

-- Darjeeling
UPDATE groups SET branch = 'NGS-(WB) -Darjeeling' WHERE branch = 'Darjeeling';
UPDATE course SET branch = 'NGS-(WB) -Darjeeling' WHERE branch = 'Darjeeling';

-- Durgapur
UPDATE groups SET branch = 'NGS-(WB) - Durgapur' WHERE branch = 'Durgapur';
UPDATE course SET branch = 'NGS-(WB) - Durgapur' WHERE branch = 'Durgapur';

-- Fulbari
UPDATE groups SET branch = 'NGS-(WB) -  Fulbari' WHERE branch = 'Fulbari';
UPDATE course SET branch = 'NGS-(WB) -  Fulbari' WHERE branch = 'Fulbari';

-- Haldia
UPDATE groups SET branch = 'NGS-(WB) -  Haldia' WHERE branch = 'Haldia';
UPDATE course SET branch = 'NGS-(WB) -  Haldia' WHERE branch = 'Haldia';

-- Howrah
UPDATE groups SET branch = 'NGS-(WB) -  Howrah' WHERE branch = 'Howrah';
UPDATE course SET branch = 'NGS-(WB) -  Howrah' WHERE branch = 'Howrah';

-- Kalimpong (assumed Kalimpong 1)
UPDATE groups SET branch = 'NGS-(WB) -  Kalimpong 1' WHERE branch = 'Kalimpong';
UPDATE course SET branch = 'NGS-(WB) -  Kalimpong 1' WHERE branch = 'Kalimpong';

-- Kalimpong 2
UPDATE groups SET branch = 'NGS-(WB) -  Kalimpong 2' WHERE branch = 'Kalimpong 2';
UPDATE course SET branch = 'NGS-(WB) -  Kalimpong 2' WHERE branch = 'Kalimpong 2';

-- Kalyani town
UPDATE groups SET branch = 'NGS-(WB) -  Kalyani town' WHERE branch = 'Kalyani Town';
UPDATE course SET branch = 'NGS-(WB) -  Kalyani town' WHERE branch = 'Kalyani Town';

-- Krishnanagar
UPDATE groups SET branch = 'NGS-(WB) -  Krishnanagar' WHERE branch = 'Krishnanagar';
UPDATE course SET branch = 'NGS-(WB) -  Krishnanagar' WHERE branch = 'Krishnanagar';

-- Mahestala
UPDATE groups SET branch = 'NGS-(WB) -  Mahestala' WHERE branch = 'Mahestala';
UPDATE course SET branch = 'NGS-(WB) -  Mahestala' WHERE branch = 'Mahestala';

-- Newtown
UPDATE groups SET branch = 'NGS-(WB) -  Newtown' WHERE branch = 'Newtown';
UPDATE course SET branch = 'NGS-(WB) -  Newtown' WHERE branch = 'Newtown';

-- Park Circus
UPDATE groups SET branch = 'NGS-(WB) -  Park Circus' WHERE branch = 'Park Circus';
UPDATE course SET branch = 'NGS-(WB) -  Park Circus' WHERE branch = 'Park Circus';

-- Raghunathpur
UPDATE groups SET branch = 'NGS-(WB) -  Raghunathpur' WHERE branch = 'Raghunathpur';
UPDATE course SET branch = 'NGS-(WB) -  Raghunathpur' WHERE branch = 'Raghunathpur';

-- Raiganj
UPDATE groups SET branch = 'NGS-(WB) -  Raiganj' WHERE branch = 'Raiganj';
UPDATE course SET branch = 'NGS-(WB) -  Raiganj' WHERE branch = 'Raiganj';

-- Ranaghat
UPDATE groups SET branch = 'NGS-(WB) -  Ranaghat' WHERE branch = 'Ranaghat';
UPDATE course SET branch = 'NGS-(WB) -  Ranaghat' WHERE branch = 'Ranaghat';

-- Rishra
UPDATE groups SET branch = 'NGS-(WB) -  Rishra' WHERE branch = 'Rishra';
UPDATE course SET branch = 'NGS-(WB) -  Rishra' WHERE branch = 'Rishra';

-- Siliguri
UPDATE groups SET branch = 'NGS-(WB) -  Siliguri' WHERE branch = 'Siliguri';
UPDATE course SET branch = 'NGS-(WB) -  Siliguri' WHERE branch = 'Siliguri';

-- Sodepur
UPDATE groups SET branch = 'NGS-(WB) -  Sodepur (kalyani Express)' WHERE branch = 'Sodepur';
UPDATE course SET branch = 'NGS-(WB) -  Sodepur (kalyani Express)' WHERE branch = 'Sodepur';

-- Sonarpur
UPDATE groups SET branch = 'NGS-(WB) -  Sonarpur' WHERE branch = 'Sonarpur';
UPDATE course SET branch = 'NGS-(WB) -  Sonarpur' WHERE branch = 'Sonarpur';

COMMIT


BEGIN TRANSACTION 
-- Andal
UPDATE groups SET branch = 'NGS-(WB) -  Andal' WHERE branch = 'NGS-(WB) -  Andal';
UPDATE course SET branch = 'NGS-(WB) -  Andal' WHERE branch = 'NGS-(WB) -  Andal';

-- Andul
UPDATE groups SET branch = 'Andul' WHERE branch = 'NGS-(WB) -  Andul';
UPDATE course SET branch = 'Andul' WHERE branch = 'NGS-(WB) -  Andul';

-- Asansol
UPDATE groups SET branch = 'Asansol' WHERE branch = 'NGS-(WB) -  Asansol';
UPDATE course SET branch = 'Asansol' WHERE branch = 'NGS-(WB) -  Asansol';

-- Bally
UPDATE groups SET branch = 'Bally' WHERE branch = 'NGS-(WB) -  Bally';
UPDATE course SET branch = 'Bally' WHERE branch = 'NGS-(WB) -  Bally';

-- Barasat
UPDATE groups SET branch = 'Barasat' WHERE branch = 'NGS-(WB) -  Barasat';
UPDATE course SET branch = 'Barasat' WHERE branch = 'NGS-(WB) -  Barasat';

-- Bashirhaat (Basirhat)
UPDATE groups SET branch = 'Bashirhaat' WHERE branch = 'NGS-(WB) - Basirhat';
UPDATE course SET branch = 'Bashirhaat' WHERE branch = 'NGS-(WB) - Basirhat';

-- Baharampur (Berhampore)
UPDATE groups SET branch = 'Baharampur' WHERE branch = 'NGS-(WB) - Berhampore';
UPDATE course SET branch = 'Baharampur' WHERE branch = 'NGS-(WB) - Berhampore';

-- Burdwan
UPDATE groups SET branch = 'Burdwan' WHERE branch = 'NGS-(WB) -  Burdwan';
UPDATE course SET branch = 'Burdwan' WHERE branch = 'NGS-(WB) -  Burdwan';

-- Contai
UPDATE groups SET branch = 'Contai' WHERE branch = 'NGS-(WB) -  Contai';
UPDATE course SET branch = 'Contai' WHERE branch = 'NGS-(WB) -  Contai';

-- Darjeeling
UPDATE groups SET branch = 'Darjeeling' WHERE branch = 'NGS-(WB) -Darjeeling';
UPDATE course SET branch = 'Darjeeling' WHERE branch = 'NGS-(WB) -Darjeeling';

-- Durgapur
UPDATE groups SET branch = 'Durgapur' WHERE branch = 'NGS-(WB) - Durgapur';
UPDATE course SET branch = 'Durgapur' WHERE branch = 'NGS-(WB) - Durgapur';

-- Fulbari
UPDATE groups SET branch = 'Fulbari' WHERE branch = 'NGS-(WB) -  Fulbari';
UPDATE course SET branch = 'Fulbari' WHERE branch = 'NGS-(WB) -  Fulbari';

-- Haldia
UPDATE groups SET branch = 'Haldia' WHERE branch = 'NGS-(WB) -  Haldia';
UPDATE course SET branch = 'Haldia' WHERE branch = 'NGS-(WB) -  Haldia';

-- Howrah
UPDATE groups SET branch = 'Howrah' WHERE branch = 'NGS-(WB) -  Howrah';
UPDATE course SET branch = 'Howrah' WHERE branch = 'NGS-(WB) -  Howrah';

-- Kalimpong
UPDATE groups SET branch = 'Kalimpong' WHERE branch = 'NGS-(WB) -  Kalimpong 1';
UPDATE course SET branch = 'Kalimpong' WHERE branch = 'NGS-(WB) -  Kalimpong 1';

-- Kalimpong 2
UPDATE groups SET branch = 'Kalimpong 2' WHERE branch = 'NGS-(WB) -  Kalimpong 2';
UPDATE course SET branch = 'Kalimpong 2' WHERE branch = 'NGS-(WB) -  Kalimpong 2';

-- Kalyani Town
UPDATE groups SET branch = 'Kalyani Town' WHERE branch = 'NGS-(WB) -  Kalyani town';
UPDATE course SET branch = 'Kalyani Town' WHERE branch = 'NGS-(WB) -  Kalyani town';

-- Krishnanagar
UPDATE groups SET branch = 'Krishnanagar' WHERE branch = 'NGS-(WB) -  Krishnanagar';
UPDATE course SET branch = 'Krishnanagar' WHERE branch = 'NGS-(WB) -  Krishnanagar';

-- Mahestala
UPDATE groups SET branch = 'Mahestala' WHERE branch = 'NGS-(WB) -  Mahestala';
UPDATE course SET branch = 'Mahestala' WHERE branch = 'NGS-(WB) -  Mahestala';

-- Newtown
UPDATE groups SET branch = 'Newtown' WHERE branch = 'NGS-(WB) -  Newtown';
UPDATE course SET branch = 'Newtown' WHERE branch = 'NGS-(WB) -  Newtown';

-- Park Circus
UPDATE groups SET branch = 'Park Circus' WHERE branch = 'NGS-(WB) -  Park Circus';
UPDATE course SET branch = 'Park Circus' WHERE branch = 'NGS-(WB) -  Park Circus';

-- Raghunathpur
UPDATE groups SET branch = 'Raghunathpur' WHERE branch = 'NGS-(WB) -  Raghunathpur';
UPDATE course SET branch = 'Raghunathpur' WHERE branch = 'NGS-(WB) -  Raghunathpur';

-- Raiganj
UPDATE groups SET branch = 'Raiganj' WHERE branch = 'NGS-(WB) -  Raiganj';
UPDATE course SET branch = 'Raiganj' WHERE branch = 'NGS-(WB) -  Raiganj';

-- Ranaghat
UPDATE groups SET branch = 'Ranaghat' WHERE branch = 'NGS-(WB) -  Ranaghat';
UPDATE course SET branch = 'Ranaghat' WHERE branch = 'NGS-(WB) -  Ranaghat';

-- Rishra
UPDATE groups SET branch = 'Rishra' WHERE branch = 'NGS-(WB) -  Rishra';
UPDATE course SET branch = 'Rishra' WHERE branch = 'NGS-(WB) -  Rishra';

-- Siliguri
UPDATE groups SET branch = 'Siliguri' WHERE branch = 'NGS-(WB) -  Siliguri';
UPDATE course SET branch = 'Siliguri' WHERE branch = 'NGS-(WB) -  Siliguri';

-- Sodepur
UPDATE groups SET branch = 'Sodepur' WHERE branch = 'NGS-(WB) -  Sodepur (kalyani Express)';
UPDATE course SET branch = 'Sodepur' WHERE branch = 'NGS-(WB) -  Sodepur (kalyani Express)';

-- Sonarpur
UPDATE groups SET branch = 'Sonarpur' WHERE branch = 'NGS-(WB) -  Sonarpur';
UPDATE course SET branch = 'Sonarpur' WHERE branch = 'NGS-(WB) -  Sonarpur';

COMMIT 



begin transaction 

-- AK Branches
UPDATE groups SET branch = 'AK Bareilly' WHERE branch = 'Allen Kids Bareilly';
UPDATE course SET branch = 'AK Bareilly' WHERE branch = 'Allen Kids Bareilly';

UPDATE groups SET branch = 'AK Kakadeo' WHERE branch = 'Allen Kids Kakadeo';
UPDATE course SET branch = 'AK Kakadeo' WHERE branch = 'Allen Kids Kakadeo';

UPDATE groups SET branch = 'AK Mukherjee Vihar' WHERE branch = 'Allen Kids Mukherjee Vihar';
UPDATE course SET branch = 'AK Mukherjee Vihar' WHERE branch = 'Allen Kids Mukherjee Vihar';

UPDATE groups SET branch = 'AK Rooma' WHERE branch = 'Allen Kids Rooma';
UPDATE course SET branch = 'AK Rooma' WHERE branch = 'Allen Kids Rooma';

UPDATE groups SET branch = 'AK Swaroop Nagar' WHERE branch = 'Allen Kids Swaroop Nagar';
UPDATE course SET branch = 'AK Swaroop Nagar' WHERE branch = 'Allen Kids Swaroop Nagar';

UPDATE groups SET branch = 'AK Vrindavan/Lucknow' WHERE branch = 'Allen Kids Vrindavan/Lucknow';
UPDATE course SET branch = 'AK Vrindavan/Lucknow' WHERE branch = 'Allen Kids Vrindavan/Lucknow';

-- AH Branches
UPDATE groups SET branch = 'AH Agra' WHERE branch = 'Allenhouse Agra';
UPDATE course SET branch = 'AH Agra' WHERE branch = 'Allenhouse Agra';

-- AH Branches
UPDATE groups SET branch = 'AH Agra' WHERE branch = 'Allenhouse Public School Agra';
UPDATE course SET branch = 'AH Agra' WHERE branch = 'Allenhouse Public School Agra';


UPDATE groups SET branch = 'AH Ghaziabad' WHERE branch = 'Allenhouse Ghaziabad';
UPDATE course SET branch = 'AH Ghaziabad' WHERE branch = 'Allenhouse Ghaziabad';

UPDATE groups SET branch = 'AH Jhansi' WHERE branch = 'Allenhouse Public School Jhansi';
UPDATE course SET branch = 'AH Jhansi' WHERE branch = 'Allenhouse Public School Jhansi';

UPDATE groups SET branch = 'AH Jhansi' WHERE branch = 'Allen Kids Jhansi';
UPDATE course SET branch = 'AH Jhansi' WHERE branch = 'Allen Kids Jhansi';


UPDATE groups SET branch = 'AH Khalasi Lines' WHERE branch = 'Allenhouse Public School Khalasi Lines';
UPDATE course SET branch = 'AH Khalasi Lines' WHERE branch = 'Allenhouse Public School Khalasi Lines';

UPDATE groups SET branch = 'AH Panki' WHERE branch = 'Allenhouse Public School Panki';
UPDATE course SET branch = 'AH Panki' WHERE branch = 'Allenhouse Public School Panki';

-- DPS Branches
UPDATE groups SET branch = 'DPS Amrapali' WHERE branch = 'DPS Amrapali';
UPDATE course SET branch = 'DPS Amrapali' WHERE branch = 'DPS Amrapali';

UPDATE groups SET branch = 'DPS Bareilly' WHERE branch = 'DPS Bareilly';
UPDATE course SET branch = 'DPS Bareilly' WHERE branch = 'DPS Bareilly';

UPDATE groups SET branch = 'DPS Eldeco' WHERE branch = 'DPS Eldeco';
UPDATE course SET branch = 'DPS Eldeco' WHERE branch = 'DPS Eldeco';

UPDATE groups SET branch = 'DPS Gomti Nagar' WHERE branch = 'DPS Gomti Nagar';
UPDATE course SET branch = 'DPS Gomti Nagar' WHERE branch = 'DPS Gomti Nagar';

UPDATE groups SET branch = 'DPS Indira Nagar' WHERE branch = 'DPS Indira Nagar';
UPDATE course SET branch = 'DPS Indira Nagar' WHERE branch = 'DPS Indira Nagar';

UPDATE groups SET branch = 'DPS Jankipuram' WHERE branch = 'DPS Jankipuram';
UPDATE course SET branch = 'DPS Jankipuram' WHERE branch = 'DPS Jankipuram';

UPDATE groups SET branch = 'DPS Kalyanpur' WHERE branch = 'DPS Kalyanpur';
UPDATE course SET branch = 'DPS Kalyanpur' WHERE branch = 'DPS Kalyanpur';

UPDATE groups SET branch = 'DPS Saharanpur' WHERE branch = 'DPS Saharanpur';
UPDATE course SET branch = 'DPS Saharanpur' WHERE branch = 'DPS Saharanpur';

UPDATE groups SET branch = 'DPS Unnao' WHERE branch = 'DPS Unnao';
UPDATE course SET branch = 'DPS Unnao' WHERE branch = 'DPS Unnao';
commit 

SELECT * FROM COURSE;
SELECT * FROM GROUPS;


--CHANGING THE TY
SELECT * FROM grade_names

UPDATE GRADE_NAMES
SET GRADENAME = 'NNLP 1'
WHERE GRADENAME = 'Pre Nursery'

UPDATE GRADE_NAMES
SET GRADENAME = 'NNLP 2'
WHERE GRADENAME = 'Nursery'

UPDATE GRADE_NAMES
SET GRADENAME = 'NNLP 3'
WHERE GRADENAME = 'PP1'

UPDATE GRADE_NAMES
SET GRADENAME = 'NNLP 4'
WHERE GRADENAME = 'PP2'










---deleting and inseting the rows 

SELECT * FROM COURSE
WHERE BRANCH = 'allen kids bareilly'
 

delete  from course
and branch = 'Allen Kids Bareilly' 
and section = 'Nursery'

insert into course VALUES
('SH-LC-Nur-25-26' , 'Allen Kids Bareilly' , 'PP1' )


delete from course
where courses = 'SH-LC-Prep-25-26' 
and branch = 'Allen Kids Bareilly' 
and section = 'PP2'

insert into course values
('SH-LC-Prep-25-26' , 'Allen Kids Bareilly' , 'PP2' )

update course
set section = 'NNLP 1'
where courses = 'SH-LC-PG1-25-26'

update course
set section = 'NNLP 2'
where courses = 'SH-LC-PG2-25-26'

update course
set section = 'NNLP 3'
where courses = 'SH-LC-Nur-25-26'

update course
set section = 'NNLP 4'
where courses = 'SH-LC-Prep-25-26'


DELETE FROM COURSE
WHERE COURSES = 'SH-LC-PG2-25-26' 
AND BRANCH = 'ALLEN KIDS BAREILLY'
AND SECTION = 'Nursery'

insert into course values
('SH-LC-PG2-25-26' , 'Allen Kids Bareilly' , 'Nursery' )

--here is have done the changes from nursery to nnlp in all the branches of ngs wb and the little leaders 
--Grade NNLP 2 in both of these school were names as nursery in the course like NGS-WB-Nursery-25-26 but the course under the lms was NGS-WB-NNLP 2-25-26
--So the changes were nessecory so i made those



begin transaction 

UPDATE COURSE
SET COURSES = 'NGS WB-LC-NNLP 2-25-26'
WHERE BRANCH IN ('Andal' ,
'Andul',
'Asansol',
'Baharampur',
'Bally',
'Barasat',
'Bashirhaat',
'Burdwan',
'Contai',
'Darjeeling',
'Durgapur',
'Fulbari',
'Haldia',
'Howrah',
'Kalimpong',
'Kalimpong 2',
'Kalyani Town',
'Krishnanagar',
'Mahestala',
'Newtown',
'Park Circus',
'Raghunathpur',
'Raiganj',
'Rishra',
'Siliguri',
'Sodepur',
'Sonarpur',
'Ranaghat')and section = 'NNLP 2'
commit

begin transaction

UPDATE COURSE
SET COURSES = 'NGS WB-LC-NNLP 3-25-26'
WHERE BRANCH IN ('Andal' ,
'Andul',
'Asansol',
'Baharampur',
'Bally',
'Barasat',
'Bashirhaat',
'Burdwan',
'Contai',
'Darjeeling',
'Durgapur',
'Fulbari',
'Haldia',
'Howrah',
'Kalimpong',
'Kalimpong 2',
'Kalyani Town',
'Krishnanagar',
'Mahestala',
'Newtown',
'Park Circus',
'Raghunathpur',
'Raiganj',
'Rishra',
'Siliguri',
'Sodepur',
'Sonarpur',
'Ranaghat')and section = 'NNLP 3'

UPDATE COURSE
SET COURSES = 'NGS WB-LC-NNLP 4-25-26'
WHERE BRANCH IN ('Andal' ,
'Andul',
'Asansol',
'Baharampur',
'Bally',
'Barasat',
'Bashirhaat',
'Burdwan',
'Contai',
'Darjeeling',
'Durgapur',
'Fulbari',
'Haldia',
'Howrah',
'Kalimpong',
'Kalimpong 2',
'Kalyani Town',
'Krishnanagar',
'Mahestala',
'Newtown',
'Park Circus',
'Raghunathpur',
'Raiganj',
'Rishra',
'Siliguri',
'Sodepur',
'Sonarpur',
'Ranaghat')and section = 'NNLP 4'
commit

SELECT * FROM COURSE
WHERE BRANCH IN ('SODEPUR' , 'SOONARPUR' , 'SILIGURI')


commit

SELECT * FROM MASTER_cREDENTIALS_FILE_L2
WHERE [Admission Number / Unique Identification Number ] = '4573325'

SELECT * FROM COURSE
WHERE BRANCH = 'ASANSOL'

SELECT * FROM GROUPS
WHERE BRANCH = 'ASANSOL'

SELECT * FROM GRADE_IDENTIFY
WHERE GRADEID = 6


select * from course
where section = 'nnlp 3'


begin transaction 

update course
set courses = 'LL-LC-NNLP 2-25-26'
where branch in 
(
'Faridabad Sec 89', 
'Gaur City',
'Gaur City 2',
'Gurugram Sec 15',
'Gurugram Sec 48',
'Gurugram Sec 54',
'Sector 70 Gurugram',
'Kalka Ji',
'Kismatpur, Hyderabad',
'Madhavnagar Gwalior',
'Malviyanagar Delhi',
'Nehru Nagar Ghaziabad',
'Nirala Estate',
'Sector 95 A Gurugram',
'Indrapuram',
'Noida Sec 116',
'Noida Sec 61',
'Rajnagar Extension',
'Rajnagar Ghaziabad',
'Vasundhra Sec 11',
'Manikonda (HYD)',
'Sector 89 B Gurugram')
and section = 'nnlp 2'

commit
----now making corrections in  the groups table 


SELECT * FROM GRADE_IDENTIFY
WHERE GRADEID =12

SELECT * FROM grade_names


DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 12 AND GRADEALLNAMES = 'VIII'

INSERT INTO GRADE_IDENTIFY 
VALUES 
( 1 , 'PG 1' ) ,
( 1 , 'PG-1' ) ,
(1 , 'PG1' ) ,
( 1 , 'PG I') ,
( 1 , 'PG-I') , 
( 2 , 'PG2' ) ,
( 2 , 'PG 2' ) ,
(2, 'PG-2' ) ,
(2 , 'PG II') , 
( 2 , 'PG-II')


SELECT * FROM GROUPS
WHERE BRANCH = 'CMIS'

UPDATE GROUPS
SET GROUPS = 'CMIS-LC-NNLP 2-A-25-26'
WHERE BRANCH = 'CMIS'
AND GRADE = 'NNLP 2'

UPDATE GROUPS
SET GROUPS = 'CMIS-LC-NNLP 3-A-25-26'
WHERE BRANCH = 'CMIS'
AND GRADE = 'NNLP 3'

UPDATE GROUPS
SET GROUPS = 'CMIS-LC-NNLP 3-B-25-26'
WHERE BRANCH = 'CMIS'
AND SECTION = 'B'
AND GRADE = 'NNLP 3'

UPDATE GROUPS
SET GROUPS = 'CMIS-LC-NNLP 3-C-25-26'
WHERE BRANCH = 'CMIS'
AND SECTION = 'C'
AND GRADE = 'NNLP 3'


UPDATE GROUPS
SET GROUPS = 'CMIS-LC-NNLP 4-A-25-26'
WHERE BRANCH = 'CMIS'
AND SECTION = 'A'
AND GRADE = 'NNLP 4'
UPDATE GROUPS
SET GROUPS = 'CMIS-LC-NNLP 4-B-25-26'
WHERE BRANCH = 'CMIS'
AND SECTION = 'B'
AND GRADE = 'NNLP 4'

UPDATE GROUPS
SET GROUPS = 'CMIS-LC-NNLP 4-C-25-26'
WHERE BRANCH = 'CMIS'
AND SECTION = 'C'
AND GRADE = 'NNLP 4'


select * from course
where branch = 'cmis'

UPDATE Course
SET courses = 'CMIS-LC-NNLP 2-25-26'
WHERE BRANCH = 'CMIS'
AND section = 'NNLP 2'

UPDATE Course
SET courses = 'CMIS-LC-NNLP 3-25-26'
WHERE BRANCH = 'CMIS'
AND section = 'NNLP 3'

UPDATE Course
SET courses = 'CMIS-LC-NNLP 4-25-26'
WHERE BRANCH = 'CMIS'
AND section = 'NNLP 4'




update groups
set grade = 'NNLP 1'
where branch = 'Allen Kids Bareilly'  
and section = 'A'
and groups = 'SH-Allen Bareilly-PG-1-A-25-26'

update groups
set grade = 'NNLP 2'
where branch = 'Allen Kids Bareilly'  
AND section = 'A'
and groups = 'SH-Allen Bareilly-PG2-A-25-26'

update groups
set grade = 'NNLP 2'
where branch = 'Allen Kids Bareilly'  
AND section = 'B'
and groups = 'SH-Allen Bareilly-PG2-B-25-26'


update groups
set grade = 'NNLP 3'
where branch = 'Allen Kids Bareilly'  
AND section = 'A'
and groups = 'SH-Allen Bareilly-Nursery-A-25-26'

update groups
set grade = 'NNLP 3'
where branch = 'Allen Kids Bareilly'  
AND section = 'B'
and groups = 'SH-Allen Bareilly-Nursery-B-25-26'

update groups
set grade = 'NNLP 4'
where branch = 'Allen Kids Bareilly'  
AND section = 'A'
and groups = 'SH-Allen Bareilly-Prep-A-25-26'

update groups
set grade = 'NNLP 4'
where branch = 'Allen Kids Bareilly'  
AND section = 'B'
and groups = 'SH-Allen Bareilly-Prep-B-25-26'






select * from course
SELECT * FROM GRADE_IDENTIFY
SELECT * FROM GRADE_NAMES ORDER BY GRADEID
SELECT * FROM GROUPS
SELECT * FROM school_branches

INSERT INTO school_branches
values
('CMIS' , 'CMIS'  ) 


select * FROM master_credentials_file_l


---creating table for grades

create table grade_names
(gradeid int  , 
gradename varchar (150) ) 

insert into grade_names(gradeid , gradename)
values( 1 , 'NNLP 1'),
(2 , 'NNLP 2') , 
( 3 , 'NNLP 3' ) , 
( 4 , 'NNLP 4' ) , 
( 41 , 'NNLP4/L1') , 
(42 , 'NNLP4/L2' ) , 
(5 , 'Grade 1' ) , 
( 6 , 'Grade 2') , 
( 7 , 'Grade 3') , 
( 8 , 'Grade 4') , 
( 9 , 'Grade 5' ) ,
(10 , 'Grade 6' ) , 
( 11 , 'Grade 7') , 
( 12 , 'Grade 8' )

create table grade_identify
(gradeid int , 
gradeallnames varchar ( 200));



insert into grade_identify 
(gradeid , gradeallnames)
values
( 1 , 'NNLP-1' ) ,
( 1 , 'NNLP 1' ) ,
( 1 , 'NNLP1' ) , 
( 1 , 'Pre Nursery') ,
( 1 , 'PreNursery') ,
(2, 'NNLP-2') ,
(2, 'NNLP 2') ,
(2, 'NNLP2') ,
(2, 'Nursery') ,
( 3 , 'NNLP-3') , 
( 3 , 'NNLP 3') ,
( 3 , 'NNLP3') , 
( 3 , 'PP1') , 
( 4 , 'NNLP-4') , 
( 4 , 'NNLP 4') , 
( 4 , 'PP2') , 
( 4 , 'NNLP4') , 
(41 , 'NNLP-4/L1'),
(41 , 'NNLP 4/L1'),
(41 , 'NNLP4/L1'),
(41 , 'NNLP-4 / L1'),
(41 , 'NNLP4 / L1'),
(41 , 'NNLP 4 / L1'),
(42 , 'NNLP-4/L2'),
(42 , 'NNLP 4/L2'),
(42 , 'NNLP4/L2'),
(42 , 'NNLP-4 / L2'),
(42 , 'NNLP4 / L2'),
(42 , 'NNLP 4 / L2'),
(5 ,'G1'),
(5 , 'Grade-1'),
(5 , 'Grade1'),
(5 , 'Grade 1'),
(5 , '1'),
(6 ,'G2'),
(6 , 'Grade-2'),
(6 , 'Grade2'),
(6 , 'Grade 2'),
(6 , '2') ,
(7 ,'G3'),
(7 , 'Grade-3'),
(7 , 'Grade3'),
(7 , 'Grade 3'),
(8 ,'G4'),
(8 , 'Grade-4'),
(8 , 'Grade4'),
(8 , 'Grade 4'),
(9 ,'G5'),
(9 , 'Grade-5'),
(9 , 'Grade5'),
(9 , 'Grade 5'),
(10 ,'G6'),
(10 , 'Grade-6'),
(10 , 'Grade6'),
(10 , 'Grade 6'),
(11 ,'G7'),
(11 , 'Grade-7'),
(11 , 'Grade7'),
(11 , 'Grade 7'),
(12 ,'G8'),
(12 , 'Grade-8'),
(12 , 'Grade'),
(12 , 'Grade 8')


---UPDATING THE LEFT GRADENAMES
SELECT * FROM GRADE_IDENTIFY

INSERT INTO GRADE_IDENTIFY 
VALUES
(4 , 'Prep')

select * from master_credentials_file_l
select * from master_credentials_file_l2
select * from grade_identify
select * from grade_names
select * from groups
SELECT * FROM Course

insert into grade_identify
values( 3 , 'PP-1') ,
(3 , 'PP I') ,
(3 , 'PP-I') ,
(4 ,'PP-2') ,
(4, 'PP II') ,
(4 , 'PP-II')


insert into grade_identify
values(3 , 'E-KIDZ-PP1'),
(4, 'E-KIDZ-PP2') , 
(5 , 'E-CHAMPS-1') , 
(6 , 'II')


update groups
set grade = 'PP1'
WHERE GRADE = 'LKG'

update groups
set grade = 'PP2'
WHERE GRADE = 'UKG'



update grade_identify
set gradeallnames = 'PP1'
where GRADEname = 'NNLP 3'



Insert into grade_identify 
values( 3 , 'LKG')


Insert into grade_identify 
values( 4 , 'UKG')

UPDATE groups
SET grade = 'PreNursery'
where grade = 'NNLP1'


UPDATE COURSE
SET SECTION = 'PP2'
where section = 'NNLP 4'

select * from groups

update groups 
set grade = 'Grade 1'
where grade = 'G1'

update groups 
set grade = 'Grade 2'
where grade = 'G2'

update groups 
set grade = 'Grade 3'
where grade = 'G3'

update groups 
set grade = 'Grade 4'
where grade = 'G4'

update groups 
set grade = 'Grade 5'
where grade = 'G5'

update groups 
set grade = 'Grade 6'
where grade = 'G6'

update groups 
set grade = 'Grade 7'
where grade = 'G7'

update groups 
set grade = 'Grade 8'
where grade = 'G8'





-----bulking insert into groups table in the project nn 
SELECT * FROM COURSE


select * from groups



bulk insert groups
from 'C:\PROJECT_NN\FRESHGROUP.csv'
with (
	firstrow = 2 , 
	fieldterminator = ',',
	rowterminator = '\n',
	tablock);
	

	----BULK INSERT INTO COURSE

TRUNCATE TABLE COURSE

bulk insert COURSE
from 'C:\PROJECT_NN\freshcourse.csv'
with (
	firstrow = 2 , 
	fieldterminator = ',',
	rowterminator = '\n',
	tablock);


	create table schoolidentify
	codeofschool varchar (100) , 
	nameofschool varchar (250))

	insert into schoolidentify
	vales(LL





---code of execution 


with cte_preparing_csv as 
(
		select 
		m.[First Name] as firstname ,                -- FirstName For CSV 
		m.[Last Name] as lastname ,                  -- Lastname For CSV
		m.Username as  username ,                    -- Username i might need to create this part
		m.Password as password ,                     -- Password i might need to create this part
		m.Username as email ,                        -- Same as Username
		C.COURSES AS course1 ,                       -- Course in which the object is need to enrolled
		g.groups  as [group1] ,                      -- Group where the object is need to assigned
		'student' as role1 ,                         -- Role of the access
		'oauth2' as auth                             -- Auth for authentication and login
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
)                                                                     --
 ----the query done now the load parts begin 

) insert into newenrolls 
(       firstname , 
		lastname , 
		username , 
		password ,
		email , 
		course1 , 
		group1 , 
		role1 ,
		auth         )
select * from cte_preparing_csv as cv
where 
	firstname is not null 
	and username is not null 
	and course1 is not null 
	and group1 is not null 
	and role1 is not null
and  not exists(
	select 1 from newenrolls as n where n.firstname = cv.firstname 
	and  n.lastname = cv.lastname 
    and	n.username = cv.username 
    and	n.password =cv.password
	and n.email  = cv.email 
	 and n.course1 = cv.course1 
	and n.group1 = cv.group1
	and n.role1 = cv.role1 )
go

update groups
set  GRADE = 'Pre Nursery' 
where  GRADE = 'PreNursery'



select * from newenrolls


Select * from grade_identify
WHERE GRADEID = 6

DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 6 AND GRADEALLNAMES = 'II'

DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 5 AND GRADEALLNAMES = 'I'
DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 7 AND GRADEALLNAMES = 'III'
DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID =  8 AND GRADEALLNAMES = 'IV'
DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 9 AND GRADEALLNAMES = 'V'
DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 10 AND GRADEALLNAMES = 'VI'

DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 11 AND GRADEALLNAMES = 'VII'
DELETE FROM GRADE_IDENTIFY 
WHERE GRADEID = 12 AND GRADEALLNAMES = 'VIII'





select * from master_credentials_file_l2
where [FIRST NAME]  = 'PRASHANT' AND [last name] = 'NNLP2A'

--- right code for credentials autoomation 



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


  SELECT * FROM NEWENROLLS
  ORDER BY 



  SELECT GRADEID , GRADEALLNAMES , LEN(GRADEALLNAMES) AS LENTHOFTHENAME FROM grade_identify