FROM alpine:latest

RUN apk update && \
	apk add opensmtpd && \
	rm -rf /var/cache/apk/*

VOLUME /etc/smtpd /var/spool/mail
EXPOSE 25 587

ENTRYPOINT ["/usr/sbin/smtpd"]
CMD ["-d"]
