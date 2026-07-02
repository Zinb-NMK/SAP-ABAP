# SAP ABAP – Data Types (Complete Interview Notes)

---

# What is a Data Type?

A **Data Type** defines:

- What type of value a variable can store.
- How much memory is allocated.
- The range of values it can hold.
- The default (initial) value.
- What operations can be performed on it.

Every variable in ABAP must have a data type.

---

# Variable Declaration Syntax

## Classic Syntax

```abap
DATA <variable_name> TYPE <data_type>.
```

Example

```abap
DATA lv_age TYPE i.
```

---

## Modern Syntax (ABAP 7.40+)

```abap
DATA(lv_age) = 25.
```

---

# Classification of Data Types

## 1. Based on Data Stored

### Numeric Data Types

- Integer (I)
- Float (F)
- Packed Decimal (P)

### Character Data Types

- Character (C)
- Numeric Character (N)
- Date (D)
- Time (T)

---

## 2. Based on Length

### Fixed-Length Data Types

These have predefined storage sizes.

| Data Type | Length |
|------------|---------|
| I | 4 Bytes |
| F | 8 Bytes |
| D | 8 Characters |
| T | 6 Characters |

---

### Variable-Length (Length-Specifiable) Data Types

The programmer specifies the length.

| Data Type | Example |
|------------|----------|
| C | DATA lv_name(20) TYPE c. |
| N | DATA lv_pin(6) TYPE n. |
| P | DATA lv_amt(10) TYPE p DECIMALS 2. |

---

# Elementary Data Types

| Data Type | Meaning | Stores | Default Value |
|------------|----------|---------|---------------|
| I | Integer | Whole Numbers | 0 |
| F | Float | Decimal Numbers | 0 |
| P | Packed Decimal | Exact Decimal Values | 0 |
| C | Character | Letters, Numbers, Symbols | Space |
| N | Numeric Character | Numeric Characters | Zeros |
| D | Date | Date | 00000000 |
| T | Time | Time | 000000 |

---

# TYPE I (Integer)

## Definition

Stores whole numbers.

## Syntax

```abap
DATA lv_num TYPE i.
```

## Example

```abap
DATA lv_age TYPE i.

lv_age = 25.

WRITE lv_age.
```

## Properties

- Whole numbers only
- No decimal values
- Default value = 0
- Memory = 4 Bytes
- Approximately 10 digits
- Fixed-length datatype

## Uses

- Counters
- Loop variables
- Quantity calculations

---

# TYPE F (Float)

## Definition

Stores decimal numbers using floating-point representation.

## Syntax

```abap
DATA lv_value TYPE f.
```

## Example

```abap
DATA lv_value TYPE f.

lv_value = '123.456'.

WRITE lv_value.
```

## Properties

- Default value = 0
- Memory = 8 Bytes
- Fixed-length datatype
- Approximate calculations
- Supports many decimal places

## Important

Do NOT use TYPE F for currency calculations because floating-point calculations may produce rounding errors.

---

# TYPE P (Packed Decimal)

## Definition

Stores exact decimal values.

Best suited for financial calculations.

## Syntax

```abap
DATA lv_salary(10) TYPE p DECIMALS 2.
```

## Example

```abap
DATA lv_salary(10) TYPE p DECIMALS 2.

lv_salary = '12500.75'.

WRITE lv_salary.
```

## Properties

- Exact decimal calculations
- Default value = 0
- Programmer specifies length
- Variable-length datatype
- Supports DECIMALS option

## Uses

- Salary
- Currency
- Tax
- Discounts
- Financial calculations

---

# TYPE C (Character)

## Definition

Stores letters, numbers and special characters.

## Syntax

```abap
DATA lv_name(20) TYPE c.
```

## Example

```abap
DATA lv_name(20) TYPE c.

lv_name = 'MANOJ'.

WRITE lv_name.
```

## Properties

- Alphanumeric
- Default value = Space
- Variable-length datatype
- Left aligned

---

## Important Interview Point

If length is NOT specified

```abap
DATA lv_char TYPE c.
```

ABAP automatically assigns

```abap
DATA lv_char(1) TYPE c.
```

Default length = **1 Character**

Example

```abap
DATA lv_char TYPE c.

lv_char = 'ABCD'.

WRITE lv_char.
```

Output

```
A
```

Only one character is stored.

---

# TYPE N (Numeric Character)

## Definition

Stores numeric characters only.

## Syntax

```abap
DATA lv_pin(6) TYPE n.
```

## Example

```abap
DATA lv_pin(6) TYPE n.

lv_pin = '123456'.

WRITE lv_pin.
```

## Properties

- Stores digits (0-9)
- Default value = Zeros
- Variable-length datatype
- Leading zeros are preserved

Example

```
000123
```

---

# TYPE D (Date)

## Definition

Stores dates.

## Syntax

```abap
DATA lv_date TYPE d.
```

## Example

```abap
DATA lv_date TYPE d.

lv_date = '20260701'.

WRITE lv_date.
```

## Properties

- Format = YYYYMMDD
- Default value = 00000000
- Length = 8 Characters
- Fixed-length datatype

