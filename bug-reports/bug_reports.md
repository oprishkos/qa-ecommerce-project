# Bug Reports

## BUG-001
Title: Login accepts invalid email  
Steps:
1. Enter "test" as email  
Expected: Validation error  
Actual: Login proceeds  
Severity: High  

---

## BUG-002
Title: Cart not updating  
Steps:
1. Add product
2. Remove product  
Expected: Cart empty  
Actual: Product still visible  
Severity: Medium  

---

## BUG-003
Title: API returns 500 on invalid input  
Endpoint: POST /order  
Expected: 400  
Actual: 500  
Severity: High  

---

## BUG-004
Title: Checkout button inactive  
Steps:
1. Add product
2. Try checkout  
Expected: Button clickable  
Actual: Disabled  
Severity: Critical  
