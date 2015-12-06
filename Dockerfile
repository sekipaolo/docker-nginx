FROM alpine:edge

MAINTAINER Paolo Sechi <sekipaolo@gmail.com>

RUN apk --update add nginx inotify-tools

COPY nginx.conf /etc/nginx/nginx.conf

COPY nginx.run /root/run
RUN chmod +x /root/run

CMD /root/run