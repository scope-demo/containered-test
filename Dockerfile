FROM golang:1.13 as Builder
WORKDIR /app
COPY go.mod /app
COPY go.sum /app
COPY main.go /app
COPY main_test.go /app
COPY scope_pkg_main_test.go /app
CMD ["go", "test", "-v", "./..."]