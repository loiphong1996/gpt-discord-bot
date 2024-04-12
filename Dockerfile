FROM python:3

WORKDIR /opt/gpt-bot
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY src src
CMD python -m src.main
