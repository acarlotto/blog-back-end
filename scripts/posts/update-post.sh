#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts/1"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "post": {
      "title": "Hello-update",
      "body": "TEST BODY CONTENT HERE"
      }
  }'

echo
