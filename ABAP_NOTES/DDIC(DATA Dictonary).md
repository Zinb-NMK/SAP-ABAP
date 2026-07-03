# SAP ABAP - Data Dictionary (DDIC)
## Topic Covered: Delivery Class, Technical Settings & Direct Table Creation (SE11)

**Course:** SAP ABAP (ECC)
**Topic:** Data Dictionary (DDIC)
**Level:** Beginner
**Prepared By:** Manoj Kumar
**Date:** 03-July-2026

---

# Table of Contents

1. Introduction to SAP Data Dictionary (DDIC)
2. Why DDIC is Required
3. Database Tables
4. Methods of Table Creation
5. Primary Key
6. Delivery Class
7. Technical Settings
8. Data Class
9. Size Category
10. Direct Table Creation (SE11)
11. Table Maintenance
12. Real-Time Notes
13. Interview Questions & Answers
14. Revision Summary

---

# 1. Introduction to SAP Data Dictionary (DDIC)

## Definition

The **SAP Data Dictionary (DDIC)** is the central repository of SAP where all database objects are defined, stored, and maintained.

It contains information about every database object such as tables, views, domains, data elements, search helps, lock objects, and structures.

In simple words,

> DDIC is the place where SAP stores the definitions of database objects.

---

## Why DDIC is Required

Without DDIC,

- SAP cannot understand table structures.
- Data consistency cannot be maintained.
- Standardization is impossible.
- Reusability becomes difficult.

DDIC ensures that every SAP object follows the same standard.

---

## Functions of DDIC

- Creates Database Tables
- Stores Metadata (Data about Data)
- Defines Field Properties
- Maintains Relationships
- Ensures Data Integrity
- Supports Reusability
- Maintains Database Consistency

---

# 2. Database Tables

A Database Table is a collection of related data stored in rows and columns.

Example

| Employee ID | Employee Name | Address |
|-------------|---------------|----------|
|1001|Rahul|Hyderabad|
|1002|Rohit|Vijayawada|

Rows → Records

Columns → Fields

---

# 3. Methods of Table Creation

There are two methods.

## Method 1 - Direct Method

In this method we directly provide

- Data Type
- Length
- Description

Example

| Field | Data Type | Length |
|--------|-----------|---------|
|EID|CHAR|10|
|ENAME|CHAR|25|
|EADD|CHAR|35|

### Advantages

- Easy
- Good for Beginners

### Disadvantages

- Not reusable
- Not followed in real-time projects

---

## Method 2 - Data Element Method

Flow

Domain

↓

Data Element

↓

Table Field

### Advantages

- Reusable
- Standard SAP Method
- Easy Maintenance
- Real-Time Project Standard

> This is the method followed in real SAP projects.

---

# 4. Primary Key

## Definition

A Primary Key is a field that uniquely identifies every record in a database table.

Properties

- Unique
- Cannot be Empty
- Cannot contain Duplicate Values

Example

Correct

|Employee ID|Employee Name|
|-----------|-------------|
|1001|Rahul|
|1002|Rohit|

Incorrect

|Employee ID|Employee Name|
|-----------|-------------|
|1001|Rahul|
|1001|Rohit|

Duplicate Primary Key is not allowed.

---

## Real-Life Examples

Hall Ticket Number

✔ Unique

Employee ID

✔ Unique

Vehicle Number

✔ Unique

Employee Name

❌ Not Unique

Student Name

❌ Not Unique

---

# 5. Delivery Class

## Definition

Delivery Class defines

- Ownership of the table
- Transportation behavior of table data

Transport Flow

Development

↓

Quality

↓

Production

Delivery Class decides how data is moved between SAP systems.

---

# 6. Technical Settings

Technical Settings are mandatory before activating any database table.

Technical Settings consist of

Technical Settings

=

Data Class

+

Size Category

Without Technical Settings,

The table cannot be activated.

---

# 7. Data Class

## Definition

Data Class specifies where the table is logically stored in the database.

SAP provides three important Data Classes.

---

## APPL0 - Master Data

Characteristics

- Frequently Accessed
- Rarely Updated

Examples

- Employee Master
- Customer Master
- Vendor Master
- Material Master

---

## APPL1 - Transaction Data

Characteristics

- Frequently Accessed
- Frequently Updated

Examples

- Sales Order
- Purchase Order
- Billing Document

---

## APPL2 - Organization Data

Characteristics

- Frequently Accessed
- Rarely Updated

Examples

- Company Code
- Plant
- Sales Organization
- Branch

---

## Difference

