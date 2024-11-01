FROM python:3.12.6

WORKDIR /wd

ENV TZ=Europe/Samara
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . /wd

RUN python -m venv venv
RUN pip install -r requirements.txt
RUN python src/main.py