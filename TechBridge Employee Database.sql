-- TECHBRIDGE LTD — EMPLOYEE DATABASE
-- Project: SQL Employee Database Analysis
-- Analyst: Oladega Naheem Olasubomi
-- Tool: MySQL
-- Date: 2026

-- Create and select the database
CREATE DATABASE IF NOT EXISTS techbridge_db;
USE techbridge_db;

-- Drop tables that might already exist 
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS job_levels;
DROP TABLE IF EXISTS departments;

SET FOREIGN_KEY_CHECKS = 1;

-- TABLE 1: DEPARTMENTS

CREATE TABLE departments (
    department_id   INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location        VARCHAR(50) NOT NULL,
    manager_name    VARCHAR(50) NOT NULL
);

INSERT INTO departments VALUES
(1,  'Engineering',        'Lagos',   'Chukwuemeka Obi'),
(2,  'Marketing',          'Abuja',   'Amina Bello'),
(3,  'Human Resources',    'Lagos',   'Ngozi Adeyemi'),
(4,  'Finance',            'Lagos',   'Tunde Fashola'),
(5,  'Customer Service',   'Ibadan',  'Grace Okoro'),
(6,  'IT',                 'Lagos',   'Seun Adesanya'),
(7,  'Operations',         'Kano',    'Musa Ibrahim'),
(8,  'Sales',              'Abuja',   'Chidinma Eze');

-- TABLE 2: JOB LEVELS

CREATE TABLE job_levels (
    level_id    INT PRIMARY KEY,
    level_name  VARCHAR(20) NOT NULL,
    description VARCHAR(100) NOT NULL
);

INSERT INTO job_levels VALUES
(1, 'Entry',  'Junior staff, 0–2 years experience'),
(2, 'Mid',    'Intermediate staff, 3–5 years experience'),
(3, 'Senior', 'Senior staff, 6+ years experience');

-- TABLE 3: EMPLOYEES

CREATE TABLE employees (
    employee_id   INT PRIMARY KEY,
    first_name    VARCHAR(50) NOT NULL,
    last_name     VARCHAR(50) NOT NULL,
    gender        ENUM('Male', 'Female') NOT NULL,
    department_id INT NOT NULL,
    level_id      INT NOT NULL,
    hire_date     DATE NOT NULL,
    email         VARCHAR(100) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (level_id)      REFERENCES job_levels(level_id)
);

