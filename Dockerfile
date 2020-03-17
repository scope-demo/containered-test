FROM golang:latest as Builder
WORKDIR /app
COPY . /app
CMD ["go", "test", "-v", "./..."]