FROM nfnty/arch-mini

RUN pacman -Syu --noconfirm && \
	pacman -S --noconfirm opensmtpd && \
	rm -rf /var/cache/pacman/pkg

EXPOSE 25 527
ENTRYPOINT ["/usr/bin/smtpd", "-d"]
