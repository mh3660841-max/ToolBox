FROM python:3.14-slim

RUN apt-get update && apt-get install -y \
    imagemagick \
    ghostscript \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY app /app

RUN pip install --no-cache-dir pypdf

EXPOSE 8081

CMD ["python", "server.py"]
