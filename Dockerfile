FROM node:14-alpine

# Working directory
WORKDIR /usr/src/app

# Copy package files to the working directory
COPY package*.json ./

# Installing dependencies
RUN npm install


COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Running the application
CMD ["node", "script.js"]
