-- ==========================================
-- Gym Membership Management System
-- File: views.sql
-- Description: Contains SQL views for reporting and analysis
-- ==========================================

-- View 1: MemberPaymentView
-- Purpose: Display each member’s total payment, membership type, and trainer.
CREATE OR REPLACE VIEW MemberPaymentView AS
SELECT 
    m.Member_ID,
    m.Name AS Member_Name,
    mem.Type AS Membership_Type,
    t.Name AS Trainer_Name,
    SUM(p.Amount) AS Total_Paid
FROM Members m
INNER JOIN Memberships mem ON m.Membership_ID = mem.Membership_ID
LEFT JOIN Trainers t ON m.Trainer_ID = t.Trainer_ID
INNER JOIN Payments p ON m.Member_ID = p.Member_ID
GROUP BY m.Member_ID, m.Name, mem.Type, t.Name;


-- View 2: TrainerPerformanceView
-- Purpose: Show each trainer’s total assigned members and total revenue generated.
CREATE OR REPLACE VIEW TrainerPerformanceView AS
SELECT 
    t.Trainer_ID,
    t.Name AS Trainer_Name,
    t.Specialty,
    COUNT(m.Member_ID) AS Total_Members,
    SUM(p.Amount) AS Total_Revenue
FROM Trainers t
LEFT JOIN Members m ON t.Trainer_ID = m.Trainer_ID
LEFT JOIN Payments p ON m.Member_ID = p.Member_ID
GROUP BY t.Trainer_ID, t.Name, t.Specialty;


-- View 3: MonthlyRevenueView
-- Purpose: Show total payments collected each month (for reports/trends).
CREATE OR REPLACE VIEW MonthlyRevenueView AS
SELECT 
    EXTRACT(YEAR FROM p.Payment_Date) AS Year,
    EXTRACT(MONTH FROM p.Payment_Date) AS Month,
    SUM(p.Amount) AS Monthly_Total
FROM Payments p
GROUP BY EXTRACT(YEAR FROM p.Payment_Date), EXTRACT(MONTH FROM p.Payment_Date)
ORDER BY Year, Month;

-- ==========================================
-- End of File: views.sql
-- ==========================================
