FROM golang:1.11-stretch
MAINTAINER bruinxs <bruinxs@gmail.com>

RUN go get -v github.com/whyrusleeping/gx
RUN go get -v github.com/whyrusleeping/gx-go

FROM golang:1.11-stretch
MAINTAINER bruinxs <bruinxs@gmail.com>

ENV SRC_DIR /go/bin
COPY --from=0 $SRC_DIR/gx /bin/gx
COPY --from=0 $SRC_DIR/gx-go /bin/gx-go