# Hospital Management System

## Introduction
The **Hospital Management System (HMS)** is a Java-based desktop application developed using **NetBeans IDE** and **MySQL** as the backend database.  
It streamlines hospital operations by managing patients, doctors, staff, appointments, and billing efficiently within a user-friendly interface.  

The system allows hospital administrators and receptionists to store, update, and retrieve information seamlessly, improving hospital workflow and data accuracy.

---

## Table of Contents
1. [Features](#-features)  
2. [Project Structure](#-project-structure)  
3. [Requirements](#-requirements)  
4. [Installation](#-installation)  
5. [Database Configuration](#-database-configuration)  
6. [Usage](#-usage)  
7. [Troubleshooting](#-troubleshooting)  
8. [Contributors](#-contributors)  
9. [License](#-license)

---

## Features
- Patient registration and management  
- Doctor and staff record management  
- Appointment scheduling and tracking  
- Billing and payment management  
- Secure login for admin and staff  
- Database-backed data persistence using MySQL  
- Intuitive GUI built in Java (likely Swing)  

---

## Project Structure
```
HospitalManagementSystem/
├── build.xml                # Apache Ant build file
├── manifest.mf              # Java manifest configuration
├── hms.sql                  # MySQL database schema and data
├── src/                     # Java source files (GUI + logic)
├── nbproject/               # NetBeans project configuration
└── dist/                    # Compiled JAR output after build
```

---

## Requirements
- **JDK:** Java SE 8 or higher  
- **IDE:** NetBeans 12+ (recommended)  
- **Database:** MySQL 5.7+  
- **JDBC Driver:** MySQL Connector/J  

---

## Installation

### 1. Clone or Download the Repository
```bash
git clone https://github.com/yourusername/HospitalManagementSystem.git
```
Or download and extract the ZIP file manually.

### 2. Open the Project
- Launch **NetBeans IDE**  
- Select **File → Open Project**  
- Choose the extracted `HospitalManagementSystem` folder

### 3. Build the Project
- Click on **Build Project (F11)** in NetBeans  
- If needed, configure the Ant build script (`build.xml`)  

---

## Database Configuration

1. Open **MySQL Workbench** or **phpMyAdmin**  
2. Create a new database:
   ```sql
   CREATE DATABASE hospitaldb;
   ```
3. Import the provided SQL script:
   ```sql
   USE hospitaldb;
   SOURCE hms.sql;
   ```
4. Update your database connection details in the Java code (e.g., in a `DBConnection.java` file):
   ```java
   String url = "jdbc:mysql://localhost:3306/hospitaldb";
   String user = "root";
   String password = "yourpassword";
   ```

---

## Usage

1. Run the application from NetBeans (`Run → Run Project`).  
2. Log in with the default credentials (if provided in the SQL file).  
3. Use the interface to:
   - Add, edit, or delete patients  
   - Manage doctors and staff  
   - Schedule appointments  
   - Generate and print bills  

---

## Troubleshooting

| Issue | Solution |
|-------|-----------|
| MySQL connection error | Check if MySQL service is running and credentials are correct |
| GUI not launching | Ensure project is built and main class is set in `manifest.mf` |
| Missing JDBC driver | Add `mysql-connector-java.jar` to project libraries |
| Ant build fails | Verify NetBeans build.xml configuration and classpath |

---
