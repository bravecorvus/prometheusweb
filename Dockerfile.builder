FROM golang:latest
WORKDIR /prometheus/
COPY prometheus.go .
COPY utils/ .
COPY gpio/ .
COPY structs/ .
COPY nixie/ .

RUN go get -d -v github.com/jacobsa/go-serial/serial   # "go get -d -v ./..."
RUN go get -d -v gopkg.in/go-playground/colors.v1/
RUN go get -d -v github.com/robfig/cron

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o prometheus .
