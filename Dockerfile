FROM apache/airflow:slim-latest-python3.9

USER root

COPY requirement.txt requirement.txt

RUN apt-get update && apt-get -y upgrade && apt-get -y install python3.11

USER airflow

RUN pip install -r requirement.txt