FROM nginx
COPY ./usr/share/nginx/html
RUN echo 'Docker container creating'
