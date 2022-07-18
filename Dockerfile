FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /home/sergio/Dev/TestApp/app/static
COPY ./requirements.txt /home/sergio/Dev/TestApp/requirements.txt
RUN pip install -r /home/sergio/Dev/TestApp/requirements.txt
