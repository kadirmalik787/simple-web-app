# Step 1: Use nginx image
FROM nginx:alpine

# Step 2: Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your HTML to nginx web folder
COPY . /usr/share/nginx/html

# Step 4: Expose port 80
EXPOSE 80
