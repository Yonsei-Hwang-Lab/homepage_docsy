FROM floryn90/hugo:0.154.1-ext-alpine AS builder
WORKDIR /src
COPY . .
RUN hugo --minify
FROM nginx:alpine

RUN mkdir -p /var/log/nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /src/public /usr/share/nginx/html

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]