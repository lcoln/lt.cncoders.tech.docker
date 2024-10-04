# 这里我用的镜像是 node 的稳定版
FROM node:18.20.3

# 拷贝项目文件进行构建
WORKDIR /app/

# 拷贝项目文件
COPY node-next-framework ./node-next-framework
RUN cd node-next-framework \
  && npm install --registry=https://registry.npm.taobao.org \
  && npm install pm2 -g

# 启动服务
# ENTRYPOINT node /app/node-next-framework/projects/lt.cncoders.tech/app.js
# ENTRYPOINT pm2-runtime start /app/node-next-framework/projects/lt.cncoders.tech/pm2.json --json
ENTRYPOINT pm2-runtime /app/node-next-framework/projects/lt.cncoders.tech/ecosystem.config.js 

# 暴露 7001 端口到宿主机
EXPOSE 3335