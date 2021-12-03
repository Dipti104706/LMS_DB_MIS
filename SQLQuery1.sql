create database CPULog;

create database LMSdata;
use LMSdata;

---Hired candidates table-----
CREATE TABLE Hired_Candidates (
  id int identity(1,1) primary key NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(50) NOT NULL,
  mobile_num bigint NOT NULL,
  hired_city varchar(50) NOT NULL,
  hired_date datetime NOT NULL,
  degree varchar(100) NOT NULL,
  aggr_per float DEFAULT NULL,
  current_pincode int DEFAULT NULL,
  permanent_pincode int DEFAULT NULL,
  hired_lab varchar(20) DEFAULT NULL,
  attitude_remark varchar(15) DEFAULT NULL,
  communication_remark varchar(15) DEFAULT NULL,
  knowledge_remark varchar(15) DEFAULT NULL,
  status varchar(20) NOT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

--Inserting values to table----
Insert into Hired_Candidates values('Dipti','Mayee','Behura','ftgrh@gmail.com','0025864526','hyderbad','2020-10-07','Mtech','85.65','769042','754285','Developer','good','good','good','good','','1');
Insert into Hired_Candidates values('Sarika','','Behura','ftgrh@gmail.com','0025864526','hyderbad','2020-10-07','Mtech','85.65','769042','754285','Developer','good','good','good','good','','1');
Insert into Hired_Candidates values('Deba','','Sutar','ftikol@gmail.com','7725864526','Mumbai','2021-10-07','Msc','55.35','769042','734285','Testing','good','average','good','good','','2');
Insert into Hired_Candidates values('Suchitra','','Malick','suchirh@gmail.com','8952864526','Jamshedpur','2019-11-09','MBBS','95.65','769042','754155','Doctor','good','good','good','good','','3');
Insert into Hired_Candidates values('Sumant','','Singh','sumant@gmail.com','3325864526','Bangalore','2021-03-07','MCA','75.65','769242','754275','Developer','good','good','good','good','','1');
---Retrieve data from table-------
select * from Hired_Candidates;

-------Fellowship Candidates table------
CREATE TABLE Fellowship_Candidates (
  id int identity(1,1) primary key NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(50) NOT NULL,
  mobile_num bigint NOT NULL,
  hired_city varchar(50) NOT NULL,
  hired_date datetime NOT NULL,
  degree varchar(50) NOT NULL,
  aggr_per float DEFAULT NULL,
  current_pincode int DEFAULT NULL,
  permanent_pincode int DEFAULT NULL,
  hired_lab varchar(20) DEFAULT NULL,
  attitude_remark varchar(15) DEFAULT NULL,
  communication_remark varchar(15) DEFAULT NULL,
  knowledge_remark varchar(15) DEFAULT NULL,
  birth_date date NOT NULL,
  is_birth_date_verified int DEFAULT 0,
  parent_name varchar(50) DEFAULT NULL,
  parent_occupation varchar(100) NOT NULL,
  parent_mobile_num bigint NOT NULL,
  parent_annual_sal float DEFAULT NULL,
  local_addr varchar(255) NOT NULL,
  permanent_addr varchar(150) DEFAULT NULL,
  photo_path varchar(500) DEFAULT NULL,
  joining_date date DEFAULT NULL,
  candidate_status varchar(20) NOT NULL,
  personal_info_filled int  DEFAULT 0,
  bank_info_filled int DEFAULT 0,
  educational_info_filled int DEFAULT 0,
  doc_status varchar(20) DEFAULT NULL,
  remark varchar(150) DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Fellowship_Candidates values('Dipti', '', 'Behura', 'dipti@gmail.com ',
					8956748596, 'Hyderabad','2021-11-02','M.Tech', 85.75, 765245,755478,'Mumbai', 'Good', 'Good' , 'Good', '1996-10-02', 1, 'Dillip', 'Business' , 9772962547, 200000, 'Rkl', 'Rkl' , 'photo_path', '2021-11-16', 'Good',
					1, 1, 1, 'Correct', 'Good', null, 1);
insert into Fellowship_Candidates values('Sarika', '', 'Boxi', 'Sarika@gmail.com ',
					9956748596, 'Mumbai','2021-10-02','B.Tech',75.75, 769015,655478,'Mumbai', 'Good', 'Good' , 'Good', '1996-01-02', 1, 'Rama', 'Business' , 9772862577, 300000, 'Rkl', 'Rkl' , 'photo_path', '2021-10-16', 'Good',
					1, 1, 1, 'Correct', 'Good', null, 1);
insert into Fellowship_Candidates values('Debasmita', '', 'Sutar', 'Deba@gmail.com ',
					7756748596, 'Mumbai','2021-09-02','Bsc',45.75, 769015,655478,'Mumbai', 'Good', 'Good' , 'Good', '1995-11-12', 1, 'Huna', 'Farmer' , 8772862577, 300000, 'Rkl', 'Rkl' , 'photo_path', '2021-09-11', 'Good',
					1, 1, 1, 'Correct', 'Good', null, 1);
insert into Fellowship_Candidates values('Suchitra', '', 'Malick', 'Suchi@gmail.com ',
					7756749596, 'Mumbai','2021-07-02','B.Tech',95.75, 769015,755478,'Mumbai', 'Good', 'Good' , 'Good', '1996-12-08', 1, 'Krushna', 'Business' , 7772862577, 800000, 'Rkl', 'Rkl' , 'photo_path', '2021-07-16', 'Good',
					1, 1, 1, 'Correct', 'Good', null, 1);
------Retrieve data from the table-----
select * from Fellowship_Candidates;

------Candidate personal details check Table-----------
CREATE TABLE Candidates_Personal_Det_Check (
  id int NOT NULL,
  candidate_id  int NOT NULL,
  field_name int NOT NULL,
  is_verified int DEFAULT NULL,
  lastupd_stamp datetime DEFAULT NULL,
  lastupd_user int DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Candidates_Personal_Det_Check values(1, 3, 2, 1,'2020-11-05',1,'',1);
insert into Candidates_Personal_Det_Check values(1, 4, 3, 1,'2021-06-05',1,'',1);
insert into Candidates_Personal_Det_Check values(1, 5, 2, 1,'2020-07-15',1,'',1);
insert into Candidates_Personal_Det_Check values(1, 6, 4, 1,'2020-09-05',1,'',1);
insert into Candidates_Personal_Det_Check values(1, 7, 2, 0,'2019-01-05',1,'',1);

------Retrieve data from the table-----
select * from Candidates_Personal_Det_Check;

------Candidate bank details table-----
CREATE TABLE Candidate_Bank_Det(
  id int identity(1,1) primary key NOT NULL,
  candidate_id int NOT NULL
  FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidates(id),
  name varchar(100) NOT NULL,
  account_num bigint NOT NULL,
  is_account_num_verified int DEFAULT 0,
  ifsc_code varchar(20) NOT NULL,
  is_ifsc_code_verified int DEFAULT 0,
  pan_number varchar(10) DEFAULT NULL,
  is_pan_number_verified int DEFAULT 0,
  addhaar_num bigint NOT NULL,
  is_addhaar_num_verified int DEFAULT 0,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
) ;

-----Inserting data to the table-----
insert into Candidate_Bank_Det values(3,'Dipti',75684215698,1,'huyy444',1,'kjuy567kj',1,895682154253,1,'',1);
insert into Candidate_Bank_Det values(4,'Sarika',33756825634,1,'juyy454',1,'kiju567kj',1,757442154253,1,'',1);
insert into Candidate_Bank_Det values(5,'Deba',89894215698,1,'ikly464',1,'kjhg567kj',1,7586242154253,1,'',1);
insert into Candidate_Bank_Det values(6,'Suchitra',52524215698,1,'mnoy474',1,'kmjn567kj',1,256342154253,1,'',1);

------Retrieve data from the table-----
select * from Candidate_Bank_Det;

-----Candidates Bank Details Check table----
CREATE TABLE Candidates_Bank_Det_Check (
  id int NOT NULL,
  candidate_id int NOT NULL,
  field_name int NOT NULL,
  is_verified int DEFAULT NULL,
  lastupd_stamp datetime DEFAULT NULL,
  lastupd_user int DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Candidates_Bank_Det_Check values(1,3,2,1,'2020-12-08',1,'',1);
insert into Candidates_Bank_Det_Check values(2,4,4,1,'2020-12-08',1,'',1);
insert into Candidates_Bank_Det_Check values(3,5,5,1,'2020-12-08',1,'',1);
insert into Candidates_Bank_Det_Check values(4,6,6,1,'2020-12-08',1,'',1);

------Retrieve data from the table-----
select * from Candidates_Bank_Det_Check;

-------Candidate Qualification table-----
CREATE TABLE Candidate_Qualification(
  id int identity(1,1) primary key NOT NULL,
  candidate_id int NOT NULL
  FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidates(id),
  diploma int DEFAULT 0,
  degree_name varchar(10) NOT NULL,
  is_degree_name_verified int DEFAULT 0,
  employee_decipline varchar(100) NOT NULL,
  is_employee_decipline_verified int DEFAULT 0,
  passing_year int NOT NULL,
  is_passing_year_verified int DEFAULT 0,
  aggr_per float DEFAULT NULL,
  final_year_per float DEFAULT NULL,
  is_final_year_per_verified int DEFAULT 0,
  training_institute varchar(20) NOT NULL,
  is_training_institute_verified int DEFAULT 0,
  training_duration_month int DEFAULT NULL,
  is_training_duration_month_verified int DEFAULT 0,
  other_training varchar(255) DEFAULT NULL,
  is_other_training_verified int DEFAULT 0,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Candidate_Qualification values(3,1,'Mtech',1,'Electrical',1,2020,1,83.75,92.25,1,'BLPL',1,4,1,'',1,'',2);
insert into Candidate_Qualification values(4,0,'Btech',1,'Civil',1,2017,1,63.75,82.25,1,'BLPL',1,4,1,'',1,'',2);
insert into Candidate_Qualification values(5,0,'BSC',1,'SC',1,2021,1,43.75,62.25,1,'BLPL',1,4,1,'',1,'',2);
insert into Candidate_Qualification values(6,1,'MCA',1,'CSE',1,2020,1,93.75,90.25,1,'BLPL',1,4,1,'',1,'',2);

------Retrieve data from the table-----
select * from Candidate_Qualification;

-------Candidates Education Details Check table----
CREATE TABLE Candidates_Education_Det_Check (
  id int NOT NULL,
  candidate_id int NOT NULL,
  field_name int NOT NULL,
  is_verified int DEFAULT NULL,
  lastupd_stamp datetime DEFAULT NULL,
  lastupd_user int DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Candidates_Education_Det_Check values(1,3,2,1,'2020-12-08',2,'',1);
insert into Candidates_Education_Det_Check values(1,4,3,1,'2020-12-08',2,'',1);
insert into Candidates_Education_Det_Check values(1,5,4,1,'2020-12-08',2,'',1);
insert into Candidates_Education_Det_Check values(1,6,2,1,'2020-12-08',2,'',1);

------Retrieve data from the table-----
select * from Candidates_Education_Det_Check;

------Candidate Documents table----
CREATE TABLE Candidate_Docs(
  id int identity(1,1) primary key NOT NULL,
  candidate_id int NOT NULL
  FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidates(id),
  doc_type varchar(20) DEFAULT NULL,
  doc_path varchar(500) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Candidate_Docs values(3,'Adhar','hhyut.path',1,'',2);
insert into Candidate_Docs values(4,'Adhar','ssdut.path',1,'',2);
insert into Candidate_Docs values(5,'Adhar','nnjut.path',1,'',2);
insert into Candidate_Docs values(6,'Adhar','kjuut.path',1,'',2);

------Retrieve data from the table-----
select * from Candidate_Docs;

-----User Details table---
CREATE TABLE User_Details (
  id int identity(1,1) primary key NOT NULL,
  email varchar(50) NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  password varchar(15) NOT NULL,
  contact_number bigint NOT NULL,
  verified bit DEFAULT NULL,     ----bit refers to 0,1 or null---
  UNIQUE (email) ---ensure all values in the column are different---
);

-----Inserting data to the table-----
insert into User_Details values('dpt@gmail.com','Dipti','Behura','gthyjuk@yu',8956231478,1);
insert into User_Details values('Sar@gmail.com','Sarika','Boci','juik@yu',7789564521,1);
insert into User_Details values('DEba@gmail.com','Deba','Sutar','oooik@yu',5689564521,1);
insert into User_Details values('Suchi@gmail.com','Suchitra','Malick','125hu@yu',9889564521,1);

------Retrieve data from the table-----
select * from User_Details;

----User Roles table----
CREATE TABLE User_Roles (
  user_id int NOT NULL ,
  role_name varchar(100)
);

-----Inserting data to the table-----
insert into User_Roles values(1,'Dev');
insert into User_Roles values(2,'Test');
insert into User_Roles values(3,'Dev');
insert into User_Roles values(4,'Test');

------Retrieve data from the table-----
select * from User_Roles;

-----Company Table----
CREATE TABLE Company(
  id int identity(1,1) primary key NOT NULL,
  name int NOT NULL,
  address varchar(150) DEFAULT NULL,
  location varchar(50) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Company values(1,'Hightechcity','Hyderabad',1,'',2);
insert into Company values(2,'Boriwali','Pune',1,'',2);
insert into Company values(3,'Koramangala','Bangalore',1,'',2);
insert into Company values(4,'Navi','Mumbai',1,'',2);

------Retrieve data from the table-----
select * from Company;

-------Technology type table-----
CREATE TABLE Tech_Type (
  id int identity(1,1) primary key NOT NULL,
  type_name varchar(50) NOT NULL,
  cur_status char(1) DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

-----Inserting data to the table-----
insert into Tech_Type values('java','y','',2);
insert into Tech_Type values('dotnet','y','',2);
insert into Tech_Type values('python','y','',2);
insert into Tech_Type values('AI','y','',2);
------Retrieve data from the table-----
select * from Tech_Type;

--------Tech Stack table----
CREATE TABLE Tech_Stack (
  id int identity(1,1) primary key NOT NULL,
  tech_name varchar(50) NOT NULL,
  image_path varchar(500) DEFAULT NULL,
  framework text DEFAULT NULL,
  cur_status char(1) DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
) 

------Insert data--------
insert into Tech_Stack values('java','yiuyg.path','spring','y','',2);
insert into Tech_Stack values('csharp','yiuyg.path','dotnet','y','',2);
insert into Tech_Stack values('python','yiuyg.path','spr','y','',2);
insert into Tech_Stack values('AI','yiuyg.path','iot','y','',2);

------Retrieve data from the table-----
select * from Tech_Stack;

----------Maker program Table-----
CREATE TABLE Maker_Program(
  id int identity(1,1) primary key NOT NULL,
  program_name int NOT NULL,
  program_type varchar(10) DEFAULT NULL,
  program_link text DEFAULT NULL,   -----------text stores string
  tech_stack_id int DEFAULT NULL
  FOREIGN KEY (tech_stack_id) REFERENCES Tech_Stack(id),
  tech_type_id int NOT NULL
  FOREIGN KEY (tech_type_id) REFERENCES Tech_Type(id),
  is_program_approved int ,
  description varchar(500) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);	

------Insert data--------
insert into Maker_Program values(1,'training','juhtf.kju.com',1,1,1,'Processed',1,'',2);
insert into Maker_Program values(1,'training','juhtf.kju.com',2,2,1,'Processed',1,'',2);
insert into Maker_Program values(1,'training','juhtf.kju.com',3,3,1,'Processed',1,'',2);
insert into Maker_Program values(1,'training','juhtf.kju.com',4,4,1,'Processed',1,'',2);
------Retrieve data from the table-----
select * from Maker_Program;

----Lab table----
CREATE TABLE Lab(
  id int identity(1,1) primary key NOT NULL,
  name varchar(50) DEFAULT NULL,
  location varchar(50) DEFAULT NULL,
  address  varchar(255) DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
);

------Insert data--------
insert into Lab values('Mumbai','Mumbai','Bandra',2,'2021-05-16',2);
insert into Lab values('Fullstack','Bangalore','Kora',1,'2021-05-16',2);
insert into Lab values('Testing','Mumbai','Bandra',1,'2021-05-16',2);
insert into Lab values('Variable','Hyderabad','HighTech',0,'2021-05-16',2);

------Retrieve data from the table-----
select * from Lab;

----------Lab Threshold table--------
CREATE TABLE lab_threshold(
  id int identity(1,1) primary key NOT NULL,
  lab_id int NOT NULL
  FOREIGN KEY(lab_id) REFERENCES Lab(id), 
  lab_capacity varchar DEFAULT NULL,
  lead_threshold int DEFAULT NULL,
  ideation_engg_threshold int DEFAULT NULL,
  buddy_engg_threshold int DEFAULT NULL,
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL  
  ) ;

------Insert data--------
insert lab_threshold values (1,'',5,3,2,1,null,2);
insert lab_threshold values (2,'H',5,3,2,1,null,2);
insert lab_threshold values (3,'M',4,2,2,1,null,2);
insert lab_threshold values (4,'L',3,1,1,1,null,2);

------Retrieve data from the table-----
select * from lab_threshold;

------App Parameters--------
CREATE TABLE App_Parameters (
  id int identity(1,1) primary key NOT NULL,
  key_type varchar(20) NOT NULL,
  key_value varchar(20) NOT NULL,
  key_text varchar(80) DEFAULT NULL,
  cur_status char(1) DEFAULT NULL,
  lastupd_user int DEFAULT NULL,
  lastupd_stamp datetime DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
  seq_num int DEFAULT NULL
) ;

------Insert data--------
insert App_Parameters values ('Engineer','fine','Execellent','Y',1,'','',1,1);
insert App_Parameters values ('Look','fine','good','Y',1,'','',1,2);
insert App_Parameters values ('Scale','nice','Execellent','Y',1,'','',1,3);
insert App_Parameters values ('Frame','fine','Execellent','Y',1,'','',1,4);

------Retrieve data from the table-----
select * from App_Parameters;

---------Mentor table------
CREATE TABLE Mentor(
  id int identity(1,1) primary key NOT NULL,
  name varchar(50) DEFAULT NULL,
  mentor_type varchar(20) DEFAULT NULL,
  lab_id int NOT NULL
  FOREIGN KEY (lab_id) REFERENCES Mentor(id),
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL
) ;

------Retrieve data from the table-----
select * from Mentor;

-----------Mentor ideation map--------------
CREATE TABLE Mentor_Ideation_Map(
  id int identity(1,1) primary key NOT NULL,
  mentor_id int NOT NULL
  FOREIGN KEY (mentor_id) REFERENCES Mentor(id),
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL, 
);

------Insert data--------


------Retrieve data from the table-----
select * from Mentor_Ideation_Map;

-----------Mentor Techstack------------
CREATE TABLE Mentor_techstack(
  id int identity(1,1) primary key NOT NULL,
  mentor_id int NOT NULL
  FOREIGN KEY (mentor_id) REFERENCES Mentor(id),
  tech_stack_id int NOT NULL
  FOREIGN KEY (tech_stack_id) REFERENCES Tech_Stack(id),
  status int DEFAULT 1,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,   
);

------Retrieve data from the table-----
select * from Mentor_techstack;

----------Company Requirement Table-------
CREATE TABLE Company_Requirement(
	id int identity(1,1) primary key NOT NULL,
	company_id int NOT NULL,
	candidate_id int NOT NULL
	FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidates (id),
	requested_month varchar(20) NOT NULL,
	city varchar(20) DEFAULT NULL,
	is_doc_verification int DEFAULT 1,
	requirement_doc_path varchar(500) DEFAULT NULL,
	no_of_engg int NOT NULL,
	tech_stack_id int NOT NULL,
	tech_type_id int NOT NULL,
	maker_programs_id int NOT NULL,
	lead_id int NOT NULL,
	ideateion_engg_id int DEFAULT NULL,
	buddy_engg_id int  DEFAULT NULL,
	special_remark text DEFAULT NULL,
	status int DEFAULT 1,
	creator_stamp datetime DEFAULT NULL,
	creator_user int DEFAULT NULL
);

------Retrieve data from the table-----
select * from Company_Requirement;

----Candidate Techstack Assignment table-------
CREATE TABLE candidate_techstack_assignment(
  id int identity(1,1) primary key NOT NULL,
  requirement_id int NOT NULL
  FOREIGN KEY (requirement_id) REFERENCES Company_Requirement(id),
  candidate_id int NOT NULL
  FOREIGN KEY (candidate_id) REFERENCES Fellowship_Candidates(id),
  assign_date datetime DEFAULT NULL,
  status varchar(20) DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
);

------Retrieve data from the table-----
select * from candidate_techstack_assignment;












