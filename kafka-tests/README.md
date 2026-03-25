# Kafka Testing

## Description
This module contains validation of Kafka events in e-commerce system.

## Scenario
When user creates an order, system sends event to Kafka topic `orders`.

## Example Event
{
  "order_id": 123,
  "user_id": 45,
  "status": "created",
  "total_price": 100
}

## Validation
- Event is produced after order creation
- Fields are correct
- No missing required fields
