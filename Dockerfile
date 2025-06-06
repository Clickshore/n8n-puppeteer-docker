FROM n8nio/n8n:latest

USER root

# Use Alpine package manager apk instead of apt-get
RUN apk add --no-cache \
    wget \
    ca-certificates \
    fonts-liberation \
    libappindicator \
    alsa-lib \
    atk \
    atk-bridge \
    cups-libs \
    dbus-libs \
    drm \
    mesa-gl \
    gtk3 \
    nspr \
    nss \
    libx11 \
    libxcomposite \
    libxdamage \
    libxrandr \
    xdg-utils

RUN npm install puppeteer

USER node
