-- ============================================
-- 1. Members Table
-- ============================================

INSERT INTO Members (Name, Age, Gender, Phone, Join_Date)
VALUES
('John Doe', 25, 'Male', '9998887777', '2025-10-01'),
('Jane Smith', 28, 'Female', '8887776666', '2025-10-05'),
('Alex Carter', 32, 'Male', '7776665555', '2025-10-10');

-- ============================================
-- 2. Trainers Table
-- ============================================

INSERT INTO Trainers (Name, Specialty, Phone)
VALUES
('Mike Johnson', 'Strength Training', '7776665555'),
('Sara Lee', 'Yoga', '6665554444');

-- ============================================
-- 3. Plans Table
-- ============================================

INSERT INTO Plans (Name, Duration, Price)
VALUES
('Basic', 1, 1000.00),
('Premium', 3, 2500.00),
('Elite', 6, 4500.00);

-- ============================================
-- 4. Memberships Table
-- ============================================

INSERT INTO Memberships (Member_ID, Trainer_ID, Plan_ID, Start_Date, End_Date)
VALUES
(1, 1, 2, '2025-10-01', '2026-01-01'),
(2, 2, 1, '2025-10-05', '2025-11-05'),
(3, 1, 3, '2025-10-10', '2026-04-10');

-- ============================================
-- 5. Payments Table
-- ============================================

INSERT INTO Payments (Membership_ID, Amount, Payment_Date, Method)
VALUES
(1, 2500.00, '2025-10-01', 'Cash'),
(2, 1000.00, '2025-10-05', 'UPI'),
(3, 4500.00, '2025-10-10', 'Credit Card');
