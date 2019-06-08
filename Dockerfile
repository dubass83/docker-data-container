FROM alpine:3.7
LABEL maintainer="MaksSych@gmail.com"

# Create data directory
RUN mkdir /data
# Copy data from current dir
COPY ./ /data
# Create /data volume
VOLUME /data
# Make infinity loop
CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
