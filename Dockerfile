FROM python:3.8
COPY . /wine-app
WORKDIR /wine-app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD python app.py