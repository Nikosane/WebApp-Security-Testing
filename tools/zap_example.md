# OWASP ZAP Usage Example

## Introduction
OWASP ZAP (Zed Attack Proxy) is an open-source web application security scanner.

## Example: Scanning for Vulnerabilities

### Step 1: Set Up ZAP
1. Open OWASP ZAP.
2. Configure your browser to use ZAP's proxy (e.g., 127.0.0.1:8080).

### Step 2: Start a Passive Scan
1. In the ZAP interface, enter the target URL (e.g., `http://example.com`).
2. Click **Attack > Spider** to crawl the website.
3. ZAP will start passively scanning for vulnerabilities.

### Step 3: Active Scan
1. Highlight the target in the **Sites** tree.
2. Right-click and select **Attack > Active Scan**.
3. ZAP will perform active vulnerability testing (e.g., XSS, SQL Injection).

## Interpreting Results
- Go to the **Alerts** tab to view identified vulnerabilities.
- Click on each alert to get detailed information and remediation steps.

## Example Payloads Tested
- SQL Injection: `' OR '1'='1'`
- XSS: `<script>alert('XSS');</script>`
- CSRF: Manipulated POST/GET requests.

