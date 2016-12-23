FROM nginx
MAINTAINER lingyb@jpush.cn

RUN apt-get install curl
RUN curl -L http://npmjs.org/install.sh | sudo sh
RUN npm install

COPY ./dist /usr/share/nginx/html
