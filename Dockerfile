FROM python:3
MAINTAINER Daniel Starzmann <daniel@starze.de>
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY client.py client.py

ENTRYPOINT ["python", "client.py"]
CMD ["--help"]
