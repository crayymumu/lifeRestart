FROM node:12.14.1-alpine
WORKDIR /home/app
COPY . .
RUN npm config set registry https://registry.npm.taobao.org && npm install && npm run build
EXPOSE 9876
CMD npm run dev
