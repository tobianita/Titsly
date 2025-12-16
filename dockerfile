FROM python:3.12-slim

RUN apt-get update && apt-get install -y && apt-get install -y curl \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "app.py" ]