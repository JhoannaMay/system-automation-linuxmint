# 🖥️ System Monitoring Automation in Linux Mint Using Bash Functions

## 📌 Overview

This project demonstrates how to use Bash functions to automate common system monitoring tasks in Linux Mint. The included script (`monitor.sh`) checks system resources and allows easy customization by adding new functions.

As part of this activity, a custom function was added: `backup_folder`, which automatically creates backups of a specific folder on the system.

---

## 🧩 Features

- Monitor disk usage and memory consumption
- Check for available system updates
- **NEW:** Backup a folder with automatic timestamping
- Modular functions for easy customization and extension

---

## 🔧 Custom Bash Function: `backup_folder`

### ✅ What It Does

The `backup_folder` function creates a timestamped backup of the user's `Documents` folder (or another specified folder). It helps preserve files without overwriting previous versions.

### 📜 Sample Code

```bash
backup_folder() {
    echo "Backing up Documents folder..."
    backup_dir="$HOME/backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$backup_dir"
    cp -r "$HOME/Documents" "$backup_dir"
    echo "Backup complete: $backup_dir"
} ` ``` `
💡 Note: In some environments like GitHub Codespaces, the Documents folder may not exist. You can either create it manually or modify the script to back up the project directory using $PWD.

```
## 🧠Why this function was Added 
Backups are an essential part of any system maintenance routine. Many users forget or delay backing up important files. Automating this step helps make data protection easy, reliable, and consistent.

## ⚠️ Challenges & Lessons Learned
- Encountered an error:
   cp: cannot stat '/home/codespace/Documents': No such file or directory
  
  This occurred because Codespaces do not include a Documents folder by default.
- **Solution**
   - Create folder manually:
     mkdir -p ~/Documents
  - Or modify the script to back up an existing folder, such as the current project directory.
- **Lesson Learned** :  I learned how to make Bash scripts more robust by adding error checking and making the function environment-aware.

## 🌐 Git & Pull Request Summary
- A new branch was created for this custom function.
- Changes were committed and pushed to GitHub.
- A pull request was submitted with the following:
  - ✔️ Description of the function
  - ✔️ Purpose of automation
  - ✔️ Challenges encountered and lessons learned

## Folder Structure
<pre> ```
  system-automation-linuxmint/
├── monitor.sh          # Main Bash script
├── README.md           # Project documentation
  ```</pre>

