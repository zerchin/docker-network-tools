FROM nginx:1.19.3-alpine
MAINTAINER zerchin
#RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories && apk update --no-cache && apk add --no-cache curl tcpdump tcptraceroute iperf3 fio bridge-utils bash jq openssh-client busybox-extras iftop && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
RUN apk update --no-cache && apk add --no-cache curl tcpdump tcptraceroute iperf3 fio bridge-utils bash jq openssh-client busybox-extras iftop && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
COPY bashrc/bashrc /root/.bashrc
COPY nginx/etc/nginx.conf /etc/nginx/nginx.conf
COPY nginx/html /usr/share/nginx/html
