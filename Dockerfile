# https://www.getzola.org/documentation/getting-started/installation/#docker
FROM ghcr.io/getzola/zola:v0.15.3

WORKDIR /app

COPY . /app

# 1024 for live Reload Functionality
EXPOSE 1024 8080

# https://www.getzola.org/documentation/getting-started/installation/#serve
CMD ["serve","--interface", "0.0.0.0","--port", "8080","--base-url", "localhost"]