Current Date

```abap
WRITE SY-DATUM.
```

---

# TYPE T (Time)

## Definition

Stores time.

## Syntax

```abap
DATA lv_time TYPE t.
```

## Example

```abap
DATA lv_time TYPE t.

lv_time = '143025'.

WRITE lv_time.
```

## Properties

- Format = HHMMSS
- Default value = 000000
- Length = 6 Characters
- Fixed-length datatype

Current Time

```abap
WRITE SY-UZEIT.
```

---

# Default Values

| Data Type | Default Value |
|------------|---------------|
| I | 0 |
| F | 0 |
| P | 0 |
| C | Space |
| N | Zeros |
| D | 00000000 |
| T | 000000 |

---

# Memory Size

| Data Type | Memory |
|------------|---------|
| I | 4 Bytes |
| F | 8 Bytes |
| P | Depends on declared length |
| C | 1 Byte per character |
| N | 1 Byte per digit |
| D | 8 Characters |
| T | 6 Characters |

---

# System Fields

| System Field | Description |
|--------------|-------------|
| SY-DATUM | Current System Date |
| SY-UZEIT | Current System Time |
| SY-SUBRC | Return Code |
| SY-UNAME | Logged-in User |
| SY-MANDT | Client Number |

---

# Difference Between I, F and P

| I | F | P |
|---|---|---|
| Whole Numbers | Decimal Numbers | Exact Decimal Numbers |
| Fast | Approximate | Accurate |
| No Decimals | Supports Decimals | Supports Decimals |
| Counters | Scientific Calculations | Currency |

---

# Difference Between C and N

| C | N |
|---|---|
| Letters + Numbers | Numbers Only |
| Space Default | Zero Default |
| Alphanumeric | Numeric Characters |
| ABC123 | 001234 |

---

# Difference Between D and T

| D | T |
|---|---|
| Date | Time |
| YYYYMMDD | HHMMSS |
| 8 Characters | 6 Characters |

---

# Fixed-Length vs Variable-Length

## Fixed-Length

- I
- F
- D
- T

## Variable-Length

- C
- N
- P

---

# Best Practices

✔ Use TYPE I for counters.

✔ Use TYPE P for salary and currency.

✔ Avoid TYPE F for financial calculations.

✔ Use TYPE C for names.

✔ Use TYPE N for PINs and Employee IDs.

✔ Use TYPE D for dates.

✔ Use TYPE T for time.

---

# Most Asked Interview Questions (20)

## 1. What is a data type?

A data type defines the type of value a variable can store, its memory allocation, default value, and valid operations.

---

## 2. How are ABAP data types classified?

- Numeric Data Types
- Character Data Types

Also classified as:

- Fixed-Length
- Variable-Length

---

## 3. Which are numeric data types?

- I
- F
- P

---

## 4. Which are character data types?

- C
- N
- D
- T

---

## 5. Which are fixed-length data types?

I, F, D, T

---

## 6. Which are variable-length data types?

C, N, P

---

## 7. What is the default value of TYPE I?

0

---

## 8. What is the default value of TYPE C?

Space

---

## 9. What is the default value of TYPE D?

00000000

---

## 10. What is the default value of TYPE T?

000000

---

## 11. What is the difference between TYPE C and TYPE N?

TYPE C stores letters, numbers, and symbols.

TYPE N stores only numeric characters.

---

## 12. What is the difference between TYPE P and TYPE F?

TYPE P performs exact decimal calculations.

TYPE F performs approximate decimal calculations.

---

## 13. Which datatype should be used for currency?

TYPE P

---

## 14. Why shouldn't TYPE F be used for financial calculations?

Because floating-point calculations may introduce rounding errors.

---

## 15. What is the format of TYPE D?

YYYYMMDD

---

## 16. What is the format of TYPE T?

HHMMSS

---

## 17. Which system field returns the current date?

SY-DATUM

---

## 18. Which system field returns the current time?

SY-UZEIT

---

## 19. What happens if you declare

```abap
DATA lv_char TYPE c.
```

without specifying a length?

ABAP automatically assigns a default length of **1 character**. It is equivalent to:

```abap
DATA lv_char(1) TYPE c.
```

If you assign `"ABCD"`, only `"A"` is stored.

---

## 20. Which datatype is most commonly used for names?

TYPE C

---

# Quick Revision Table

| Type | Stores | Default | Fixed/Variable | Best Use |
|------|---------|----------|----------------|----------|
| I | Integer | 0 | Fixed | Counters |
| F | Float | 0 | Fixed | Scientific Calculations |
| P | Decimal | 0 | Variable | Currency |
| C | Characters | Space | Variable | Names |
| N | Numeric Characters | Zero | Variable | PIN, Employee ID |
| D | Date | 00000000 | Fixed | Dates |
| T | Time | 000000 | Fixed | Time |

---

# Interview Tip

**Remember this order:**

**I → F → P → C → N → D → T**

**Mnemonic:**

**"Intelligent Friends Prefer Clean New Dresses Today."**

This sequence is commonly used while explaining ABAP elementary data types in interviews.