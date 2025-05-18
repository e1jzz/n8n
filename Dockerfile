FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY . .

RUN npm install --legacy-peer-deps
RUN npm run build

EXPOSE 5678
CMD ["npm", "run", "start"]
