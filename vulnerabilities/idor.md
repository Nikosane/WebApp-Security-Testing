# Insecure Direct Object References (IDOR)

## What is IDOR?
IDOR occurs when an application provides direct access to objects (e.g., files, database entries) without proper authorization checks. This can allow attackers to access or modify unauthorized resources.

## Exploitation Example
### Scenario:
- URL: `http://example.com/user/123`
- Changing `123` to `124` grants access to another user's data.

### Attack:
- Modify the URL to `http://example.com/user/124` to access unauthorized data.

## Tools for Testing
- **Burp Suite**: Intercept and modify requests.
- **Postman**: Test parameter manipulation.

## Mitigation
1. Implement access control checks at the server level.
2. Use session-based authentication to verify user permissions.
3. Avoid exposing sensitive data through predictable IDs.