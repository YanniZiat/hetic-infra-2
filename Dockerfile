FROM node:22.11.0-alpine
WORKDIR /app
COPY package*.json ./
COPY app/ ./
RUN npm install
RUN adduser -D myuser
USER myuser
EXPOSE 3000
CMD npm start

# contact: y_ziat@hetic.eu 