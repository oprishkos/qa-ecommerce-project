# Kafka Issues

## BUG-KAFKA-001
Title: Missing user_id in event  
Expected: Field present  
Actual: Missing  
Severity: High  

---

## BUG-KAFKA-002
Title: Wrong status value  
Expected: "created"  
Actual: "new"  
Severity: Medium  

---

## BUG-KAFKA-003
Title: Event not sent  
Steps:
1. Create order  
Expected: Event in Kafka  
Actual: No event  
Severity: Critical  
