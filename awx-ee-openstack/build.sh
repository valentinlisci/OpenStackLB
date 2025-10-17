#!/usr/bin/env bash
set -e

echo "🧱  [1/3] Creazione del contesto di build..."
ansible-builder create

echo "📂  [2/3] Copia del clouds.yml nel contesto..."
cp clouds.yml context/_build/

echo "🐳  [3/3] Build dell'immagine Docker..."
docker build -f context/Dockerfile -t valentinlisci/awx-ee-openstack:latest context

echo "✅  Build completata: valentinlisci/awx-ee-openstack:latest"