INSERT INTO employees VALUES
(1001, 'Emeka',      'Okafor',     'Male',   1, 3, '2018-03-15', 'emeka.okafor@techbridge.ng'),
(1002, 'Aisha',      'Mohammed',   'Female', 1, 2, '2020-07-01', 'aisha.mohammed@techbridge.ng'),
(1003, 'Tunde',      'Adeyemi',    'Male',   1, 1, '2023-01-10', 'tunde.adeyemi@techbridge.ng'),
(1004, 'Ngozi',      'Okonkwo',    'Female', 1, 3, '2017-05-20', 'ngozi.okonkwo@techbridge.ng'),
(1005, 'Chidi',      'Eze',        'Male',   1, 2, '2021-09-14', 'chidi.eze@techbridge.ng'),
(1006, 'Fatima',     'Bello',      'Female', 1, 1, '2024-02-28', 'fatima.bello@techbridge.ng'),
(1007, 'Segun',      'Afolabi',    'Male',   1, 3, '2016-11-05', 'segun.afolabi@techbridge.ng'),
(1008, 'Chioma',     'Nwosu',      'Female', 1, 2, '2020-03-22', 'chioma.nwosu@techbridge.ng'),
(1009, 'Babatunde',  'Fashola',    'Male',   1, 1, '2023-08-19', 'babatunde.fashola@techbridge.ng'),
(1010, 'Adaeze',     'Obi',        'Female', 1, 3, '2015-06-30', 'adaeze.obi@techbridge.ng'),
(1011, 'Yusuf',      'Musa',       'Male',   1, 2, '2019-04-11', 'yusuf.musa@techbridge.ng'),
(1012, 'Blessing',   'Okoro',      'Female', 1, 1, '2024-06-01', 'blessing.okoro@techbridge.ng'),
(1013, 'Rotimi',     'Adesanya',   'Male',   1, 3, '2014-09-08', 'rotimi.adesanya@techbridge.ng'),
(1014, 'Nneka',      'Chukwu',     'Female', 1, 2, '2021-01-17', 'nneka.chukwu@techbridge.ng'),
(1015, 'Femi',       'Ogundimu',   'Male',   1, 1, '2022-11-25', 'femi.ogundimu@techbridge.ng'),
(1016, 'Halima',     'Abdullahi',  'Female', 2, 2, '2020-05-14', 'halima.abdullahi@techbridge.ng'),
(1017, 'Kunle',      'Bakare',     'Male',   2, 3, '2017-08-22', 'kunle.bakare@techbridge.ng'),
(1018, 'Ifeoma',     'Igwe',       'Female', 2, 1, '2023-03-07', 'ifeoma.igwe@techbridge.ng'),
(1019, 'Biodun',     'Olatunde',   'Male',   2, 2, '2019-12-01', 'biodun.olatunde@techbridge.ng'),
(1020, 'Zainab',     'Sule',       'Female', 2, 3, '2016-07-19', 'zainab.sule@techbridge.ng'),
(1021, 'Dayo',       'Adeleke',    'Male',   2, 1, '2024-01-15', 'dayo.adeleke@techbridge.ng'),
(1022, 'Chinwe',     'Obiora',     'Female', 2, 2, '2021-06-28', 'chinwe.obiora@techbridge.ng'),
(1023, 'Sola',       'Martins',    'Male',   2, 3, '2015-10-04', 'sola.martins@techbridge.ng'),
(1024, 'Kemi',       'Adebayo',    'Female', 2, 1, '2022-09-13', 'kemi.adebayo@techbridge.ng'),
(1025, 'Uche',       'Nwachukwu',  'Male',   2, 2, '2020-02-20', 'uche.nwachukwu@techbridge.ng'),
(1026, 'Amaka',      'Okafor',     'Female', 3, 1, '2023-05-09', 'amaka.okafor@techbridge.ng'),
(1027, 'Lanre',      'Salami',     'Male',   3, 3, '2018-01-23', 'lanre.salami@techbridge.ng'),
(1028, 'Bimpe',      'Adeola',     'Female', 3, 2, '2020-10-15', 'bimpe.adeola@techbridge.ng'),
(1029, 'Musa',       'Garba',      'Male',   3, 1, '2024-04-02', 'musa.garba@techbridge.ng'),
(1030, 'Shade',      'Oduya',      'Female', 3, 3, '2016-03-18', 'shade.oduya@techbridge.ng'),
(1031, 'Gbenga',     'Owolabi',    'Male',   3, 2, '2019-08-27', 'gbenga.owolabi@techbridge.ng'),
(1032, 'Temi',       'Adewale',    'Female', 3, 1, '2022-07-14', 'temi.adewale@techbridge.ng'),
(1033, 'Ifeanyi',    'Okonkwo',    'Male',   3, 3, '2013-11-30', 'ifeanyi.okonkwo@techbridge.ng'),
(1034, 'Ngozi',      'Eze',        'Female', 3, 2, '2021-04-06', 'ngozi.eze@techbridge.ng'),
(1035, 'Bayo',       'Adegoke',    'Male',   3, 1, '2023-09-21', 'bayo.adegoke@techbridge.ng'),
(1036, 'Tolu',       'Ogunleye',   'Female', 4, 3, '2015-02-14', 'tolu.ogunleye@techbridge.ng'),
(1037, 'Jide',       'Akinwale',   'Male',   4, 2, '2020-06-09', 'jide.akinwale@techbridge.ng'),
(1038, 'Funke',      'Abiodun',    'Female', 4, 1, '2023-02-17', 'funke.abiodun@techbridge.ng'),
(1039, 'Chukwudi',   'Nwosu',      'Male',   4, 3, '2017-07-25', 'chukwudi.nwosu@techbridge.ng'),
(1040, 'Yetunde',    'Adeyemi',    'Female', 4, 2, '2021-11-03', 'yetunde.adeyemi@techbridge.ng'),
(1041, 'Emeka',      'Anyanwu',    'Male',   4, 1, '2024-03-11', 'emeka.anyanwu@techbridge.ng'),
(1042, 'Lola',       'Adekunle',   'Female', 4, 3, '2014-08-16', 'lola.adekunle@techbridge.ng'),
(1043, 'Seun',       'Badmus',     'Male',   4, 2, '2019-05-29', 'seun.badmus@techbridge.ng'),
(1044, 'Adunola',    'Salami',     'Female', 4, 1, '2022-12-07', 'adunola.salami@techbridge.ng'),
(1045, 'Kola',       'Olatunji',   'Male',   4, 3, '2016-09-12', 'kola.olatunji@techbridge.ng'),
(1046, 'Chiamaka',   'Obi',        'Female', 5, 1, '2023-06-19', 'chiamaka.obi@techbridge.ng'),
(1047, 'Fola',       'Adesola',    'Male',   5, 2, '2019-03-04', 'fola.adesola@techbridge.ng'),
(1048, 'Nkechi',     'Onyeka',     'Female', 5, 3, '2017-01-28', 'nkechi.onyeka@techbridge.ng'),
(1049, 'Taiwo',      'Oduola',     'Male',   5, 1, '2024-05-06', 'taiwo.oduola@techbridge.ng'),
(1050, 'Bukola',     'Adeyemi',    'Female', 5, 2, '2020-08-31', 'bukola.adeyemi@techbridge.ng'),
(1051, 'Obinna',     'Eze',        'Male',   5, 3, '2015-04-22', 'obinna.eze@techbridge.ng'),
(1052, 'Yinka',      'Ogunwale',   'Female', 5, 1, '2022-10-18', 'yinka.ogunwale@techbridge.ng'),
(1053, 'Chinedu',    'Okafor',     'Male',   5, 2, '2021-02-14', 'chinedu.okafor@techbridge.ng'),
(1054, 'Adaora',     'Nweze',      'Female', 5, 3, '2016-12-09', 'adaora.nweze@techbridge.ng'),
(1055, 'Tobi',       'Afolabi',    'Male',   5, 1, '2023-11-27', 'tobi.afolabi@techbridge.ng'),
(1056, 'Hauwa',      'Usman',      'Female', 6, 2, '2020-01-13', 'hauwa.usman@techbridge.ng'),
(1057, 'Dare',       'Olawale',    'Male',   6, 3, '2016-06-07', 'dare.olawale@techbridge.ng'),
(1058, 'Chidinma',   'Okeke',      'Female', 6, 1, '2023-04-24', 'chidinma.okeke@techbridge.ng'),
(1059, 'Wale',       'Adebisi',    'Male',   6, 2, '2019-10-08', 'wale.adebisi@techbridge.ng'),
(1060, 'Uju',        'Nwankwo',    'Female', 6, 3, '2015-08-14', 'uju.nwankwo@techbridge.ng'),
(1061, 'Dapo',       'Olatunji',   'Male',   6, 1, '2024-07-01', 'dapo.olatunji@techbridge.ng'),
(1062, 'Sade',       'Balogun',    'Female', 6, 2, '2021-03-19', 'sade.balogun@techbridge.ng'),
(1063, 'Emeka',      'Obiora',     'Male',   6, 3, '2014-11-03', 'emeka.obiora@techbridge.ng'),
(1064, 'Ronke',      'Adebiyi',    'Female', 6, 1, '2022-08-22', 'ronke.adebiyi@techbridge.ng'),
(1065, 'Tayo',       'Akinlade',   'Male',   6, 2, '2020-04-30', 'tayo.akinlade@techbridge.ng'),
(1066, 'Jumoke',     'Adegbite',   'Female', 7, 1, '2023-07-11', 'jumoke.adegbite@techbridge.ng'),
(1067, 'Musa',       'Aliyu',      'Male',   7, 3, '2017-02-16', 'musa.aliyu@techbridge.ng'),
(1068, 'Ngozi',      'Nwosu',      'Female', 7, 2, '2020-09-25', 'ngozi.nwosu@techbridge.ng'),
(1069, 'Seun',       'Olayinka',   'Male',   7, 1, '2024-01-30', 'seun.olayinka@techbridge.ng'),
(1070, 'Khadija',    'Musa',       'Female', 7, 3, '2016-05-17', 'khadija.musa@techbridge.ng'),
(1071, 'Tunde',      'Ogunleye',   'Male',   7, 2, '2019-11-12', 'tunde.ogunleye@techbridge.ng'),
(1072, 'Amina',      'Garba',      'Female', 7, 1, '2022-06-03', 'amina.garba@techbridge.ng'),
(1073, 'Chukwu',     'Obi',        'Male',   7, 3, '2013-08-28', 'chukwu.obi@techbridge.ng'),
(1074, 'Folake',     'Adeyemi',    'Female', 7, 2, '2021-05-21', 'folake.adeyemi@techbridge.ng'),
(1075, 'Dele',       'Olusanya',   'Male',   7, 1, '2023-12-04', 'dele.olusanya@techbridge.ng'),
(1076, 'Bisi',       'Adesanya',   'Female', 8, 3, '2015-03-09', 'bisi.adesanya@techbridge.ng'),
(1077, 'Kayode',     'Ogundimu',   'Male',   8, 2, '2019-07-18', 'kayode.ogundimu@techbridge.ng'),
(1078, 'Amara',      'Okonkwo',    'Female', 8, 1, '2023-10-16', 'amara.okonkwo@techbridge.ng'),
(1079, 'Femi',       'Adewuyi',    'Male',   8, 3, '2016-01-27', 'femi.adewuyi@techbridge.ng'),
(1080, 'Stella',     'Eze',        'Female', 8, 2, '2020-11-09', 'stella.eze@techbridge.ng'),
(1081, 'Niyi',       'Oladipo',    'Male',   8, 1, '2024-08-05', 'niyi.oladipo@techbridge.ng'),
(1082, 'Chibundo',   'Nwachukwu',  'Female', 8, 3, '2014-06-23', 'chibundo.nwachukwu@techbridge.ng'),
(1083, 'Dami',       'Afolabi',    'Male',   8, 2, '2021-08-14', 'dami.afolabi@techbridge.ng'),
(1084, 'Titi',       'Ogunleye',   'Female', 8, 1, '2022-03-30', 'titi.ogunleye@techbridge.ng'),
(1085, 'Bolu',       'Adewale',    'Male',   8, 3, '2017-10-21', 'bolu.adewale@techbridge.ng');

