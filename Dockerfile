FROM golang:1.22
RUN go install github.com/go-delve/delve/cmd/dlv@latest
WORKDIR /build
COPY . .
RUN go mod download

RUN go build -o /main 
CMD ["/main"]