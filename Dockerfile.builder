FROM golang:latest

#COPY prometheusweb.go .
#COPY structs/structs.go structs/structs.go
#COPY gpio/gpio.go gpio/gpio.go
#COPY nixie/nixie.go nixie/nixie.go
#COPY structs/structs.go structs/structs.go
#COPY utils/utils.go utils/utils.go 
RUN go get -d -v github.com/jacobsa/go-serial/serial
RUN go get -d -v gopkg.in/go-playground/colors.v1/
RUN go get -d -v github.com/robfig/cron
RUN go get github.com/gilgameshskytrooper/prometheusweb/
WORKDIR /go/src/github.com/gilgameshskytrooper/prometheusweb/

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o prometheusweb .
ENTRYPOINT ./prometheusweb
