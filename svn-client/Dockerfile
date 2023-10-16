FROM alpine:latest

RUN apk add --no-cache subversion

WORKDIR /

COPY . /
RUN chmod +x /checkout.sh 

EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]