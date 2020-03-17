FROM golang:latest as Builder
WORKDIR /app
COPY . /app
RUN go test -v ./...