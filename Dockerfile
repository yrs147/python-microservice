FROM python:3.9
ENV PYTHONUNBUFFERD 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app

CMD python manager.py server 0.0.0.0:8000