FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

USER root
ADD https://get.docker.com/builds/Linux/x86_64/docker-1.9.1 /usr/local/bin/docker
RUN chmod +x /usr/local/bin/docker
ADD https://github.com/docker/compose/releases/download/1.5.2/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

