#!/bin/bash
TOKEN="8188670127:AAG6nDu4cB9mULmbxW_tPkWcwg-lEpFJsSU"
CHAT_ID="-4938096484"
MENSAJE="🚨 Esto es una prueba desde el servidor Wazuh usando el bot Telegram"

curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
     -d chat_id="-4938096484" \
     -d text="$MENSAJE"
