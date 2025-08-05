#!/bin/bash
ID="$1"

if [ -z "$ID" ]; then
  echo "Missing parameter, please try again with: $0 <Test Case ID>"
  exit 1
fi

FILE="Preconditions/${ID}.sql"

if [ ! -f "$FILE" ]; then
  echo "Error: File '$FILE' does not exist."
  exit 1
fi

echo "Applying precondition: $FILE"
docker compose exec -T mysql mysql -u oms --password=1qaz2wsx oms < "$FILE"
