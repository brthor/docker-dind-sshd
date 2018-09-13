FROM docker:stable-dind

COPY dockerd-entrypoint.sh /usr/local/bin/

RUN apk add --no-cache openssh-server

RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && sed -i s/#PermitEmptyPasswords.*/PermitEmptyPasswords\ yes/ /etc/ssh/sshd_config \
  && passwd -d root