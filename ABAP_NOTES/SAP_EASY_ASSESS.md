# SAP ABAP Interview Preparation Notes
**Date:** 02 July 2026

---

# Today's Topics

- SAP Logon
- SAP Easy Access
- SE38 (ABAP Editor)
- Creating an Executable Program
- Program Naming Convention
- Package vs Local Object
- REPORT Statement
- DATA Statement
- Chain Statement
- Variable Assignment
- Arithmetic Operators
- WRITE Statement
- PARAMETERS Statement
- DEFAULT Keyword
- OBLIGATORY Keyword
- Program Execution
- Shortcut Keys

---

# 1. SAP Logon

SAP Logon is the application used to connect to an SAP system.

Flow:

SAP Logon
↓
Select Server
↓
Enter Client
↓
Username
↓
Password
↓
SAP Easy Access

---

# 2. SAP Easy Access

SAP Easy Access is the main navigation screen after successful login.

It is used to:
- Execute Transaction Codes
- Access SAP Modules
- Run Reports

---

# 3. SE38 (ABAP Editor)

SE38 is the transaction code used to:

- Create Programs
- Edit Programs
- Activate Programs
- Execute Programs
- Debug Programs

---

# 4. Program Naming Convention

SAP reserves program names beginning with A–X for standard programs.

Customer-developed programs must begin with:

- Y
- Z

Examples

```abap
REPORT zstudent.

REPORT yemployee.
```

---

# 5. Package

A Package is a repository object used to organize development objects.

It can contain:

- Programs
- Tables
- Function Modules
- Classes
- Interfaces
- Data Elements

Package objects are transportable.

---

# 6. Local Object ($TMP)

Local Objects are used for practice and testing.

Characteristics

- Not Transportable
- Stored Locally
- Cannot be moved to another SAP system

---

# Package vs Local Object

| Package | Local Object |
|----------|--------------|
| Transportable | Not Transportable |
| Used in Projects | Used for Practice |
| Repository Object | Local Development |

---

# 7. REPORT Statement

Every executable ABAP report starts with the REPORT statement.

Syntax

```abap
REPORT zdemo.
```

Purpose

- Defines an executable report
- Marks the beginning of the program

---

# 8. DATA Statement

The DATA statement is used to declare variables.

Syntax

```abap
DATA variable TYPE datatype.
```

Example

```abap
DATA age TYPE i.
```

---

# 9. Chain Statement

Multiple variables can be declared using one DATA statement.

Syntax

```abap
DATA:
  a TYPE i,
  b TYPE i,
  c TYPE i.
```

Advantages

- Less code
- Better readability
- Easy maintenance

---

# 10. Common ABAP Data Types

| Data Type | Meaning |
|-----------|---------|
| C | Character |
| N | Numeric Character |
| I | Integer |
| P | Packed Number |
| F | Floating Point |
| D | Date |
| T | Time |
| STRING | Variable Length Character |

---

# 11. Variable Assignment

Values are assigned using the assignment operator (=).

Example

```abap
a = 20.
b = 30.
```

Note

Every ABAP statement must end with a period (.).

---

# 12. Arithmetic Operators

Addition

```abap
c = a + b.
```

Operators

```text
+   Addition
-   Subtraction
*   Multiplication
/   Division
```

---

# 13. WRITE Statement

WRITE is used to display output.

Syntax

```abap
WRITE variable.
```

Example

```abap
WRITE c.
```

Display Multiple Values

```abap
WRITE:
  / 'First Number :', a,
  / 'Second Number:', b,
  / 'Sum          :', c.
```

---

# 14. PARAMETERS Statement

PARAMETERS creates input fields on the Selection Screen.

Syntax

```abap
PARAMETERS p_num TYPE i.
```

Multiple Parameters

```abap
PARAMETERS:
  p_a TYPE i,
  p_b TYPE i.
```

Purpose

- Accept runtime input
- Automatically creates Selection Screen

---

# 15. DEFAULT Keyword

DEFAULT assigns an initial value to a parameter.

Example

```abap
PARAMETERS p_num TYPE i DEFAULT 100.
```

If the user enters nothing,

Value = 100

---

# 16. OBLIGATORY Keyword

OBLIGATORY makes the field mandatory.

Syntax

```abap
PARAMETERS p_name TYPE c LENGTH 20 OBLIGATORY.
```

If left blank,

SAP displays

```text
Fill out all required entry fields.
```

---

# 17. Sample Addition Program

```abap
REPORT zaddition.

PARAMETERS:
  p_a TYPE i OBLIGATORY,
  p_b TYPE i.

DATA:
  a TYPE i,
  b TYPE i,
  c TYPE i.

a = p_a.
b = p_b.

c = a + b.

WRITE:
  / 'First Number :', a,
  / 'Second Number:', b,
  / 'Sum          :', c.
```

---

# 18. Program Execution Flow

```text
SAP Logon
      ↓
SAP Easy Access
      ↓
SE38
      ↓
Create Program
      ↓
Write Code
      ↓
Save
      ↓
Syntax Check
      ↓
Activate
      ↓
Execute
      ↓
Output
```

---

# 19. Shortcut Keys

| Shortcut | Purpose |
|----------|---------|
| Ctrl + S | Save |
| Ctrl + F2 | Syntax Check |
| Ctrl + F3 | Activate |
| F8 | Execute |

---

# 20. Interview Questions

### What is SE38?

SE38 is the ABAP Editor used to create, edit, activate, and execute ABAP report programs.

---

### Why should customer programs start with Y or Z?

SAP reserves A–X for standard objects. Customer developments use Y or Z.

---

### What is REPORT?

REPORT defines an executable ABAP report.

---

### What is DATA?

DATA is used to declare variables.

---

### What is the Chain Statement?

A Chain Statement allows multiple variables to be declared in a single DATA statement.

---

### What is PARAMETERS?

PARAMETERS creates input fields on the Selection Screen.

---

### What is WRITE?

WRITE displays output on the screen.

---

### What is DEFAULT?

DEFAULT assigns a predefined value to a parameter.

---

### What is OBLIGATORY?

OBLIGATORY makes the parameter mandatory.

---

### Difference between Package and Local Object?

Package
- Transportable
- Used in Projects

Local Object
- Not Transportable
- Used for Practice

---

### Why is Activation required?

Only activated programs can be executed successfully.

---

# 21. Common Beginner Mistakes

❌ Forgetting the period (.)

❌ Forgetting REPORT statement

❌ Using undeclared variables

❌ Forgetting to Activate the program

❌ Saving in the wrong Package

❌ Missing OBLIGATORY input

---

# 22. Important Points to Remember

- Every ABAP statement ends with a period (.).
- REPORT is the first statement in an executable report.
- DATA declares variables.
- TYPE specifies the data type.
- PARAMETERS accepts user input.
- WRITE displays output.
- DEFAULT assigns an initial value.
- OBLIGATORY makes input mandatory.
- Customer objects should always begin with Y or Z.
- Follow the sequence:
  **Save → Syntax Check → Activate → Execute**

---