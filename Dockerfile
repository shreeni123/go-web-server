FROM golang:1.14
RUN mkdir /go/src/app
ADD main.go /go/src/app
WORKDIR /go/src/app
ENV PORT=8080
CMD ["go", "run", "main.go"]