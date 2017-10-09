FROM ubuntu:17.04

RUN apt-get update && echo Updated && apt-get upgrade -y && echo Upgraded && apt-get install sudo && echo Sudo Installed && apt-get autoremove && echo Autoremoved && apt-get clean && echo Cleaned && apt-get check && echo Checked

RUN useradd user
RUN echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user
RUN chmod 0440 /etc/sudoers.d/user

USER user

RUN mkdir /home/user
