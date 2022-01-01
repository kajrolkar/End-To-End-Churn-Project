FROM python:3.7.3-slim
COPY requirement.txt /
RUN pip3 install -r /requirement.txt
COPY . /app
WORKDIR /app
RUN chmod +x gunicorn.sh
ENTRYPOINT ["./gunicorn.sh"]