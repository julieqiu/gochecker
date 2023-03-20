FROM golang:latest

WORKDIR /app
COPY . /app

ENTRYPOINT ["/app"]
