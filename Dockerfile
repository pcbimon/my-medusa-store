FROM node:18.20-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./
# Copy Yarn lock file
COPY yarn.lock ./
# Install app dependencies
RUN yarn install

# COPY all files
COPY . .

# Expose port
EXPOSE 9000

# Run the app
CMD ["yarn", "start"]