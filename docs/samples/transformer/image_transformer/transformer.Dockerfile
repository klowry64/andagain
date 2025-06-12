FROM python:3.12.11-slim

COPY . .
RUN pip install --upgrade pip && pip install kfserving
RUN pip install -e .
ENTRYPOINT ["python", "-m", "image_transformer"]
