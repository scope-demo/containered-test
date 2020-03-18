FROM golang:1.13 as Builder
WORKDIR /app
COPY . /app
CMD ["go", "test", "-v", "-covermode=count", "-count", "1", "./..."]