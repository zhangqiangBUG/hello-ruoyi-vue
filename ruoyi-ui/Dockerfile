FROM node:14-alpine as builder
WORKDIR '/build/hello-ruoyi-vue'
COPY build ./build
COPY public ./public
COPY src ./src
COPY .editorconfig ./.editorconfig
COPY .env.production ./.env.production
COPY .eslintignore ./.eslintignore
COPY .eslintrc.js ./.eslintrc.js
COPY babel.config.js ./babel.config.js
COPY package.json ./package.json
COPY vue.config.js ./vue.config.js


RUN npm install --sass_binary_site=https://npm.taobao.org/mirrors/node-sass/ --registry=https://registry.npm.taobao.org
RUN npm run build:prod

RUN ls ./dist


FROM nginx:alpine
MAINTAINER zhangq<zhangq@flyrise.cn>

RUN mkdir -p /var/log/nginx
RUN mkdir -p /usr/share/nginx/html/ruoyi-vue

COPY --from=builder /build/hello-ruoyi-vue-ui/dist/ /usr/share/nginx/html/ruoyi-vue/
COPY default.conf /etc/nginx/conf.d/default.conf

COPY 30-rebuild-default-config.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/30-rebuild-default-config.sh

WORKDIR /usr/share/nginx/html/ruoyi-vue/
