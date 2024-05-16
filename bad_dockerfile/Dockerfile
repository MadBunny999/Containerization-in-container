FROM apache/airflow:latest

USER root

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install python3.11

RUN airflow db init

RUN airflow users create \
    --username admin \
    --password admin \
    --firstname Talent \
    --lastname Hub \
    --role Admin \
    --email test@test.com

EXPOSE 8080

CMD ["airflow", "webserver", "--port", "8080"]