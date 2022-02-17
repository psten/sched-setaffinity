FROM debian:buster-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
	gcc \
	libc6-dev

COPY sched_setaffinity.c /root/

RUN \
	cd /root/ \
	&& gcc sched_setaffinity.c -o sched_setaffinity

ENTRYPOINT ["/root/sched_setaffinity"]
