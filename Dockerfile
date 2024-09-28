FROM ubuntu:latest

RUN apt-get update &&  apt-get upgrade -y && apt-get install git openssh-server sshpass sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]