FROM python:3.10-buster
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN python manage.py migrate
ENTRYPOINT python manage.py runserver 0.0.0.0:8732
EXPOSE 8732:8732
