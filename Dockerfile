FROM python:3.12-alpine

WORKDIR /app

RUN apk add --no-cache curl

RUN pip install --no-cache-dir flask

COPY app.py .
COPY templates ./templates
COPY static ./static

EXPOSE 8000

CMD ["python3", "-u", "app.py"]

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD curl -f http://localhost:8000/health || exit 1

