FROM python:3.11-slim

WORKDIR /app

VOLUME /app/data

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY main.py .

EXPOSE 8001

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001"]