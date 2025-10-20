# Dockerfile
FROM python:3.9.23-slim

# Installazione pacchetti base richiesti
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    libssl-dev \
    libyaml-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*
    
# Copia del clouds.yml nel path standard di OpenStack
RUN mkdir -p /etc/openstack
COPY clouds.yml /etc/openstack/clouds.yaml

# Imposta locale e ambiente
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV PYTHONUNBUFFERED=1
