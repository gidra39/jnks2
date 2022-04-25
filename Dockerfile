FROM python: 3.6.15-slim-buster

WORKDIR /home/jenkins/pytest
COPY app.py app.py
COPY logs/bruh.txt logs/bruh.txt
RUN pip install flask
RUN pip install redis
CMD ["python3","app.py","run", "--host =0.0.0.0"]
