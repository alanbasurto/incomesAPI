From alpine:3.18.3

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip