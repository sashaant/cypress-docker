FROM cypress/base:14.16.0
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN $(npm bin)/cypress verify
CMD ["npm", "run", "cy:run"]