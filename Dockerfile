
ARG os_version=24.04
FROM ubuntu:${os_version}

ARG version=0.0.1
LABEL name="xy_base"
LABEL version="${version}"
LABEL description="xy_base"
ENV xy_base="${version}"
ARG username="xy_base"
ARG password="abc1236547890"
ARG groupname="xy_base"
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN apt update
RUN apt -y upgrade
RUN apt install -y ca-certificates
RUN sed -i "s@http://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list.d/ubuntu.sources
RUN sed -i "s@http://.*security.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list.d/ubuntu.sources
RUN apt update
RUN apt -y upgrade
RUN apt-get -yq install tzdata
RUN apt install -y sudo bash zsh curl wget systemctl python3 python3-pip vim git make llvm clang pkg-config zip
RUN groupadd ${groupname}
RUN useradd --create-home --no-log-init --shell /bin/bash -m ${username} -g ${groupname} -d /home/${username} && echo "${username}:${password}" | chpasswd
RUN usermod -a -G sudo ${username}

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

USER ${username}

SHELL ["/bin/zsh", "--login", "-c"]

WORKDIR /home/${username}

COPY --chown=xy_base:xy_base ./install/ohmyzsh_install.sh /opt/install_work/scripts/ohmyzsh_install.sh
RUN sh /opt/install_work/scripts/ohmyzsh_install.sh
CMD ["zsh"]
RUN source ~/.zshrc

COPY --chown=xy_base:xy_base ./install/nvm_install.sh /opt/install_work/scripts/nvm_install.sh
RUN bash /opt/install_work/scripts/nvm_install.sh
RUN source ~/.nvm/nvm.sh && nvm install --lts && nvm use --lts
RUN echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ${HOME}/.zshrc
RUN echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ${HOME}/.bashrc
RUN echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ${HOME}/.bash_profile
RUN echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ${HOME}/.profile

COPY --chown=xy_base:xy_base ./install/ohpm-repo-5.0.7.0.zip /opt/install_work/packages/ohpm-repo-5.0.7.0.zip
RUN mkdir -p ~/ohpm-repo
RUN unzip -d ~/ohpm-repo /opt/install_work/packages/ohpm-repo-5.0.7.0.zip

ENV PATH=/home/${username}/ohpm-repo/bin:$PATH

RUN python3 -c "from pathlib import Path;config_yaml = Path('/home/${username}/ohpm-repo/conf/config.yaml');config = config_yaml.read_text();new_config = config.replace('listen: localhost:8088','listen: 0.0.0.0:8088');config_yaml.write_text(new_config);"

RUN source ~/.nvm/nvm.sh && ohpm-repo install

ENV OHPM_REPO_DEPLOY_ROOT=/home/${username}/ohpm-repo

RUN source ~/.zshrc

EXPOSE 8088

ENTRYPOINT ["/bin/zsh", "-c", "source ~/.nvm/nvm.sh && ohpm-repo start"]

# ENTRYPOINT ["tail", "-f", "/dev/null"]
