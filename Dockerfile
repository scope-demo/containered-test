FROM golang:1.13 as Builder
WORKDIR /app
COPY . /app
RUN cat /proc/1/cgroup
CMD ["go", "test", "-v", "-covermode=count", "-count", "1", "./..."]