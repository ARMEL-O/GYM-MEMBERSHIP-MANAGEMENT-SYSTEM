-- =========================================================
-- Gym Membership Management System - Queries File
-- Step 3: Queries Executed
-- =========================================================

-- =========================================================
-- 🔹 JOIN Example
-- Retrieve all members with their trainers and plan names
-- =========================================================
SELECT 
    m.Name AS Member,
    t.Name AS Trainer,
    p.Name AS Plan,
    p.Price
FROM Memberships ms
JOIN Members m ON ms.Member_ID = m.Member_ID
JOIN Trainers t ON ms.Trainer_ID = t.Trainer_ID
JOIN Plans p ON ms.Plan_ID = p.Plan_ID;

-- =========================================================
-- 🔹 Subquery Example
-- Retrieve members who paid more than the average payment amount
-- =========================================================
SELECT Name
FROM Members
WHERE Member_ID IN (
    SELECT ms.Member_ID
    FROM Memberships ms
    JOIN Payments py ON ms.Membership_ID = py.Membership_ID
    GROUP BY ms.Member_ID
    HAVING SUM(py.Amount) > (SELECT AVG(Amount) FROM Payments)
);

-- =========================================================
-- 🔹 Query 1
-- Retrieve high-paying members from a view
-- =========================================================
SELECT Member_Name, Total_Paid
FROM MemberPaymentView
WHERE Total_Paid > 2000;

-- =========================================================
-- 🔹 Query 2
-- Retrieve trainers managing more than one member
-- =========================================================
SELECT Trainer, Total_Members
FROM TrainerMemberView
WHERE Total_Members > 1;

-- =========================================================
-- 🔹 Query 3
-- Generate monthly revenue report for the year 2025
-- =========================================================
SELECT Year, Month, Monthly_Revenue
FROM MonthlyRevenueView
WHERE Year = 2025
ORDER BY Month;

-- =========================================================
-- ✅ End of File
-- =========================================================
