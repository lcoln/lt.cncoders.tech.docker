FROM nginx:alpine

COPY nginx.conf /etc/nginx/

# apk 国内源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
  && apk update \
  && apk upgrade \
  && apk add --no-cache openssl \
  && apk add --no-cache bash
    
# 启动 nginx
CMD nginx
# ENTRYPOINT /bin/bash -c "nginx -g 'daemon off;'"
# 暴露 80 端口和 443 端口给容器外部
EXPOSE 80 443