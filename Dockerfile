#Get the Base image
FROM node:18

#create a working directory to keep all the files
WORKDIR /app

COPY package*.json ./

#complie the code
RUN npm install

COPY . .

#Expose the port 
EXPOSE 3000

#run the command 
CMD ["node", "app.js"]
