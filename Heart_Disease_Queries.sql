CREATE DATABASE IF NOT EXISTS smartbridge_heart;
USE smartbridge_heart;

-- 2. Heart disease table Structure
CREATE TABLE IF NOT EXISTS heart_data (
    age INT,
    sex INT,
    cp INT,
    trestbps INT,
    chol INT,
    fbs INT,
    restecg INT,
    thalach INT,
    exang INT,
    oldpeak FLOAT,
    slope INT,
    ca INT,
    thal INT,
    target INT
);
SELECT * FROM heart_data;

-- Count of patients with high cholesterol (High Risk)
SELECT count(*) AS High_Cholesterol_Count 
FROM heart_data 
WHERE chol > 240;

-- Heart disease distribution by Gender (1 = Male, 0 = Female)
SELECT sex, count(*) AS Patient_Count 
FROM heart_data 
WHERE target = 1 
GROUP BY sex;

-- Average age of people having heart disease
SELECT AVG(age) AS Average_Age 
FROM heart_data 
WHERE target = 1;

-- Analyzing Blood Pressure based on Chest Pain Type
SELECT cp, AVG(trestbps) AS Avg_BP 
FROM heart_data 
GROUP BY cp 
ORDER BY Avg_BP DESC;