FROM ubuntu:17.04

RUN useradd user
RUN echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user
RUN chmod 0440 /etc/sudoers.d/user

USER user

RUN sudo mkdir /home/user
