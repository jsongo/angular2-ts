FROM nginx
MAINTAINER lingyb@jpush.cn

RUN apt-get install -y curl
RUN curl -L http://npmjs.org/install.sh | sudo sh
RUN npm install

COPY ./dist /usr/share/nginx/html
