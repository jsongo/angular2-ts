FROM node
MAINTAINER lingyb@jpush.cn

RUN apt-get update && apt-get install -y nginx

COPY ./package.json /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

RUN npm install

ONBUILD COPY ./dist /usr/share/nginx/html

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
