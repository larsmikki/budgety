FROM node:22-alpine
LABEL org.opencontainers.image.source="https://hub.docker.com/r/larsmikki/budgety"
LABEL org.opencontainers.image.description="Simple self-hosted annual budget planner"
LABEL org.opencontainers.image.licenses="MIT"
WORKDIR /app
COPY serve.js index.html favicon.svg ./
RUN mkdir -p /app/data
EXPOSE 3000
CMD ["node", "serve.js"]
