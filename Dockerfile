FROM nginx:1.19.3-alpine
RUN apk add --no-cache curl tcpdump tcptraceroute iperf3 fio bridge-utils bash jq openssh-client busybox-extras iftop
COPY bashrc/bashrc /root/.bashrc
COPY nginx/etc/nginx.conf /etc/nginx/nginx.conf
COPY nginx/html /usr/share/nginx/html
