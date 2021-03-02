#基础镜像使用 redis:latest
FROM redis:latest

#作者
LABEL maintainer="875482941@qq.com"
#设置密码
RUN echo "123456" >> /etc/redis.conf

# ENTRYPOINT [ "/usr/bin/redis-server","/etc/redis.conf"]
# ENTRYPOINT [ "/usr/local/bin/redis-server", "/etc/redis.conf"]
ENTRYPOINT [ "nohup", "/usr/local/bin/redis-server"]
EXPOSE 6379