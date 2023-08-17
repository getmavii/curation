FROM ruby:3.2 as builder

WORKDIR /app

# Copy source code and build
COPY . .
RUN ruby build.rb

# Serve from nginx
FROM nginx:1.21-alpine as server

COPY --from=builder /app/goggles /usr/share/nginx/html

# Add goggle extension to text/plain mime type
RUN sed -i 's|text/plain|text/plain goggle|g' /etc/nginx/mime.types

EXPOSE 80
