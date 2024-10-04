#基础镜像使用 mysql:latest
FROM mysql:8.0

#作者
LABEL maintainer="875482941@qq.com"

#定义工作目录
ENV WORK_PATH /usr/local/work

#定义会被容器自动执行的目录
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d

#定义sql文件名
ENV FILE_0 init_database.sql 
ENV FILE_1 init_article.sql
ENV FILE_2 init_tag.sql
ENV FILE_3 init_user.sql
ENV FILE_4 grant.sql

#定义shell文件名
ENV INSTALL_DB_SHELL ./shell/install_db.sh

#创建文件夹
RUN mkdir -p $WORK_PATH

#把数据库初始化数据的文件复制到工作目录下
COPY ./sql/$FILE_0 $WORK_PATH/
COPY ./sql/$FILE_1 $WORK_PATH/
COPY ./sql/$FILE_2 $WORK_PATH/
COPY ./sql/$FILE_3 $WORK_PATH/
COPY ./sql/$FILE_4 $WORK_PATH/

#把要执行的shell文件放到/docker-entrypoint-initdb.d/目录下，容器会自动执行这个shell
COPY ./$INSTALL_DB_SHELL $AUTO_RUN_DIR/
# COPY ./my.cnf /etc/mysql
#给执行文件增加可执行权限
RUN chmod a+x $AUTO_RUN_DIR/install_db.sh

EXPOSE 3306