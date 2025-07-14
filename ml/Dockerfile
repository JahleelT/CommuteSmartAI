# TODO ml/Dockerfile (this is a production ready placeholder)

FROM python:3.11-slim

WORKDIR /app

# Avoid caching issues
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8002"]
