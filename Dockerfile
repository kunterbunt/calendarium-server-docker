FROM golang:latest
LABEL maintainer="Sebastian Lindner <sebastian@slowfoodyouthh.de>"
RUN mkdir -p /mnt/go/src/github.com/kunterbunt/calendarium-server
RUN mkdir -p /mnt/db
RUN mkdir -p /mnt/run
CMD ["/mnt/run/run.sh"]