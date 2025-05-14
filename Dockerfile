FROM ruby:3-slim
# hadolint ignore=DL3008
RUN apt-get -y update && \
    apt-get install -y --no-install-recommends \
      libicu-dev cmake build-essential pkg-config heimdal-dev libssl-dev zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*
# hadolint ignore=DL3028
RUN gem install github-linguist gollum
WORKDIR /wiki
ENTRYPOINT ["gollum", "--port", "8000", "--no-edit", "--h1-title"]
EXPOSE 8000
