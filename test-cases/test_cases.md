# Test Cases

## 1. Login

ID: TC-001  
Title: Valid login  
Steps:
1. Open login page
2. Enter valid email/password
3. Click login  
Expected: User logged in successfully  

---

ID: TC-002  
Title: Invalid password  
Steps:
1. Enter valid email and wrong password  
Expected: Error message  

---

## 2. Cart

ID: TC-003  
Title: Add product to cart  
Steps:
1. Open product page
2. Click "Add to cart"  
Expected: Product added  

---

ID: TC-004  
Title: Remove product  
Steps:
1. Add product
2. Remove it  
Expected: Cart is empty  

---

## 3. Order

ID: TC-005  
Title: Create order  
Steps:
1. Add product
2. Checkout  
Expected: Order created  

---

ID: TC-006  
Title: Empty cart order  
Steps:
1. Go to checkout with empty cart  
Expected: Error  
