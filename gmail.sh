#!/bin/bash

# Leer el input JSON de Wazuh
read input

# Extraer mensaje o usar por defecto
ALERTA=$(echo "$input" | grep -oP '(?<="alert":")[^"]*')
[ -z "$ALERTA" ] && ALERTA="Alerta de Wazuh recibida"

# Enviar correo
echo "$ALERTA" | mail -s "Alerta de Wazuh (Gmail)" hectorruizfreitas07@gmail.com
