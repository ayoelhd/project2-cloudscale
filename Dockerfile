FROM nginx:alpine

# Copy web app
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# nginx starts automatically with this image
CMD ["nginx", "-g", "daemon off;"]
