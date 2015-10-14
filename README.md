A docker container for running [OpenSMTPD](https://www.opensmtpd.org/).

# Usage

```sh
docker run -d -v /var/mail:/var/mail -v /path/to/custom/smtpd-config:/etc/smtpd -p 25:25 -p 587:587 qjcg/opensmtpd
```
