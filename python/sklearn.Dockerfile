FROM python:3.8.18-slim

COPY . .
RUN pip install --upgrade pip && pip install -e ./kfserving
RUN pip install -e ./sklearnserver
ENTRYPOINT ["python", "-m", "sklearnserver"]
