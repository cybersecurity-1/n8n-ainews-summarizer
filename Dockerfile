FROM node:20-alpine

RUN apk add --no-cache python3 make g++ && \
    npm install -g n8n@1.28.0

ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0
ENV EXECUTIONS_PROCESS=main
ENV N8N_ENCRYPTION_KEY=supersecretkey123
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

EXPOSE 5678

ENTRYPOINT ["n8n"]
CMD ["start"]]
