# https://www.getzola.org/documentation/getting-started/installation/#docker
FROM ubuntu:latest

ARG ZOLA_VERSION=v0.15.3

WORKDIR /app

COPY . /app

# This is to help speed up the `apt update` step, which is usually very slow
COPY ubuntu-india-mirrors.list /etc/apt/sources.list

# 1024 for live Reload Functionality
EXPOSE 8080 1024

RUN apt update && apt install wget -y
RUN wget https://github.com/getzola/zola/releases/download/$ZOLA_VERSION/zola-$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz
RUN tar -C /usr/local/bin -xzvf zola-$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz
RUN rm zola-$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz
RUN zola check
ENTRYPOINT [ "/usr/local/bin/zola" ]

# https://www.getzola.org/documentation/getting-started/installation/#serve
CMD ["serve","--port", "8080","--interface","0.0.0.0","--base-url", "localhost"]


