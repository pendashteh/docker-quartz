# Use the latest LTS or current Node version
FROM node:22-alpine AS base

# Install required tools
RUN apk add --no-cache git bash

# Set working directory
WORKDIR /quartz

# Clone Quartz repository
# You can pin to a specific version if you like (recommended)
RUN git clone --depth 1 https://github.com/jackyzha0/quartz.git . && \
    npm install

# Copy entrypoint script
COPY docker-quartz.sh /usr/local/bin/docker-quartz
RUN chmod +x /usr/local/bin/docker-quartz

# Expose port
EXPOSE 8080

ENTRYPOINT ["docker-quartz"]
