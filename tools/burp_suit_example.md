## Introduction
Burp Suite is a powerful tool for web application security testing. It allows you to intercept, modify, and analyze HTTP requests and responses.

## Example: Testing for SQL Injection

### Step 1: Set Up Burp Suite
1. Open Burp Suite.
2. Go to the **Proxy** tab and ensure the proxy is running.
3. Configure your browser to use Burp Suite's proxy (e.g., 127.0.0.1:8080).

### Step 2: Intercept a Request
1. Visit the target URL in your browser.
2. Burp Suite will capture the request.
3. In the **HTTP history**, select the captured request.

### Step 3: Modify and Test
1. Send the request to the **Repeater** by right-clicking and selecting "Send to Repeater."
2. Modify parameters (e.g., inject SQL payloads like `' OR '1'='1`).
3. Observe the responses for signs of SQL Injection (e.g., database errors).

## Example Payloads to Test
- `' OR '1'='1' --`
- `UNION SELECT null, version() --`
- `' AND sleep(5) --`