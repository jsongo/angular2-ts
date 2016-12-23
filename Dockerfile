FROM nginx
MAINTAINER lingyb@jpush.cn

RUN apt-get update && apt-get install -y nodejs npm
RUN npm install

COPY ./dist /usr/share/nginx/html
