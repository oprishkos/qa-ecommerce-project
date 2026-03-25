from kafka import KafkaConsumer
import json

consumer = KafkaConsumer(
    'orders',
    bootstrap_servers='localhost:9092',
    value_deserializer=lambda x: json.loads(x.decode('utf-8'))
)

for message in consumer:
    event = message.value

    assert "order_id" in event
    assert "user_id" in event
    assert event["status"] == "created"

    print("Valid event:", event)
