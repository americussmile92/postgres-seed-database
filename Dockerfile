FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONBUFFERED 1 

WORKDIR /usr/src/app/

RUN apt-get update

ENV TZ=Europe/Amsterdam
RUN ln -sf /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime

RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt

COPY . /usr/src/app/

COPY ./init.sh /usr/src/app/init.sh

ENV LISTEN_PORT=80
EXPOSE 80
ENTRYPOINT ["sh", "/usr/src/app/init.sh"]
