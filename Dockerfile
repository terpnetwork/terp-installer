# Use an official NGINX image as the base image
FROM nginx:latest

# Set the working directory inside the container for HTML content
WORKDIR /usr/share/nginx/html

# Copy your static website files (index.html, CNAME, etc.) into the NGINX document root
COPY index.html /usr/share/nginx/html/index.html
COPY CNAME /usr/share/nginx/html/CNAME
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the Python installation script and the shell script to be served via HTTP
COPY terp-installer.py /usr/share/nginx/html/terp-installer.py
COPY terp-installer.sh /usr/share/nginx/html/terp-installer.sh

# Expose the ports
EXPOSE 80

# Use NGINX to serve the files and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
