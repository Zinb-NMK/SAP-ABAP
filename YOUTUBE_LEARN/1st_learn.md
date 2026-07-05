# SAP ABAP Interview Notes

> **Topics Covered**
- SAP 3-Tier Architecture
- ABAP Application Server Architecture
- Dispatcher
- Work Process
- User Context
- Roll Area
- SAP System Landscape
- Transport Request (SE09/SE10)
- Package (SE21)
- SAP GUI Components
- Interview Questions

---

# SAP 3-Tier Architecture

SAP follows a **3-Tier Architecture**.

```text
+----------------------+
| Presentation Layer   |
| (SAP GUI / Fiori)    |
+----------+-----------+
           |
           v
+----------------------+
| Application Layer    |
| (ABAP Server)        |
+----------+-----------+
           |
           v
+----------------------+
| Database Layer       |
| (SAP HANA/Oracle)    |
+----------------------+
```

## 1. Presentation Layer

### Definition
The Presentation Layer is the front-end where users interact with SAP.

### Responsibilities
- Displays SAP screens.
- Accepts user input.
- Sends requests to the Application Server.
- Displays output received from the Application Server.

### Examples
- SAP GUI
- SAP Fiori
- Web GUI

---

## 2. Application Layer

### Definition
The Application Layer is the **brain of SAP**. It processes business logic and executes ABAP programs.

### Main Components
- Dispatcher
- Work Processes
- Buffers
- User Context
- Roll Area
- ABAP Runtime Environment

---

## 3. Database Layer

### Definition
Stores all SAP business data and repository objects.

### Stores
- Master Data
- Transaction Data
- Configuration Data
- Tables
- Programs
- Data Dictionary Objects

### Supported Databases
- SAP HANA
- Oracle
- SQL Server
- IBM DB2

---

# ABAP Application Server Architecture

```text
Presentation Server
        │
        ▼
+----------------+
| Dispatcher     |
+----------------+
        │
        ▼
 Dispatcher Queue
        │
        ▼
+--------------------------------+
| Work Processes                 |
|  WP   WP   WP   WP             |
+--------------------------------+
        │
        ▼
 User Context + Roll Area
        │
        ▼
   Database Server
```

---

# Dispatcher

## Definition

The Dispatcher is the **traffic controller** of the SAP Application Server.

It receives requests from users and assigns them to available Work Processes.

---

## Working Process

1. User sends request.
2. Dispatcher receives the request.
3. Request is stored in Dispatcher Queue.
4. Dispatcher finds a free Work Process.
5. Work Process executes the request.
6. Result is sent back to the user.

---

## Dispatcher Queue

All requests are stored in a queue before processing.

Queue follows:

**FIFO (First In First Out)**

Example

```text
Request-1
Request-2
Request-3
     │
     ▼
Dispatcher Queue
     │
     ▼
Available Work Process
```

---

## Responsibilities

- Receives requests
- Maintains request queue
- Assigns Work Processes
- Balances workload
- Improves system performance

---

## Interview Answer

**Q: What is Dispatcher?**

Dispatcher is a component of the SAP Application Server that receives requests from SAP GUI, stores them in the Dispatcher Queue, and assigns them to available Work Processes.

---

# Work Process (WP)

## Definition

A Work Process is an execution unit that processes one user request at a time.

---

## Responsibilities

- Executes ABAP Programs
- Executes Open SQL
- Reads/Writes Database
- Sends response back to Dispatcher

---

## Important Points

- One Work Process handles one request.
- After completion it becomes free.
- Dispatcher assigns the next request.

---

# Types of Work Processes

## 1. Dialog Work Process (D)

Handles online user requests.

Examples:
- SE11
- SE38
- MM01
- VA01

---

## 2. Update Work Process (V)

Updates database after **COMMIT WORK**.

Example:
Saving Sales Orders.

---

## 3. Background Work Process (B)

Executes scheduled jobs.

Examples:
- Payroll
- Batch Jobs
- Daily Reports

---

## 4. Spool Work Process (S)

Handles printing.

Examples:
- Invoice Printing
- Purchase Orders
- Reports

---

## 5. Enqueue Work Process (E)

Locks SAP objects.

Purpose:
Prevents two users from modifying the same record simultaneously.

---

# User Context

## Definition

User Context is a memory area that stores user-specific information.

Created during login.

Released during logout.

---

## Stores

- User ID
- Client
- Language
- Authorization
- Session Information
- User Variables

---

## Why Required?

Different requests from the same user may execute in different Work Processes.

User Context allows SAP to remember the user's session.

---

## Interview Answer

User Context stores all information related to the logged-in user throughout the session.

---

# Roll Area

## Definition

Roll Area is a temporary memory area used during ABAP program execution.

Allocated when a program starts.

Released when the program ends.

---

## Stores

- Local Variables
- Internal Tables
- Program Status
- Execution Stack
- Runtime Information

---

## Interview Answer

Roll Area stores temporary execution information of an ABAP program.

---

# User Context vs Roll Area

| User Context | Roll Area |
|--------------|-----------|
| Stores user information | Stores program execution data |
| Created during login | Created during program execution |
| Deleted after logout | Deleted after program ends |
| User-specific | Program-specific |

---

# Complete Request Flow

```text
User
 │
 ▼
SAP GUI
 │
 ▼
Dispatcher
 │
 ▼
Dispatcher Queue
 │
 ▼
Available Work Process
 │
 ▼
Reads User Context
 │
 ▼
Executes Program
 │
 ▼
Database
 │
 ▼
Returns Result
 │
 ▼
SAP GUI
```

---

# SAP System Landscape

SAP systems are divided into three environments.

