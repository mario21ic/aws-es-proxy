FROM golang:1.9-alpine

ENV PORT_NUM 9200
WORKDIR /go/src/github.com/abutaha/aws-es-proxy
COPY . .

#RUN go-wrapper download
#RUN go-wrapper install

RUN apk add --update bash curl git && \
    rm /var/cache/apk/*

RUN mkdir -p $$GOPATH/bin && \
    curl https://glide.sh/get | sh

RUN glide install
RUN go build -o aws-es-proxy

EXPOSE ${PORT_NUM}

#HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -sS 127.0.0.1:9200 || exit 1

CMD ["./aws-es-proxy", "-h"]
