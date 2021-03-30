FROM lzzy12/mega-sdk-python:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get -qq update && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/* && \
    apt-add-repository non-free && \
    apt-get -qq update && \
    apt-get -qq install -y p7zip-full p7zip-rar aria2 wget curl pv jq ffmpeg locales python3-lxml && \
    apt-get purge -y software-properties-common

RUN wget https://raw.githubusercontent.com/AbirHasan2005/Mirror-Magneto/main/authorized_chats.txt
COPY token.pickle .
COPY credentials.json .
COPY requirements.txt .
COPY extract /usr/local/bi