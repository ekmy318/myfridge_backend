#!/bin/bash

curl "http://localhost:4741/groceries/${ID}" \
  --include \
  --request DELETE

echo
