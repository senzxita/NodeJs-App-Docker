FROM node:15-buster

RUN mkdir -p /home/node/app/node_modules 

WORKDIR /home/node/app

COPY package*.json ./


RUN npm install

COPY . /home/node/app

EXPOSE 8080

#COPY nginx.conf /etc/nginx/conf.d/configfile.template

CMD ["node", "server.js"]
#CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
