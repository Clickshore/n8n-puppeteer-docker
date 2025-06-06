FROM n8nio/n8n:latest

USER root

# Use correct Alpine packages and fix package names
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
    ttf-freefont \
    # any other required packages here

RUN npm install puppeteer

USER node
