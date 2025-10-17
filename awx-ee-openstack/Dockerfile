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

# Imposta locale e ambiente
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV PYTHONUNBUFFERED=1
