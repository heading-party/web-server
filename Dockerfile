#
# Heading Party
#  Dockerfile for Django web server.
#

# Base image.
FROM python:3.4

# Load code.
RUN cd /root && \
	git clone https://www.github.com/heading-party/web-server.git

# Set working dir.
WORKDIR /root/web-server

# Update code and Run server.
CMD	git pull origin master && \
	pip  install -r requirements.txt && \
	python code/manage.py migrate && \
	python code/manage.py runserver 0.0.0.0:3000

# Expose port
EXPOSE 3000

