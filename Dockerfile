FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10-slim

WORKDIR /

ENV MAX_WORKERS=5

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

RUN apt-get update && apt-get install -y ffmpeg

COPY ./app /app

ARG OPENAI_API_KEY='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'
