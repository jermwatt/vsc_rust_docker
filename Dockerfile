FROM codercom/code-server:latest

USER root

RUN apt update
RUN apt upgrade -y
RUN apt-get update
RUN apt install -y build-essential
RUN apt install -y curl
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y




