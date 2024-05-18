# Containerization-in-container


1) Зафиксировал тег (заменил latest на python-slim и тд)
2) Передаю все значения через аргументы, а не хардкодом 
3) Объединил операции в RUN по смыслу, чтобы сократить кол-во строк 


Сборка:

```
docker build ./good_dockerfile -t airflow
```

Запуск контейнера:

```
docker run -v ./dags:/opt/airflow/dags -p 8080:8080 --name airflow airflow
```