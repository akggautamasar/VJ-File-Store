# Don't Remove Credit @airworksbeyond
# Subscribe YouTube Channel For Amazing Bot @airworksbeyond
# Ask Doubt on telegram @airworksbeyond

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /VJ-File-Store
WORKDIR /VJ-File-Store
COPY . /VJ-File-Store
CMD ["python", "bot.py"]
