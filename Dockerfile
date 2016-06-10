FROM debian:jessie

RUN apt-get update && \
	apt-get -y install racoon \
		ipsec-tools \
 && rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
 
ENTRYPOINT ["/entrypoint.sh"]