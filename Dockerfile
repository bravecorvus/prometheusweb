FROM busybox:latest
WORKDIR /
COPY ca-certificates.crt /etc/ssl/certs
COPY prometheusweb .
COPY email .
COPY public .
EXPOSE 8080
ENTRYPOINT ["/prometheusweb"]
