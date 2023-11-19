#!/bin/bash

echo "Hello from the script!"

# Navigate to the first Node.js app
cd ./splitwiser_client

npm run dev -- --host &

cd ../splitwiser_server

npm run dev
