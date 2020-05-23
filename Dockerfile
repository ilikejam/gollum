FROM ruby:2-slim
RUN apt-get -y update && \
      apt-get install -y --no-install-recommends libicu-dev cmake build-essential pkg-config && \
      rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
WORKDIR /wiki
ENTRYPOINT ["gollum", "--port", "8000", "--no-edit", "--h1-title"]
EXPOSE 8000
