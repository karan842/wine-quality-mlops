# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]