FROM golang

ADD . /go/src/github.com/dinesh-hobsons/aws-s3-proxy

RUN go get -u github.com/aws/aws-sdk-go
RUN go install github.com/dinesh-hobsons/aws-s3-proxy

ENTRYPOINT /go/bin/aws-s3-proxy

EXPOSE 8080

