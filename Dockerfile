FROM node:18

ENV NODE_ENV=development

ARG WORKINGDIR=/home/contact-manager/

WORKDIR $WORKINGDIR

COPY ./package*.json $WORKINGDIR

RUN npm install

COPY . $WORKINGDIR

EXPOSE 3000

CMD ["npm", "start"]