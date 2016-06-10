FROM debian:jessie

RUN apt-get install -qq racoon \
		ipsec-tools

ADD entrypoint.sh /entrypoint.sh
 
ENTRYPOINT ["/entrypoint.sh"]