FROM node:18

# On reste root
USER root

# Installer Docker CLI
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

# Vérifier la version installée
RUN docker --version

CMD ["bash"]