-- TABLE 4: SALARIES

CREATE TABLE salaries (
    salary_id     INT PRIMARY KEY AUTO_INCREMENT,
    employee_id   INT NOT NULL,
    monthly_salary DECIMAL(10,2) NOT NULL,
    effective_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO salaries (employee_id, monthly_salary, effective_date) VALUES
-- Engineering (highest salaries)
(1001, 620000.00, '2018-03-15'),
(1002, 480000.00, '2020-07-01'),
(1003, 280000.00, '2023-01-10'),
(1004, 650000.00, '2017-05-20'),
(1005, 490000.00, '2021-09-14'),
(1006, 265000.00, '2024-02-28'),
(1007, 680000.00, '2016-11-05'),
(1008, 475000.00, '2020-03-22'),
(1009, 270000.00, '2023-08-19'),
(1010, 700000.00, '2015-06-30'),
(1011, 460000.00, '2019-04-11'),
(1012, 255000.00, '2024-06-01'),
(1013, 720000.00, '2014-09-08'),
(1014, 485000.00, '2021-01-17'),
(1015, 260000.00, '2022-11-25'),
-- Marketing
(1016, 380000.00, '2020-05-14'),
(1017, 520000.00, '2017-08-22'),
(1018, 210000.00, '2023-03-07'),
(1019, 370000.00, '2019-12-01'),
(1020, 540000.00, '2016-07-19'),
(1021, 200000.00, '2024-01-15'),
(1022, 360000.00, '2021-06-28'),
(1023, 530000.00, '2015-10-04'),
(1024, 205000.00, '2022-09-13'),
(1025, 375000.00, '2020-02-20'),
-- Human Resources
(1026, 190000.00, '2023-05-09'),
(1027, 430000.00, '2018-01-23'),
(1028, 310000.00, '2020-10-15'),
(1029, 185000.00, '2024-04-02'),
(1030, 440000.00, '2016-03-18'),
(1031, 320000.00, '2019-08-27'),
(1032, 195000.00, '2022-07-14'),
(1033, 460000.00, '2013-11-30'),
(1034, 315000.00, '2021-04-06'),
(1035, 188000.00, '2023-09-21'),
-- Finance
(1036, 580000.00, '2015-02-14'),
(1037, 420000.00, '2020-06-09'),
(1038, 240000.00, '2023-02-17'),
(1039, 610000.00, '2017-07-25'),
(1040, 410000.00, '2021-11-03'),
(1041, 235000.00, '2024-03-11'),
(1042, 620000.00, '2014-08-16'),
(1043, 400000.00, '2019-05-29'),
(1044, 230000.00, '2022-12-07'),
(1045, 595000.00, '2016-09-12'),
-- Customer Service
(1046, 175000.00, '2023-06-19'),
(1047, 290000.00, '2019-03-04'),
(1048, 390000.00, '2017-01-28'),
(1049, 170000.00, '2024-05-06'),
(1050, 285000.00, '2020-08-31'),
(1051, 400000.00, '2015-04-22'),
(1052, 172000.00, '2022-10-18'),
(1053, 295000.00, '2021-02-14'),
(1054, 410000.00, '2016-12-09'),
(1055, 168000.00, '2023-11-27'),
-- IT
(1056, 450000.00, '2020-01-13'),
(1057, 590000.00, '2016-06-07'),
(1058, 250000.00, '2023-04-24'),
(1059, 440000.00, '2019-10-08'),
(1060, 600000.00, '2015-08-14'),
(1061, 245000.00, '2024-07-01'),
(1062, 435000.00, '2021-03-19'),
(1063, 610000.00, '2014-11-03'),
(1064, 242000.00, '2022-08-22'),
(1065, 445000.00, '2020-04-30'),
-- Operations
(1066, 180000.00, '2023-07-11'),
(1067, 410000.00, '2017-02-16'),
(1068, 300000.00, '2020-09-25'),
(1069, 178000.00, '2024-01-30'),
(1070, 420000.00, '2016-05-17'),
(1071, 305000.00, '2019-11-12'),
(1072, 182000.00, '2022-06-03'),
(1073, 430000.00, '2013-08-28'),
(1074, 298000.00, '2021-05-21'),
(1075, 176000.00, '2023-12-04'),
-- Sales
(1076, 500000.00, '2015-03-09'),
(1077, 350000.00, '2019-07-18'),
(1078, 220000.00, '2023-10-16'),
(1079, 520000.00, '2016-01-27'),
(1080, 345000.00, '2020-11-09'),
(1081, 215000.00, '2024-08-05'),
(1082, 530000.00, '2014-06-23'),
(1083, 340000.00, '2021-08-14'),
(1084, 212000.00, '2022-03-30'),
(1085, 510000.00, '2017-10-21');

-- ANALYSIS QUERIES

-- 1: Total headcount and gender breakdown per department
SELECT
    d.department_name                          AS Department,
    COUNT(e.employee_id)                       AS Total_Employees,
    SUM(CASE WHEN e.gender = 'Male'   THEN 1 ELSE 0 END) AS Male_Count,
    SUM(CASE WHEN e.gender = 'Female' THEN 1 ELSE 0 END) AS Female_Count,
    ROUND(
        SUM(CASE WHEN e.gender = 'Female' THEN 1 ELSE 0 END)
        / COUNT(e.employee_id) * 100, 1
    )                                          AS Female_Percentage
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY Total_Employees DESC;

-- 2: Average salary by department and job level
SELECT
    d.department_name                          AS Department,
    jl.level_name                              AS Job_Level,
    COUNT(e.employee_id)                       AS Headcount,
    FORMAT(AVG(s.monthly_salary), 2)           AS Avg_Monthly_Salary,
    FORMAT(MIN(s.monthly_salary), 2)           AS Min_Salary,
    FORMAT(MAX(s.monthly_salary), 2)           AS Max_Salary
FROM employees e
JOIN departments d  ON e.department_id = d.department_id
JOIN job_levels jl  ON e.level_id      = jl.level_id
JOIN salaries s     ON e.employee_id   = s.employee_id
GROUP BY d.department_name, jl.level_name, 	jl.level_name, jl.level_id
ORDER BY d.department_name, jl.level_id;

-- 3: Employees with tenure greater than 5 years
SELECT
    e.employee_id                              AS Employee_ID,
    CONCAT(e.first_name, ' ', e.last_name)    AS Full_Name,
    e.gender                                   AS Gender,
    d.department_name                          AS Department,
    jl.level_name                              AS Job_Level,
    e.hire_date                                AS Hire_Date,
    TIMESTAMPDIFF(YEAR, e.hire_date, CURDATE()) AS Years_of_Service
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN job_levels jl ON e.level_id      = jl.level_id
WHERE TIMESTAMPDIFF(YEAR, e.hire_date, CURDATE()) > 5
ORDER BY Years_of_Service DESC;

-- 4: Salary outliers — employees earning 20% above department average
SELECT
    CONCAT(e.first_name, ' ', e.last_name)    AS Full_Name,
    d.department_name                          AS Department,
    jl.level_name                              AS Job_Level,
    FORMAT(s.monthly_salary, 2)               AS Monthly_Salary,
    FORMAT(dept_avg.avg_salary, 2)            AS Dept_Avg_Salary,
    ROUND(
        (s.monthly_salary - dept_avg.avg_salary)
        / dept_avg.avg_salary * 100, 1
    )                                          AS Pct_Above_Avg
FROM employees e
JOIN departments d  ON e.department_id = d.department_id
JOIN job_levels jl  ON e.level_id      = jl.level_id
JOIN salaries s     ON e.employee_id   = s.employee_id
JOIN (
    SELECT e2.department_id, AVG(s2.monthly_salary) AS avg_salary
    FROM employees e2
    JOIN salaries s2 ON e2.employee_id = s2.employee_id
    GROUP BY e2.department_id
) AS dept_avg ON e.department_id = dept_avg.department_id
WHERE s.monthly_salary > dept_avg.avg_salary * 1.20
ORDER BY Pct_Above_Avg DESC;

-- 5: Salary bands using CASE WHEN
SELECT
    CONCAT(e.first_name, ' ', e.last_name)    AS Full_Name,
    d.department_name                          AS Department,
    FORMAT(s.monthly_salary, 2)               AS Monthly_Salary,
    CASE
        WHEN s.monthly_salary < 250000  THEN 'Entry Band (Below ₦250k)'
        WHEN s.monthly_salary < 450000  THEN 'Mid Band (₦250k–₦450k)'
        ELSE                                 'Senior Band (₦450k+)'
    END                                        AS Salary_Band
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN salaries s    ON e.employee_id   = s.employee_id
ORDER BY s.monthly_salary DESC;

-- 6: Departments with more than 10 employees (HAVING clause)
SELECT
    d.department_name                          AS Department,
    COUNT(e.employee_id)                       AS Total_Employees,
    FORMAT(AVG(s.monthly_salary), 2)           AS Avg_Salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN salaries s    ON e.employee_id   = s.employee_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 10
ORDER BY Total_Employees DESC;

-- 7: Full employee report (all tables joined)
SELECT
    e.employee_id                              AS ID,
    CONCAT(e.first_name, ' ', e.last_name)    AS Full_Name,
    e.gender                                   AS Gender,
    d.department_name                          AS Department,
    d.location                                 AS Office_Location,
    jl.level_name                              AS Job_Level,
    FORMAT(s.monthly_salary, 2)               AS Monthly_Salary,
    e.hire_date                                AS Hire_Date,
    TIMESTAMPDIFF(YEAR, e.hire_date, CURDATE()) AS Years_of_Service,
    e.email                                    AS Email
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN job_levels jl ON e.level_id      = jl.level_id
JOIN salaries s    ON e.employee_id   = s.employee_id
ORDER BY d.department_name, s.monthly_salary DESC;
