FROM alpine:latest

RUN apk add --no-cache subversion
RUN apk add --no-cache iproute2
RUN apk add --no-cache git-svn

WORKDIR /

COPY . /

#RUN chmod +x /init.sh
RUN chmod +x /checkout.sh

CMD ["tail", "-f", "/dev/null"]