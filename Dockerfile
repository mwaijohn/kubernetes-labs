# nginx state for serving content
FROM nginx:alpine
# Set working directory to nginx asset directory
WORKDIR /usr/share/nginx/html
# Remove default nginx static assets
RUN rm -rf ./*
# Copy static assets from builder stage
COPY . .

# build environment
# FROM nginx
#COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]


# https://mherman.org/blog/dockerizing-a-react-app/

# docker run -d -p 8000:80 mwaijohng/static:1.
# docker build -t mwaijohng/static:1.0 .