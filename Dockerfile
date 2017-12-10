FROM busbox:latest
COPY ca-certificates.crt /etc/ssl/certs/
COPY prometheus prometheus
COPY email/email email/email
COPY public/ public/
EXPOSE 8080
ENTRYPOINT ["/prometheus"]
