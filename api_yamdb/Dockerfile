FROM python:3.7-slim

RUN mkdir /app

WORKDIR /app

RUN python -m pip install --upgrade pip
COPY . .
RUN pip3 install -r requirements.txt --no-cache-dir

CMD ["sh", "start.sh"]
