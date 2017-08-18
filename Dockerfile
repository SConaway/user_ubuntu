FROM ubuntu:17.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y sudo bash git curl wget nano 
RUN apt-get autoremove
RUN apt-get clean
RUN apt-get check

RUN useradd user
RUN echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user
RUN chmod 0440 /etc/sudoers.d/user

USER user

ENTRYPOINT ["/bin/bash"]