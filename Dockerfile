from ubuntu:latest
RUN apt update
RUN apt -y upgrade
RUN apt -y install curl
RUN apt -y install software-properties-common
RUN apt -y install lsb
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update && apt-get install packer