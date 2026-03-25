# Kafka Events

## Topic: orders

### Event: Order Created

Fields:
- order_id (int)
- user_id (int)
- status (string)
- total_price (float)

---

## Test Cases

### TC-KAFKA-001
Title: Event sent after order creation  
Steps:
1. Create order via UI/API  
2. Check Kafka topic  
Expected: Event exists  

---

### TC-KAFKA-002
Title: Event structure validation  
Steps:
1. Capture event  
Expected:
- order_id present
- status = "created"

---

### TC-KAFKA-003
Title: Invalid data not sent  
Steps:
1. Create order with invalid data  
Expected: No event OR error  
