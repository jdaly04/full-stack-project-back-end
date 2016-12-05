#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

  API="http://localhost:4741"
  URL_PATH="/libraries"
  curl "${API}${URL_PATH}/${ID}" \
    --include \
    --request PATCH \
    --header "Authorization: Token token=${TOKEN}" \
    --header "Content-Type: application/json" \
    --data '{
      "library": {
        "id": "59",
        "name": "Floral"
      }
    }'

echo
