FROM alpine
COPY whoami /
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add rsync    && rm -rf /var/cache/apk/*
# ENTRYPOINT ["/whoami"]
CMD ["/whoami"]
EXPOSE 80
