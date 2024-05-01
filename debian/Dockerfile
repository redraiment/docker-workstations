FROM debian
LABEL me.zzp.containers.debian.authors="Zhang, Zepeng <redraiment@gmail.com>"
LABEL me.zzp.containers.debian.version="YEAR.MONTH.DAY"
LABEL me.zzp.containers.debian.description="Debian Workstation for XPS"

# 替换国内镜像，加快软件包安装速度
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources \
 # 将所有软件包升级至最新版本
 && apt-get update \
 && apt-get upgrade --no-install-recommends -y \
 # 安装常用工具
 && apt-get install --no-install-recommends -y \
      sudo fish vim-nox ripgrep tree \
      ca-certificates gnupg binutils \
      curl wget \
 # 添加日常使用的用户
 && useradd -m -G sudo -s /usr/bin/fish redraiment \
 && sudo -u redraiment mkdir -p /home/redraiment/workspaces

# 配置sudo为无需输入密码
COPY sudoers /etc/
# 配置PyEnv环境
COPY pyenv.fish /home/redraiment/.config/fish/conf.d/
RUN chown -R redraiment:redraiment /home/redraiment/.config/fish

USER redraiment
WORKDIR /home/redraiment
CMD /usr/bin/fish
