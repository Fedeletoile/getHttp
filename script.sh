#!/bin/bash

url="{ URL }"

response=$(curl -s "$url")

status=$(echo "$response" | jq -r '.result.response')

current_time=$(date +"%Y-%m-%d %H:%M:%S")

  if [ "$status" = "OK" ]; then
      echo "[+] El endpoint se ejecutó correctamente -> $status a las $current_time"
  else
      echo "[-] Fallo al ejecutar el endpoint. Estado de la respuesta: $status a las $current_time"
  fi