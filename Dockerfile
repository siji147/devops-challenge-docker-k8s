FROM node:16.14.2-alpine

#Add non-root user dockeruser
RUN adduser dockeruser --disabled-password

#Create new app folder in home directory
RUN mkdir -p /home/app

#Copy code files to container's app folder
COPY server.js package-lock.json package.json /home/app/

#change the ownership of home directory and its child files/folders to dockeruser
RUN chown -R dockeruser: /home

#Set working directory to app folder
WORKDIR /home/app

#Set current user to dockeruser
USER dockeruser

#Install code dependencies
RUN npm install

#Run the code
CMD ["node", "server.js"]