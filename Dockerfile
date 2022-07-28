FROM node:14.20.0
WORKDIR /test-jenkins
COPY package.json ./
RUN npm install -g yarn -registry=https://registry.npm.taobao.org
RUN yarn install --pure-lockfile
RUN yarn run build
COPY dist /var/www/test-jenkins/
