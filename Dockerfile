
FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Set timezone
ENV TZ=Asia/Dhaka
ENV GENERIC_TIMEZONE=Asia/Dhaka

# n8n default port
EXPOSE 5678

USER node

ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
