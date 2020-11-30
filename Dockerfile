FROM ubuntu

RUN apt update && \
  apt upgrade -y && \
  apt install curl fish git -y && \
  curl -OL https://nodejs.org/dist/v15.3.0/node-v15.3.0-linux-x64.tar.xz && \
  mkdir /usr/local/dist && \
  tar Jxf node-v15.3.0-linux-x64.tar.xz -C /usr/local/dist && \
  rm node-v15.3.0-linux-x64.tar.xz && \
  ln -s /usr/local/dist/node-v15.3.0-linux-x64/bin/node /usr/local/bin/node && \
  ln -s /usr/local/dist/node-v15.3.0-linux-x64/bin/npm /usr/local/bin/npm && \
  ln -s /usr/local/dist/node-v15.3.0-linux-x64/bin/npx /usr/local/bin/npx && \
  useradd -m developer && \
  gpasswd -a developer sudo

USER developer
