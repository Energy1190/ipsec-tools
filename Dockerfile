FROM debian:jessie

RUN apt-get update && \
	apt-get -y -qq install racoon \
		ipsec-tools \
 && rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
 
ENTRYPOINT ["/entrypoint.sh"]