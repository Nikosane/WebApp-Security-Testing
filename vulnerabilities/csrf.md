# Cross-Site Request Forgery (CSRF)

## What is CSRF?
Cross-Site Request Forgery (CSRF) tricks authenticated users into performing unintended actions on a website without their consent. For example, an attacker can create a malicious link that performs actions on behalf of the victim.

## Exploitation Example 
### Vulnerable Form:
```html
<form action="http://example.com/transfer" method="POST">
    <input type="hidden" name="amount" value="1000">
    <input type="hidden" name="to_account" value="123456">
</form>
```

## Malicious Code:
```html
<img src="http://example.com/transfer?amount=1000&to_account=123456" />
```
*When a logged-in user visits the malicious page, the request executes.*

## Tools for Testing
- **Burp Suite**: Test for CSRF vulnerabilities.
- **OWASP ZAP**: Automated CSRF vulnerability checks.

## Mitigation

1. Use CSRF Tokens:
```html
<input type="hidden" name="csrf_token" value="random_token_value">
```
2. Validate Referer headers.
3. Use SameSite cookies to prevent cross-site requests.