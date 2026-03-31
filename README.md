# Open Source Audit – LibreOffice on Fedora 43

**Student Name:** Laksh Mahajan 
**Registration Number:** 24BCY10255 
**Course:** Open Source Software  
**Chosen Software:** LibreOffice

---

# Project Overview

This project is an audit of LibreOffice, a free and open-source office suite developed by The Document Foundation. The project studies the origin, philosophy, licensing, Linux footprint, ecosystem, and comparison of LibreOffice with proprietary office software.

The project also includes five Bash shell scripts that demonstrate practical Linux and shell scripting concepts.

---

# System Details

- Distribution: Fedora 43
- Kernel: `uname -r`
- LibreOffice Version: 26.2.0.3
- Shell: Bash

---

# Repository Structure

```text
oss-audit-24BCY10255/
├── README.md
├── Project_Report.pdf
├── scripts/
│   ├── script1_system_identity.sh
│   ├── script2_package_inspector.sh
│   ├── script3_disk_auditor.sh
│   ├── script4_log_analyzer.sh
│   └── script5_manifesto_generator.sh
└── screenshots/
    ├── script1_run.png
    ├── script2_run.png
    ├── script3_run.png
    ├── script4_run.png
    └── script5_run.png
```

---

# Script Descriptions

## Script 1 – System Identity Report
**File:** `scripts/script1_system_identity.sh`

This script displays important information about the Linux system:
- Fedora distribution name
- Kernel version
- Current logged-in user
- Home directory
- System uptime
- Current date and time
- Information about the software license used by Fedora and Linux
- Details of the chosen software: LibreOffice

### Concepts Used
- Variables
- Command substitution `$( )`
- `echo`
- Output formatting

Run using:

```bash
./scripts/script1_system_identity.sh
```

---

## Script 2 – FOSS Package Inspector
**File:** `scripts/script2_package_inspector.sh`

This script checks whether LibreOffice is installed on the system. It also prints:
- Package version
- Release number
- License
- Package summary
- A short philosophy statement using a `case` statement

### Concepts Used
- `if-then-else`
- `rpm -q`
- `rpm -qi`
- `grep`
- `case`

Run using:

```bash
./scripts/script2_package_inspector.sh
```

---

## Script 3 – Disk and Permission Auditor
**File:** `scripts/script3_disk_auditor.sh`

This script checks important Linux directories and reports:
- Directory size
- Owner and permissions
- Whether the LibreOffice configuration directory exists

Directories checked:
- `/etc`
- `/var/log`
- `/home`
- `/usr/bin`
- `/tmp`
- `/etc/libreoffice`

### Concepts Used
- Arrays
- `for` loop
- `if` statement
- `du`
- `ls -ld`
- `awk`
- `cut`

Run using:

```bash
./scripts/script3_disk_auditor.sh
```

---

## Script 4 – Log File Analyzer
**File:** `scripts/script4_log_analyzer.sh`

This script analyzes a log file line by line and counts how many times a keyword appears. By default, the keyword is `error`.

The script:
- Takes the log file as input
- Counts occurrences of the keyword
- Displays the total number of matches
- Shows the last 5 matching lines

### Concepts Used
- Command-line arguments `$1`
- Variables
- `while read`
- `if-then`
- Counter variables
- `grep`
- `tail`

Run using:

```bash
sudo ./scripts/script4_log_analyzer.sh /var/log/messages
```

You can also specify another keyword:

```bash
sudo ./scripts/script4_log_analyzer.sh /var/log/messages warning
```

---

## Script 5 – Open Source Manifesto Generator
**File:** `scripts/script5_manifesto_generator.sh`

This script asks the user three questions and creates a personalised open-source manifesto in a text file.

The script:
- Accepts user input
- Generates a paragraph
- Saves it in a text file
- Displays the final manifesto on screen

### Concepts Used
- `read`
- Variables
- String concatenation
- File writing using `>` and `>>`
- `date`

Run using:

```bash
./scripts/script5_manifesto_generator.sh
```

---

# Dependencies

The following tools are required:

- Bash
- LibreOffice
- RPM package manager
- grep
- awk
- cut
- du
- tail
- sudo

Install LibreOffice on Fedora using:

```bash
sudo dnf install libreoffice
```

---

# How to Run the Entire Project

1. Clone or download the repository.
2. Open the terminal in the project folder.
3. Make all scripts executable:

```bash
chmod +x scripts/*.sh
```

4. Run the scripts one by one:

```bash
./scripts/script1_system_identity.sh
./scripts/script2_package_inspector.sh
./scripts/script3_disk_auditor.sh
sudo ./scripts/script4_log_analyzer.sh /var/log/messages
./scripts/script5_manifesto_generator.sh
```

---

# Screenshots

The `screenshots/` folder contains screenshots showing the successful execution of all five scripts:

- `script1_run.png`
- `script2_run.png`
- `script3_run.png`
- `script4_run.png`
- `script5_run.png`

---

# Conclusion

This project demonstrates both the philosophy and practical use of open-source software through LibreOffice. It combines Linux system analysis, package inspection, permissions auditing, log analysis, and shell scripting concepts into a complete audit project.

