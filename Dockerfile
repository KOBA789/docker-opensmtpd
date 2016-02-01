FROM alpine:latest

RUN apk update && \
	apk add opensmtpd

VOLUME /etc/smtpd /var/spool/mail
EXPOSE 25 587
ENTRYPOINT ["/usr/sbin/smtpd", "-d"]
