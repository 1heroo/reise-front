FROM node:18.16.0-alpine AS development

ENV NODE_ENV development

WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN yarn install
# Copy app files
COPY . .
# Expose port
EXPOSE 3000

CMD [ "yarn", "start" ]