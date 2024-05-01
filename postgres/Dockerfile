FROM postgres
LABEL me.zzp.containers.postgres.authors="Zhang, Zepeng <redraiment@gmail.com>"
LABEL me.zzp.containers.postgres.version="YEAR.MONTH.DAY"
LABEL me.zzp.containers.postgres.description="PostgreSQL with pg_jieba & plpython3"

# 安装结巴分词插件
COPY jieba/lib/pg_jieba.so /usr/lib/postgresql/16/lib/
COPY jieba/extension/* /usr/share/postgresql/16/extension/
COPY jieba/tsearch_data/* /usr/share/postgresql/16/tsearch_data/

# 替换国内镜像，加快软件包安装速度
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources \
 # 将所有软件包升级至最新版本
 && apt-get update \
 && apt-get upgrade --no-install-recommends -y \
 # 安装常用插件
 && apt-get install --no-install-recommends -y \
      postgresql-contrib \
      postgresql-plpython3-16
