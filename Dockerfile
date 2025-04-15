FROM node:18

USER root

RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

# (optionnel) Vérifier la version
RUN docker --version

# Laisser node comme user
USER node
