FROM golang:latest
WORKDIR /go/src/github.com/gilgameshskytrooper/prometheus/email/
COPY email.go .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o email .
