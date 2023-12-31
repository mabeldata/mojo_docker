FROM ubuntu:22.04
USER root
RUN apt-get update && \
apt upgrade
RUN apt install curl -y && \
apt-get install gnupg -y
RUN apt-get install -y apt-transport-https && \
  keyring_location=/usr/share/keyrings/modular-installer-archive-keyring.gpg && \
  curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/gpg.0E4925737A3895AD.key' |  gpg --dearmor >> ${keyring_location} && \
  curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/config.deb.txt?distro=debian&codename=wheezy' > /etc/apt/sources.list.d/modular-installer.list && \
  apt-get update && \
  apt-get install -y modular
ARG MODULAR_AUTH_KEY
RUN modular auth ${MODULAR_AUTH_KEY} && \
modular install mojo
RUN echo 'export MODULAR_HOME="$HOME/.modular"' >> ~/.bashrc && \
echo 'export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"' >> ~/.bashrc
RUN pip install ipykernel
CMD ["/bin/bash"]