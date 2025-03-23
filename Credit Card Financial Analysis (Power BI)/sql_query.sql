CREATE TABLE cc_detail(
	Client_Num INT,
	Card_Category VARCHAR(25),
	Annual_Fees INT,
	Activation_30_Days INT,
	Customer_Acq_Cost INT,
	Week_Start_Date DATE,
	Week_Num VARCHAR(25),
	Qtr VARCHAR(10),
	current_year INT,
	Credit_Limit DECIMAL(10,2),
	Total_Revolving_Bal INT,
	Total_Trans_Amt INT,
	Total_Trans_Vol INT,
	Avg_Utilization_Ratio DECIMAL (10,3),
	Use_Chip VARCHAR(10),
	Exp_Type VARCHAR(50),
	Interest_Earned DECIMAL(10,3),
	Delinquent_Acc INT
);

SET datestyle='DMY';

CREATE TABLE cust_detail(
	Client_Num INT,
	Customer_Age INT,
	Gender VARCHAR(5),
	Dependent_Count INT,
	Education_Level VARCHAR(50),
	Marital_Status VARCHAR(20),
	state_cd VARCHAR(10),
	Zipcode VARCHAR(15),
	Car_Owner VARCHAR(5),
	House_Owner VARCHAR(5),
	Personal_loan VARCHAR(5),
	contact VARCHAR(30),
	Customer_Job VARCHAR(30),
	Income INT,
	Cust_Satisfaction_Score INT
);

SET datestyle = 'DMY';


COPY cc_detail
FROM 'D:\DataScience\DataSets\Credit Card\cc_add.csv'
DELIMITER ','
CSV HEADER 

COPY cust_detail
FROM 'D:\DataScience\DataSets\Credit Card\cust_add.csv'
DELIMITER ','
CSV HEADER

SELECT * FROM cc_detail;