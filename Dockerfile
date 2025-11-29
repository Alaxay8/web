FROM python:3.12-alpine

WORKDIR /app

# Устанавливаем Flask
RUN pip install --no-cache-dir flask

COPY app.py .

CMD ["python3", "-u", "app.py"]

