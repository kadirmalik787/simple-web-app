# Nginx ka use karenge static site host karne ke liye
FROM nginx:latest  
COPY . /usr/share/nginx/html

