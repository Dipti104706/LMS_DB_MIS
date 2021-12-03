
-----------Inner Joins-------it gives output which match condition in both table----
SELECT Hired_Candidates.first_name,Hired_Candidates.current_pincode, Hired_Candidates.degree,Fellowship_Candidates.birth_date,Fellowship_Candidates.attitude_remark
FROM Fellowship_Candidates 
INNER JOIN Hired_Candidates 
ON Fellowship_Candidates.first_name = Hired_Candidates.first_name

--------Inner join---------
SELECT Fellowship_Candidates.first_name,Fellowship_Candidates.last_name, Candidate_Bank_Det.account_num,Candidate_Bank_Det.addhaar_num
FROM Fellowship_Candidates 
INNER JOIN Candidate_Bank_Det 
ON Fellowship_Candidates.id = Candidate_Bank_Det.candidate_id;

SELECT Fellowship_Candidates.first_name,Fellowship_Candidates.last_name, Candidate_Bank_Det.account_num,User_Details.password,Company_Requirement.city
FROM Fellowship_Candidates 
INNER JOIN Candidate_Bank_Det ON Fellowship_Candidates.id = Candidate_Bank_Det.candidate_id
Inner join User_Details on Fellowship_Candidates.first_name=User_Details.first_name
Inner join Company_Requirement on Fellowship_Candidates.id=Company_Requirement.candidate_id

------Left outer join--------------Takes all column of left table but takes only matched data of right
SELECT first_name, last_name, Candidate_Bank_Det.account_num , Candidate_Bank_Det.ifsc_code 
FROM Fellowship_Candidates 
left JOIN Candidate_Bank_Det  
ON Fellowship_Candidates.first_name = Candidate_Bank_Det.name;

SELECT first_name, last_name, Candidate_Qualification.degree_name
FROM Fellowship_Candidates 
LEFT JOIN Candidate_Qualification  
ON Fellowship_Candidates.degree = Candidate_Qualification.degree_name;

------------Right join---------opposite of left
SELECT first_name, last_name, Candidate_Bank_Det.account_num , Candidate_Bank_Det.ifsc_code 
FROM Fellowship_Candidates 
right JOIN Candidate_Bank_Det  
ON Fellowship_Candidates.first_name = Candidate_Bank_Det.name;

-----------Full join----------
SELECT first_name, last_name, Candidate_Bank_Det.account_num , Candidate_Bank_Det.ifsc_code 
FROM Fellowship_Candidates 
full JOIN Candidate_Bank_Det 
ON Fellowship_Candidates.first_name = Candidate_Bank_Det.name;


