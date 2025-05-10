FROM golang:1.20
LABEL maintainer="GitHub, Inc."

WORKDIR /app

COPY . .

RUN go build -o lfs-test-server

EXPOSE 8080

CMD ["./lfs-test-server"]