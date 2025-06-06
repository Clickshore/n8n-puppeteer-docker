FROM n8nio/n8n:latest

USER root

# Use apk package manager (Alpine Linux) to install required dependencies for Puppeteer
RUN apk add --no-cache \
    wget \
    ca-certificates \
    nss \
    alsa-lib \
    atk \
    atk-bridge2.0 \
    cups-libs \
    dbus-libs \
    drm \
    libx11 \
    libxcomposite \
    libxdamage \
    libxrandr \
    libappindicator \
    mesa-gl \
    gtk+3.0 \
    nspr \
    fonts-noto \
    ttf-freefont

RUN npm install puppeteer

USER node
