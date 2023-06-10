FROM docker.io/nginx:latest

COPY /app/dist/angular-hello-world /usr/share/nginx/html

EXPOSE 80

