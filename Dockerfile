FROM node:14 as build

WORKDIR /app
COPY . .

RUN npm install
RUN npm run build --prod

FROM nginx:latest

COPY --from=build /app/dist/angular-hello-world /usr/share/nginx/html

EXPOSE 80

