FROM ubuntu

COPY . /

RUN apt-get update && apt-get install -y python3 \
    python3-pip \
    && pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3","app.py","--host", "127.0.0.1", "--port", "5000"]