FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt update 

RUN apt-get update
RUN apt install -y build-essential
RUN apt update
RUN apt install -y curl vim git wget fontconfig 
RUN apt update
RUN apt install -y zsh
RUN apt update

RUN useradd --user-group --system --create-home --no-log-init ubuntu
USER ubuntu
WORKDIR /home/ubuntu

USER root
COPY .vimrc /root/.vimrc
RUN chmod 755 /root/.vimrc
COPY .vimrc.plug /root/.vimrc.plug
RUN chmod 755 /root/.vimrc.plug
COPY .p10k.zsh /root/.p10k.zsh
RUN chmod 755 /root/.p10k.zsh
COPY .bashrc /root/.bashrc
RUN chmod 755 /root/.bashrc


RUN curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
RUN sh install.sh
RUN rm /home/ubuntu/install.sh

COPY .zshrc /root/.zshrc
RUN chmod 755 /root/.zshrc

COPY *.ttf /root/.local/share/fonts


RUN mkdir -p /root/.vim/pack/plugins/start
COPY install_plugins.sh /home/ubuntu/install_plugins.sh
RUN chmod 755 /home/ubuntu/install_plugins.sh
RUN ["sh", "/home/ubuntu/install_plugins.sh"]
RUN rm /home/ubuntu/install_plugins.sh

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

RUN fc-cache -rv
USER ubuntu
