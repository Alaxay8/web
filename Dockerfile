FROM python:3.12-alpine

WORKDIR /app

# Устанавливаем Flask
RUN pip install --no-cache-dir flask

COPY app.py .
COPY templates ./templates
COPY static ./static

CMD ["python3", "-u", "app.py"]
HEALTHCHECK CMD curl -f http://localhost:8080/health || exit 1
