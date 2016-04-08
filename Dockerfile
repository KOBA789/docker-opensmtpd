FROM alpine:3.3

RUN apk add --update opensmtpd ca-certificates && \
	rm -rf /var/cache/apk/*

VOLUME ["/etc/smtpd", "/var/spool/mail"]
EXPOSE 25 587
ENTRYPOINT ["/usr/sbin/smtpd"]
CMD ["-d"]
