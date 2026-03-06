FROM n8nio/n8n

EXPOSE 5678

ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://your-render-url.onrender.com
ENV EXECUTIONS_PROCESS=main
ENV N8N_ENCRYPTION_KEY=supersecretkey123

CMD ["n8n", "start"]
