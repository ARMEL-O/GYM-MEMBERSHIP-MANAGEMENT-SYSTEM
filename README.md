# 🏋️‍♂️ Gym Membership Management System
*A Database Management System Project*

## 📘 Overview
The **Gym Membership Management System** is a database project designed to manage gym operations efficiently.  
It focuses on handling **memberships, trainers, plans, and payments** within a fitness center using a **relational database model**.

This project demonstrates the use of SQL concepts such as:
- Table creation with relationships
- Primary and foreign key constraints
- JOINs, subqueries, and aggregate functions
- SQL Views for reporting and analytics

---

## 🧠 Problem Statement
Most small or local gyms rely on manual or spreadsheet-based systems, which leads to:
- Data inconsistency and redundancy  
- Difficulty tracking membership renewals and payments  
- No centralized view of members, trainers, and plans  
- Lack of automated reports  

This system solves these problems by **automating data management** and ensuring **data integrity** through a relational schema.

---

## 🎯 Objectives
- Create a **centralized database** for all gym-related records  
- Simplify **membership tracking** and **payment management**  
- Provide **insights** through SQL Views and queries  
- Maintain **relationships** between members, trainers, and plans  

---

## 🧩 Database Design

gym-membership-management-system/
│
├── 📄 README.md
│
├── 📁 database/
│   ├── schema.sql           # SQL commands to create tables
│   ├── sample_data.sql      # INSERT statements for example data
│   ├── views.sql            # SQL views for data analysis
│   ├── queries.sql          # JOIN, subquery, and report queries
│   └── er_diagram.png       # Entity Relationship Diagram
│
├── 📁 documentation/
│   ├── project_report.docx  # Detailed report (Problem, Design, etc.)
│   ├── screenshots/         # Query outputs, schema, and results
│   │   ├── schema_result.png
│   │   ├── join_query_output.png
│   │   ├── views_output.png
│   └── presentation.pptx    # Optional presentation for viva/demo
│

### **Entities and Attributes**
**Members**
- Member_ID *(PK)*
- Name  
- Age  
- Gender  
- Phone  
- Join_Date  

**Trainers**
- Trainer_ID *(PK)*
- Name  
- Specialty  
- Phone  

**Plans**
- Plan_ID *(PK)*
- Name  
- Duration (months)  
- Price  

**Memberships**
- Membership_ID *(PK)*  
- Member_ID *(FK)*  
- Trainer_ID *(FK)*  
- Plan_ID *(FK)*  
- Start_Date  
- End_Date  

**Payments**
- Payment_ID *(PK)*  
- Membership_ID *(FK)*  
- Amount  
- Payment_Date  
- Method  

---

## 🧱 Relational Schema
| Relationship | Type | Key |
|---------------|------|-----|
| Members → Memberships | 1-to-Many | Member_ID |
| Trainers → Memberships | 1-to-Many | Trainer_ID |
| Plans → Memberships | 1-to-Many | Plan_ID |
| Memberships → Payments | 1-to-Many | Membership_ID |

---

## 🧰 Implementation Steps

### 1️⃣ Create Tables
All entities are created using `CREATE TABLE` statements with appropriate constraints.

### 2️⃣ Insert Sample Data
Preloaded sample data for members, trainers, plans, and payments.

### 3️⃣ Execute Queries
- Retrieve data using `JOIN`
- Use `SUBQUERIES` for analytical results
- Demonstrate `GROUP BY` and aggregate functions

### 4️⃣ Create Views
- `MemberPaymentView` – Total payment per member  
- `TrainerMemberView` – Number of members per trainer  
- `MonthlyRevenueView` – Revenue summary by month  

---

## 🧪 Example Queries

### 🔹 Retrieve all members with trainers and plans
```sql
SELECT m.Name AS Member, t.Name AS Trainer, p.Name AS Plan, p.Price
FROM Memberships ms
JOIN Members m ON ms.Member_ID = m.Member_ID
JOIN Trainers t ON ms.Trainer_ID = t.Trainer_ID
JOIN Plans p ON ms.Plan_ID = p.Plan_ID;

📊 ER Diagram
🧾 Results
All tables and relationships successfully created
Queries and views executed correctly
Database ensures referential integrity
Simplified revenue and membership reporting
