FROM alpine:3.19.1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

RUN apk update && apk upgrade && apk add --no-cache binutils cmake make libgcc musl-dev gcc g++ go rust cargo