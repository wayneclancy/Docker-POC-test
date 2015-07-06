FROM ubuntu:14.04
MAINTAINER wayne.clancy@bgch.co.uk 

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive


# Update System
RUN apt-get update
RUN apt-get -y upgrade

# Basic Requirements
RUN sudo apt-get -y install python-setuptools python-dev build-essential  wget git

# Supervisor Config
RUN /usr/bin/easy_install supervisor
RUN /usr/bin/easy_install supervisor-stdout
ADD ./testapp-hello-everyone.conf /etc/supervisord.conf

# Install bottle
RUN /usr/bin/easy_install bottle

# Add Python App
RUN mkdir -p /opt/bgch-app
ADD ./app-hello-everyone.py /opt/bgch-app/app-hello-everyone.py

# Create start.sh in / 
ADD ./start.sh /start.sh
RUN chmod 700 /start.sh

# Expose Ports
EXPOSE 5000 

CMD ["/bin/bash", "/start.sh"]
