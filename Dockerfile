FROM debian:stretch-slim

RUN apt-get update && apt-get install -y wget gnupg gnupg2 gnupg1
RUN wget https://dl-ssl.google.com/linux/linux_signing_key.pub
RUN apt-key add linux_signing_key.pub
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y google-chrome-stable xvfb && rm -rf /var/cache/apt/*

ENTRYPOINT ["google-chrome", "--headless", "--disable-gpu"]

