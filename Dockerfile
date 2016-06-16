FROM debian:jessie

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	apt-get install -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" racoon \
		ipsec-tools \
 && rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
 
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/tail", "-f", "/dev/null"]
