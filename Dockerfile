FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont \
    nodejs \
    npm \
    wget

RUN npm install puppeteer

USER node
