FROM nginx
MAINTAINER lingyb@jpush.cn

RUN npm install

COPY ./dist /usr/share/nginx/html