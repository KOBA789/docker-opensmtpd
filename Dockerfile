FROM alpine:edge

RUN echo '@testing http://dl-4.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
	apk update && \
	apk add opensmtpd@testing

VOLUME /etc/smtpd /var/spool/mail
EXPOSE 25 587
ENTRYPOINT ["/usr/sbin/smtpd", "-d"]
