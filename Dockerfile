FROM alpine:latest

RUN apk update && apk add --no-cache git

WORKDIR /workspace

COPY ./endpoint.sh /scripts/endpoint.sh
RUN chmod +x /scripts/endpoint.sh

CMD ["/bin/sh", "/scripts/endpoint.sh"]
