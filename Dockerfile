
FROM codercom/code-server:latest

RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install -y vim ufw curl git libffi-dev libssl-dev python3-dev python3 python3-pip apt-transport-https ca-certificates curl gnupg2 software-properties-common build-essential libcurl4-openssl-dev libxkbfile-dev

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN sudo apt update
RUN sudo apt -y install docker-ce

RUN sudo curl -L https://github.com/docker/compose/releases/download/v2.6.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN sudo chmod +x /usr/local/bin/docker-compose


