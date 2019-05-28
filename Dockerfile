FROM alpine:3.9

RUN apk --update --no-cache add bash curl nodejs npm git openssh && \
    npm install git2consul@0.12.13 --global && \
    mkdir -p /etc/git2consul.d

RUN mkdir -p /tmp/wait-for-it && \    
    curl https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh --output /tmp/wait-for-it/wait-for-it.sh && \
    chmod +x /tmp/wait-for-it/wait-for-it.sh
