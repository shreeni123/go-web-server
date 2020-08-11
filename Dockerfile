FROM golang:1.14
ADD . /go/src/app
WORKDIR /go/src/app
ENV PORT=8080
CMD ["go", "run", "main.go"]