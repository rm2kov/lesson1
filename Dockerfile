FROM python:3.6.0-alpine
ENV PYTHONUNBUFFERED=1
WORKDIR /app

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
ENTRYPOINT ["python3"]
CMD ["app.py"]
