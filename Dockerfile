#Use node as base image
FROM node:14-alpine

#Install Git
RUN apk update && apk add git

#Set the workdirectory
WORKDIR /usr/src/app

#Clone the git repo
RUN git clone https://github.com/TimothySealy/cac-simple-webapp.git .

#Install needed apps
RUN npm install

#Expose port 80
EXPOSE 80

#Start the app when the container starts
CMD ["node", "app.js"]
