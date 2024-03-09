FROM golang:latest

WORKDIR /usr/src/app

RUN go mod init todo-list
COPY . ./

RUN go mod tidy
RUN go build -v -o /app
RUN chmod +x /app

#RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64  go build -C ./cmd -o /my_app