#!/bin/bash

curl "http://localhost:4741/groceries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "grocery": {
      "name": "'"${NAME}"'",
      "expiration_date": "'"${EXPIRATION}"'",
      "quantity": "'"${QUANTITY}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
