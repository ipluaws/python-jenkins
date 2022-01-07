FROM tiangolo/uwsgi-nginx-flask:python3.7
RUN mkdir -p /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
COPY . /app
WORKDIR /app
EXPOSE 5000
CMD ["python", "app.py"]
