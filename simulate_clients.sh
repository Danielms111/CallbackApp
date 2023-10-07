#!/bin/bash

# Número de clientes a simular
NUM_CLIENTS=1

# Dirección y puerto del servidor
SERVER_HOST="localhost"
SERVER_PORT=8000

# Función para simular un servidor
java -jar server/build/libs/server.jar &

# Función para simular un cliente
simulate_client() {
  echo "4" | java -jar client/build/libs/client.jar & 
}


# Esperar a que el servidor se inicie
sleep 3

# Simular múltiples clientes
for ((i = 1; i <= NUM_CLIENTS; i++)); do
  simulate_client "$i"
  echo "exit" | java -jar client/build/libs/client.jar
done

# Esperar a que los clientes completen
wait