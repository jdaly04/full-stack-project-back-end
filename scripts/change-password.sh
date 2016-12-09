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

  # API="http://localhost:4741"
  # URL_PATH="/libraries"
  # curl "${API}${URL_PATH}/59" \
  #   --include \
  #   --request PATCH \
  #   --header "Authorization: Token token=BAhJIiU1NzgyNjI2ZmZhNmM5MGFjMTNlNTBkZDBjZjVhYWU1MQY6BkVG--ccb588928d42319b7dac2a8e6614624457eb6859" \
  #   --header "Content-Type: application/json" \
  #   --data '{
  #     "library": {
  #       "id": "59",
  #       "name": "Floral"
  #     }
  #   }'

echo
