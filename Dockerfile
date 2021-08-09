FROM alpine:3.14.1

RUN apk add nginx nginx-mod-http-fancyindex

RUN rm /etc/nginx/http.d/default.conf

COPY config/config.conf /etc/nginx/http.d/

EXPOSE 80

ENTRYPOINT [ "nginx", "-g", "daemon off;" ] 