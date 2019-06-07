FROM busybox:latest
LABEL maintainer="MaksSych@gmail.com"

# Create data directory
RUN mkdir /data
# Copy data from current dir
COPY ./ /data
# Create /data volume
VOLUME /data
