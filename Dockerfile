FROM python:3.8

RUN apt-get update

ARG PROJECT_DIR=/home/ubuntu/dabadigo/dabadigo/django_test

WORKDIR $PROJECT_DIR

COPY requirements.txt .

RUN pip3 install -r requirements.txt

ADD . $PROJECT_DIR

ENTRYPOINT [ "python3", "manage.py" ]
CMD [ "runserver", "0.0.0.0:8000" ]