|Data Class|Access|Update|Examples|
|----------|------|------|---------|
|APPL0|Frequent|Rare|Employee|
|APPL1|Frequent|Frequent|Purchase Order|
|APPL2|Frequent|Rare|Company Code|

---

# 8. Size Category

Definition

Size Category estimates how much storage space SAP should allocate for the table.

It depends on

- Expected Number of Records
- Storage Requirement

Small Table

↓

Less Storage

Large Table

↓

More Storage

---

# 9. Direct Table Creation (SE11)

## Step 1

Open Transaction

SE11

---

## Step 2

Choose

Database Table

---

## Step 3

Enter Table Name

Starts with

Y

or

Z

Example

YEMPLOYEE

---

## Step 4

Click

Create

---

## Step 5

Enter Short Description

Employee Master Table

---

## Step 6

Enter Fields

|Field|Key|Type|Length|
|-----|----|------|------|
|EID|✓|CHAR|10|
|ENAME||CHAR|25|
|EADD||CHAR|35|

---

## Step 7

Save

Ctrl + S

---

## Step 8

Check

Ctrl + F2

---

## Step 9

Technical Settings

Data Class

APPL0

Size Category

0

---

## Step 10

Activate

Ctrl + F3

Table is Created Successfully.

---

# 10. Table Maintenance

## Insert Data

Utilities

↓

Table Contents

↓

Create Entries

---

## Display Data

Utilities

↓

Table Contents

↓

Display

Execute using F8.

---

# 11. Real-Time Notes

✔ Real projects use Data Element Method.

✔ Every table must have a Primary Key.

✔ Primary Key should generally be the first field.

✔ Technical Settings are mandatory.

✔ APPL0 is selected for Employee Master Table.

✔ Delivery Class controls transport behavior.

✔ Size Category estimates storage allocation.

---

# 12. Frequently Asked Interview Questions

---

## Q1. What is SAP Data Dictionary?

Answer

SAP Data Dictionary (DDIC) is the central repository where SAP stores and manages database object definitions such as tables, views, domains, and data elements. It ensures consistency, integrity, and reusability of data.

---

## Q2. Why is DDIC required?

Answer

DDIC provides centralized management of database objects, maintains consistency, defines metadata, and enables reusability across SAP applications.

---

## Q3. What are the two methods of creating a table?

Answer

1. Direct Method
2. Data Element Method

Direct Method is mainly used for learning, whereas the Data Element Method is the standard approach in real-time SAP projects because it supports reusability and maintenance.

---

## Q4. What is a Primary Key?

Answer

A Primary Key is a field that uniquely identifies each record in a database table. It cannot contain duplicate or null values.

---

## Q5. Give examples of Primary Keys.

Answer

- Employee ID
- Student Hall Ticket Number
- Vehicle Number
- Passport Number

---

## Q6. What is Delivery Class?

Answer

Delivery Class defines the ownership of a table and controls how table data is transported between Development, Quality, and Production systems.

---

## Q7. What are Technical Settings?

Answer

Technical Settings are mandatory settings required before activating a table. They include Data Class and Size Category.

---

## Q8. What is Data Class?

Answer

Data Class specifies where the table is logically stored in the database.

---

## Q9. Explain APPL0.

Answer

APPL0 stores Master Data that is frequently accessed but rarely updated.

Examples

Employee Master

Customer Master

Vendor Master

---

## Q10. Explain APPL1.

Answer

APPL1 stores Transaction Data that is frequently accessed and frequently updated.

Examples

Sales Orders

Purchase Orders

---

## Q11. Explain APPL2.

Answer

APPL2 stores Organization Data created during system configuration.

Examples

Company Code

Plant

Sales Organization

---

## Q12. What is Size Category?

Answer

Size Category estimates the amount of storage SAP allocates to a database table based on the expected number of records.

---

## Q13. Which Transaction Code is used to create tables?

Answer

SE11

---

## Q14. Which method is preferred in real-time projects?

Answer

The Data Element Method is preferred because it promotes reusability, consistency, and easier maintenance.

---

# 13. Quick Revision

DDIC
→ Central Repository

Database Table
→ Rows and Columns

Methods
→ Direct Method
→ Data Element Method

Primary Key
→ Unique Identifier

Delivery Class
→ Ownership & Transport

Technical Settings
→ Data Class + Size Category

APPL0
→ Master Data

APPL1
→ Transaction Data

APPL2
→ Organization Data

SE11
→ Database Table Creation

Ctrl + S
→ Save

Ctrl + F2
→ Check

Ctrl + F3
→ Activate

---

# End of Notes

These notes cover all the DDIC concepts discussed in today's class and are suitable for interview preparation and revision.