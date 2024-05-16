FROM apache/airflow:slim-latest-python3.9

ARG username=admin
ARG password=admin
ARG firstname=Talent
ARG lastname=Hub
ARG email=test@test.com

USER root

RUN apt-get update && apt-get -y upgrade && apt-get -y install python3.11

RUN airflow db init && airflow users create \
                        --username ${username} \
                        --password ${password} \
                        --firstname ${firstname} \
                        --lastname ${lastname} \
                        --role Admin \
                        --email ${email}

EXPOSE 8080

CMD ["airflow", "webserver", "--port", "8080"]