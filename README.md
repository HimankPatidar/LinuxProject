# Automated Backup of Website Login Credential

## Description
This project provides a simple solution to automatically backup website login credentials. It consists of three main components: `backup.sh`, `process.php`, and `index.html`.

## Components

### 1. `backup.sh`
- **Description**: A Bash script responsible for creating backups of website login credentials.
- **How it works**: It reads data from standard input (piped from `process.php`) and appends it to a unique backup file in the specified directory.
- **Usage**: Run this script to save login credentials.

### 2. `process.php`
- **Description**: A PHP script that captures user-submitted login credentials from a web form and triggers the backup process.
- **How it works**: It collects the username and password from a web form, formats the data, and sends it to `backup.sh` for storage.
- **Usage**: Embedded in your website, it collects and securely backs up user login data.

### 3. `index.html`
- **Description**: An HTML form for users to input their login credentials.
- **How it works**: It provides fields for users to enter their username and password and submits the data to `process.php`.
- **Usage**: Embedded on your website to capture user login credentials.

## Installation
1. Clone this repository.
2. Configure `backup.sh` to specify your desired backup directory.
3. Embed `index.html` and `process.php` in your website.

## Usage
1. Users input their login credentials on your website's form (`index.html`).
2. `process.php` captures and securely handles the data.
3. The data is passed to `backup.sh` for automatic backup to the specified directory.

