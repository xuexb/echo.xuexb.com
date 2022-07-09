FROM openresty/openresty:latest

WORKDIR /usr/local/webapp

LABEL maintainer="xuexb <fe.xiaowu@gmail.com>"
LABEL org.opencontainers.image.source https://github.com/xuexb/echo.xuexb.com

COPY public/ .
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443 8080

CMD ["openresty", "-g", "daemon off;"]