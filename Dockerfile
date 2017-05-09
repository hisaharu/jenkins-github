FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
USER root
ADD https://get.docker.com/builds/Linux/x86_64/docker-1.11.2.tgz /
RUN tar -xf /docker-1.11.2.tgz && cp docker/docker /usr/bin
ADD https://github.com/docker/compose/releases/download/1.8.1/docker-compose-Linux-x86_64 /usr/bin/docker-compose
RUN chmod a+rx /usr/bin/docker-compose
