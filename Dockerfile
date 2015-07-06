FROM ubuntu:14.04
MAINTAINER wayne.clancy@bgch.co.uk 

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive


# Update System
RUN apt-get update
RUN apt-get -y upgrade

# Basic Requirements
RUN sudo apt-get -y install nginx python-setuptools python-dev build-essential  wget git

# Supervisor Config
RUN /usr/bin/easy_install supervisor
RUN /usr/bin/easy_install supervisor-stdout
ADD ./testapp.conf /etc/supervisor/conf.d/testapp.conf

# Install bottle
RUN /usr/bin/easy_install bottle

# Add Python App
RUN mkdir -p /opt/bgch-app
ADD ./app.py /opt/bcgh-app/app.py

# Start Supervisord
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

# Expose Ports
EXPOSE 5000 

CMD ["/bin/bash", "/start.sh"]
