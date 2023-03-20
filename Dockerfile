FROM golang:latest as builder

WORKDIR /app
COPY . /app

RUN go mod tidy

COPY --from=builder /app/app /app

ENTRYPOINT ["/app"]
