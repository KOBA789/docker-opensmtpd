A docker image for running [OpenSMTPD](https://www.opensmtpd.org/).

For reference, see [Building an smtpd Mail Server](https://opensmtpd.org/faq/example1.html).

# Install

```
docker pull qjcg/opensmtpd
```

# Use

```sh
docker run -d \
    --restart always \
    --name opensmtpd \
    -p 25:25 \
    -p 587:587 \
    -v /srv/opensmtpd/smtpd:/etc/smtpd:ro \
    -v /srv/opensmtpd/mail:/var/spool/mail \
    qjcg/opensmtpd
```
