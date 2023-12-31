# Template based on Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM debian:testing

# Install.
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

# Set environment variables.
ENV HOME /root
ENV LANG en_US.utf8

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
