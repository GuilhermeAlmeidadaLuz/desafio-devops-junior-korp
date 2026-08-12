# stage 1
FROM golang:1.26.5 AS build

WORKDIR /src

COPY ./http-server-projeto-korp/go.mod ./http-server-projeto-korp/go.sum ./

RUN go mod download

COPY ./http-server-projeto-korp/main.go .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
    go build -o app ./main.go

# stage 2 - final image
FROM golang:1.26.5-alpine3.24 AS runner 

WORKDIR /http-server-projeto-korp/

RUN adduser -D korp

COPY --from=build /src/app ./

RUN chown -R korp:korp ./
RUN chmod +x ./app

USER korp

CMD ["./app"]