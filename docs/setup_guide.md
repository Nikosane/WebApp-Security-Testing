# Setup Guide for Web Application Security Testing

To get started with this project, you need to set up the vulnerable web application and testing tools.

## Step 1: Install DVWA
- Download and install [DVWA](https://github.com/digininja/DVWA).
- Set up DVWA using Docker or XAMPP.

## Step 2: Install Burp Suite
- Download Burp Suite from [PortSwigger](https://portswigger.net/burp).
- Configure Burp Suite to act as a proxy for intercepting HTTP requests.

## Step 3: Install SQLMap
- Install SQLMap using the following command:
  ```bash
  git clone https://github.com/sqlmapproject/sqlmap.git
  cd sqlmap
  python sqlmap.py
