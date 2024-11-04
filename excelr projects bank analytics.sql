create database excelrprojects;
use excelrprojects;
select*from bank;

/*1*/
select year, sum(loan_amnt) as total_loan
from bank
group by year
order by year;
/*2*/
select grade,sub_grade, sum(revol_bal) as balance
from bank
group by grade,
          sub_grade
order by grade,
               sub_grade;
/*3*/
select verification_status as status ,sum(round(total_pymnt)) as payment
from bank
group by verification_status;
/*4*/
select addr_state as state ,last_credit_pull_d,loan_status,count(*) as number_of_loans
from bank
group by 
addr_state,
last_credit_pull_d,
loan_status
order by
addr_state,
last_credit_pull_d,
loan_status;

       
 
/*5*/
select home_ownership,last_pymnt_d,COUNT(*) AS number_of_loans,
                                  SUM(loan_amnt) AS total_loan_amount
from bank

GROUP BY 
    home_ownership,
    last_pymnt_d
order by
    home_ownership,
    last_pymnt_d ;
    
    