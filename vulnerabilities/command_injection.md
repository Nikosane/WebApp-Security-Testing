# Command Injection

## What is Command Injection?
Command Injection occurs when an attacker injects system commands into an application, allowing them to execute arbitrary commands on the server.

## Exploitation Example
### Vulnerable Code:
```php
$cmd = $_GET['cmd'];
system("ping -c 1 $cmd");
```
## Malicious Input:

`http://example.com?cmd=;cat /etc/passwd`

## Result:

The attacker gains access to sensitive server information.

## Tools for Testing

- Burp Suite: Inject commands into parameters.
- Netcat: Establish reverse shells.

## Mitigation

1. Validate and sanitize all user inputs.
2. Use functions like escapeshellcmd() and escapeshellarg().
3. Avoid using system commands directly.