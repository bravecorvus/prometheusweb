FROM busybox:latest
WORKDIR prometheus
COPY ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY prometheusweb .
COPY email email
COPY public public
EXPOSE 8080
ENTRYPOINT ./prometheusweb