```text
Development (DEV)
        │
        ▼
Quality (QAS)
        │
        ▼
Production (PRD)
```

---

## Development (DEV)

Purpose

- Develop Programs
- Create Tables
- Debugging
- Unit Testing

---

## Quality (QAS)

Purpose

Testing Environment

Types:
- Functional Testing
- Integration Testing
- UAT

---

## Production (PRD)

Purpose

Live system used by customers.

Characteristics

- Real Business Data
- Stable Environment
- No Development Activities

---

# Transport Request (TR)

## Definition

Transport Request is used to move SAP objects from one system to another.

```text
Development
      │
      ▼
Quality
      │
      ▼
Production
```

---

## Why Transport Request?

Without a Transport Request:

- Programs cannot move.
- Tables cannot move.
- Dictionary Objects cannot move.
- Changes remain only in DEV.

---

# Types of Transport Requests

## 1. Workbench Request

Used for Repository Objects.

Examples

- Programs
- Tables
- Data Elements
- Domains
- Classes
- Function Modules
- Packages

Cross-client.

---

## 2. Customizing Request

Used for configuration changes.

Examples

- SPRO Settings
- Configuration Data

Client-dependent.

---

# Structure of Transport Request

```text
Workbench Request
      │
      ▼
Task
      │
      ▼
Objects
```

Example

```text
Request
 ├── Task
      ├── Program
      ├── Table
      ├── Data Element
      ├── Domain
      └── Package
```

---

# SE09 vs SE10

| SE09 | SE10 |
|------|------|
| Own Transport Requests | All Transport Requests (Authorization Based) |

---

# Steps to Create Transport Request

1. Open SE10.
2. Click **Create**.
3. Select **Workbench Request**.
4. Enter Short Description.
5. Save.
6. SAP generates Request Number.
7. Task is created automatically.
8. Assign development objects.

Example

```
EH7K900251
```

---

# Package (SE21)

## Definition

A Package is a logical container used to organize related development objects.

---

## Package Can Contain

- Programs
- Tables
- Data Elements
- Domains
- Classes
- Interfaces
- Function Modules

---

## Why Package?

- Organizes objects
- Supports transport
- Improves maintenance
- Enables code reuse

---

# Steps to Create Package

1. Open SE21.
2. Click Create.
3. Enter Package Name (Starts with Z or Y).
4. Enter Description.
5. Select Development Package.
6. Save.
7. Assign Transport Request.
8. Package Created.

---

# Naming Convention

Customer Objects should begin with:

```
ZPROGRAM
ZTABLE
ZPACKAGE
ZDOMAIN

or

YPROGRAM
YTABLE
```

---

# SAP GUI Components

## 1. Menu Bar

Contains

- Menu
- Edit
- Favorites
- Extras
- System
- Help

---

## 2. Standard Toolbar

Contains

- Save
- Back
- Exit
- Cancel
- Print
- Find
- Create Session

---

## 3. Command Bar

Used to execute T-Codes.

Examples

```
SE11
SE21
SE38
SE80
SE10
```

Useful Commands

```
/nSE11   → End current transaction and open SE11
/oSE11   → Open SE11 in new session
/i       → Close current session
/n       → Return to SAP Easy Access
```

---

## 4. Title Bar

Displays current transaction name.

Examples

- ABAP Dictionary
- Package Builder
- Transport Organizer

---

## 5. Application Toolbar

Contains transaction-specific buttons.

Examples

- Create
- Display
- Change
- Activate
- Execute
- Check

---

## 6. Screen Area

Main workspace used for entering and displaying data.

---

## 7. Status Bar

Displays

- Success Messages
- Error Messages
- Warning Messages
- Client
- User
- Transaction Code

---

# Important T-Codes

| T-Code | Purpose |
|---------|---------|
| SE11 | ABAP Dictionary |
| SE21 | Package Builder |
| SE09 | Workbench Organizer |
| SE10 | Transport Organizer |
| SE38 | ABAP Editor |
| SE80 | Object Navigator |

---

# Frequently Asked Interview Questions

## Q1. What is Dispatcher?

Dispatcher receives requests from SAP GUI, stores them in the Dispatcher Queue, and assigns them to available Work Processes.

---

## Q2. What is a Work Process?

A Work Process executes one request at a time and processes ABAP programs.

---

## Q3. What is User Context?

User Context stores user-specific information such as user ID, language, client, authorizations, and session information.

---

## Q4. What is Roll Area?

Roll Area stores temporary execution data while an ABAP program is running.

---

## Q5. Difference between User Context and Roll Area?

- User Context stores user session information.
- Roll Area stores program execution information.

---

## Q6. What is a Transport Request?

A Transport Request is used to move development or configuration objects from Development → Quality → Production.

---

## Q7. Difference between Workbench Request and Customizing Request?

**Workbench Request**
- Repository Objects
- Cross-client

**Customizing Request**
- Configuration Changes
- Client-dependent

---

## Q8. What is a Package?

A Package is a logical container that groups related ABAP objects and manages their transport.

---

## Q9. Why are Packages used?

Packages organize development objects, control transport, improve maintenance, and support code reuse.

---

# Quick Revision

- Dispatcher → Assigns requests to Work Processes.
- Work Process → Executes one request.
- User Context → Stores user session information.
- Roll Area → Stores program execution information.
- DEV → Development.
- QAS → Testing.
- PRD → Live System.
- Transport Request → Moves objects between systems.
- Workbench Request → Development Objects.
- Customizing Request → Configuration Changes.
- Package → Groups related development objects.
- SE10 → Transport Organizer.
- SE21 → Package Builder.
- SE11 → ABAP Dictionary.
- FIFO → Dispatcher Queue processing method.

