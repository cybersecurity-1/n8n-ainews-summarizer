FROM n8nio/n8n

EXPOSE 5678

ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://your-render-url.onrender.com
ENV EXECUTIONS_PROCESS=main
ENV N8N_ENCRYPTION_KEY=supersecretkey123

CMD ["n8n", "start"]
```

**Step 4 — Commit the file**
- Scroll down → click **Commit new file**

---

## Back in Render

**Step 1** — Dockerfile Path field type:
```
./Dockerfile
```

**Step 2** — Region → Select **Singapore** (closest to India)

**Step 3** — Scroll down to **Environment Variables** → Add these:

| Key | Value |
|---|---|
| `N8N_HOST` | `0.0.0.0` |
| `N8N_PORT` | `5678` |
| `N8N_PROTOCOL` | `https` |
| `WEBHOOK_URL` | `https://your-service-name.onrender.com` |
| `N8N_ENCRYPTION_KEY` | any random text like `mykey123abc` |

**Step 4** — Instance Type → select **Free**

**Step 5** — Click **Create Web Service**

---

## After Deploy (5-10 minutes)

You will get a URL like:
```
https://n8n-ainews-summarizer.onrender.com
```

Open it → n8n login page appears → create your account → import your workflow JSON → done! 🚀

---

## Important After n8n is Live on Render

Update your Vercel `index.html` webhook URL from:
```
http://localhost:5678/webhook/news-trigger
```
to:
```
https://n8n-ainews-summarizer.onrender.com/webhook/news-trigger
