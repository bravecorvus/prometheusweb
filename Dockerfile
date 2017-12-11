FROM busybox:latest
COPY ca-certificates.crt /etc/ssl/certs/
COPY prometheusweb prometheusweb
COPY email/email /email/email
COPY public/ /public/
EXPOSE 8080
ENTRYPOINT ["/prometheusweb"]
