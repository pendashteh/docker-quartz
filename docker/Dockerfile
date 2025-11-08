
# Dockerfile
FROM node:22-slim

# Install git and bash
RUN apt-get update && apt-get install -y git bash && rm -rf /var/lib/apt/lists/*

WORKDIR /quartz

# Clone Quartz
RUN git clone --depth 1 https://github.com/jackyzha0/quartz.git . && \
    npm install

# Copy entrypoint
COPY docker-quartz.sh /usr/local/bin/docker-quartz
RUN chmod +x /usr/local/bin/docker-quartz

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/docker-quartz"]
