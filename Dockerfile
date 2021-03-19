
FROM golang:latest

WORKDIR /app

COPY . .

RUN go get github.com/go-sql-driver/mysql

RUN go mod download

RUN go build -o main .

EXPOSE 8001

CMD ["./main"]

