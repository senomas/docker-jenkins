FROM jenkins
USER root
RUN apt-get update && apt-get install -y ruby make maven
USER jenkins
