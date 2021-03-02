# 这里我用的镜像是 node 的稳定版
FROM node:12.18.2-alpine

# 拷贝项目文件进行构建
WORKDIR /app/

# 拷贝项目文件
COPY test.js ./test.js

ENTRYPOINT node /app/test.js
# 暴露 7001 端口到宿主机
EXPOSE 3336