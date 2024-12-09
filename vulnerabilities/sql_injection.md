# SQL Injection (SQLi)

## What is SQL Injection?
SQL Injection occurs when an attacker can manipulate an application's SQL query by injecting malicious SQL statements through input fields. This can lead to unauthorized access to sensitive data, database corruption, or even complete system compromise.

## Types of SQL Injection
1. **In-Band SQLi**:
   - Exploitation using the same communication channel (e.g., error messages).
   - Example: `UNION SELECT` to fetch additional data.

2. **Blind SQLi**:
   - Exploitation without visible output. Attackers rely on observing application behavior (e.g., True/False statements).

3. **Out-of-Band SQLi**:
   - Exploitation using a separate communication channel (e.g., DNS lookup).

## Exploitation Example
### Vulnerable Code:
```php
$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
```
## Malicious Input:
```bash
    Username: ' OR '1'='1' --
    Password: anything
```
## Result:

- SQL Query: SELECT * FROM users WHERE username = '' OR '1'='1' -- AND password = 'anything';
- The condition '1'='1' always evaluates to true, bypassing authentication.

## Tools for Testing

**SQLMap**: Automated tool to test for SQL Injection vulnerabilities.
**Burp Suite**: Intercept and manipulate SQL queries.


## Mitigation

1. Use parameterized queries or prepared statements.
```bash
$stmt = $pdo->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
$stmt->execute([$username, $password]);
```
2. Implement proper input validation.
3. Restrict database permissions for application accounts.
4. Use Web Application Firewalls (WAF).